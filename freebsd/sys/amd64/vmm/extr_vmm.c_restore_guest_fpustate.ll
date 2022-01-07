; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_restore_guest_fpustate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_restore_guest_fpustate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu = type { i32, i32 }

@curthread = common dso_local global i32 0, align 4
@CR4_XSAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu*)* @restore_guest_fpustate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_guest_fpustate(%struct.vcpu* %0) #0 {
  %2 = alloca %struct.vcpu*, align 8
  store %struct.vcpu* %0, %struct.vcpu** %2, align 8
  %3 = load i32, i32* @curthread, align 4
  %4 = call i32 @fpuexit(i32 %3)
  %5 = call i32 (...) @fpu_stop_emulating()
  %6 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fpurestore(i32 %8)
  %10 = call i32 (...) @rcr4()
  %11 = load i32, i32* @CR4_XSAVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @load_xcr(i32 0, i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = call i32 (...) @fpu_start_emulating()
  ret void
}

declare dso_local i32 @fpuexit(i32) #1

declare dso_local i32 @fpu_stop_emulating(...) #1

declare dso_local i32 @fpurestore(i32) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @load_xcr(i32, i32) #1

declare dso_local i32 @fpu_start_emulating(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
