; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_dr_enter_guest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_dr_enter_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_regctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSR_DEBUGCTLMSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_regctx*)* @svm_dr_enter_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_dr_enter_guest(%struct.svm_regctx* %0) #0 {
  %2 = alloca %struct.svm_regctx*, align 8
  store %struct.svm_regctx* %0, %struct.svm_regctx** %2, align 8
  %3 = call i32 (...) @rdr7()
  %4 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %5 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %4, i32 0, i32 10
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @MSR_DEBUGCTLMSR, align 4
  %7 = call i32 @rdmsr(i32 %6)
  %8 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %9 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = call i32 @load_dr7(i32 0)
  %11 = load i32, i32* @MSR_DEBUGCTLMSR, align 4
  %12 = call i32 @wrmsr(i32 %11, i32 0)
  %13 = call i32 (...) @rdr0()
  %14 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %15 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = call i32 (...) @rdr1()
  %17 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %18 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @rdr2()
  %20 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %21 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = call i32 (...) @rdr3()
  %23 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %24 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @rdr6()
  %26 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %27 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %29 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @load_dr0(i32 %30)
  %32 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %33 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @load_dr1(i32 %34)
  %36 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %37 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @load_dr2(i32 %38)
  %40 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %41 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @load_dr3(i32 %42)
  ret void
}

declare dso_local i32 @rdr7(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @load_dr7(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @rdr0(...) #1

declare dso_local i32 @rdr1(...) #1

declare dso_local i32 @rdr2(...) #1

declare dso_local i32 @rdr3(...) #1

declare dso_local i32 @rdr6(...) #1

declare dso_local i32 @load_dr0(i32) #1

declare dso_local i32 @load_dr1(i32) #1

declare dso_local i32 @load_dr2(i32) #1

declare dso_local i32 @load_dr3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
