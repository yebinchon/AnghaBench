; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_dr_enter_guest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_dr_enter_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSR_DEBUGCTLMSR = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxctx*)* @vmx_dr_enter_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_dr_enter_guest(%struct.vmxctx* %0) #0 {
  %2 = alloca %struct.vmxctx*, align 8
  %3 = alloca i32, align 4
  store %struct.vmxctx* %0, %struct.vmxctx** %2, align 8
  %4 = call i32 (...) @rdr7()
  %5 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %6 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %5, i32 0, i32 12
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @MSR_DEBUGCTLMSR, align 4
  %8 = call i32 @rdmsr(i32 %7)
  %9 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %10 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 4
  %11 = call i32 @load_dr7(i32 0)
  %12 = load i32, i32* @MSR_DEBUGCTLMSR, align 4
  %13 = call i32 @wrmsr(i32 %12, i32 0)
  %14 = call i32 (...) @read_rflags()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PSL_T, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %19 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PSL_T, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @write_rflags(i32 %23)
  %25 = call i32 (...) @rdr0()
  %26 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %27 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @rdr1()
  %29 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %30 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = call i32 (...) @rdr2()
  %32 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %33 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = call i32 (...) @rdr3()
  %35 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %36 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = call i32 (...) @rdr6()
  %38 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %39 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %41 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @load_dr0(i32 %42)
  %44 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %45 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @load_dr1(i32 %46)
  %48 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %49 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @load_dr2(i32 %50)
  %52 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %53 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @load_dr3(i32 %54)
  %56 = load %struct.vmxctx*, %struct.vmxctx** %2, align 8
  %57 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @load_dr6(i32 %58)
  ret void
}

declare dso_local i32 @rdr7(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @load_dr7(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @read_rflags(...) #1

declare dso_local i32 @write_rflags(i32) #1

declare dso_local i32 @rdr0(...) #1

declare dso_local i32 @rdr1(...) #1

declare dso_local i32 @rdr2(...) #1

declare dso_local i32 @rdr3(...) #1

declare dso_local i32 @rdr6(...) #1

declare dso_local i32 @load_dr0(i32) #1

declare dso_local i32 @load_dr1(i32) #1

declare dso_local i32 @load_dr2(i32) #1

declare dso_local i32 @load_dr3(i32) #1

declare dso_local i32 @load_dr6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
