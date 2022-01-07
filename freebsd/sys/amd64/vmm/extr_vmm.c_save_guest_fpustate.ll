; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_save_guest_fpustate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_save_guest_fpustate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu = type { i32, i32 }

@CR0_TS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"fpu emulation not enabled in host!\00", align 1
@CR4_XSAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu*)* @save_guest_fpustate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_guest_fpustate(%struct.vcpu* %0) #0 {
  %2 = alloca %struct.vcpu*, align 8
  store %struct.vcpu* %0, %struct.vcpu** %2, align 8
  %3 = call i32 (...) @rcr0()
  %4 = load i32, i32* @CR0_TS, align 4
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i32 (...) @rcr4()
  %11 = load i32, i32* @CR4_XSAVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = call i32 @rxcr(i32 0)
  %16 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = call i32 (...) @vmm_get_host_xcr0()
  %19 = call i32 @load_xcr(i32 0, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = call i32 (...) @fpu_stop_emulating()
  %22 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %23 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fpusave(i32 %24)
  %26 = call i32 (...) @fpu_start_emulating()
  ret void
}

declare dso_local i32 @rcr0(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @rxcr(i32) #1

declare dso_local i32 @load_xcr(i32, i32) #1

declare dso_local i32 @vmm_get_host_xcr0(...) #1

declare dso_local i32 @fpu_stop_emulating(...) #1

declare dso_local i32 @fpusave(i32) #1

declare dso_local i32 @fpu_start_emulating(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
