; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_dr_leave_guest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_dr_leave_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_regctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSR_DEBUGCTLMSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_regctx*)* @svm_dr_leave_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_dr_leave_guest(%struct.svm_regctx* %0) #0 {
  %2 = alloca %struct.svm_regctx*, align 8
  store %struct.svm_regctx* %0, %struct.svm_regctx** %2, align 8
  %3 = call i32 (...) @rdr0()
  %4 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %5 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %4, i32 0, i32 10
  store i32 %3, i32* %5, align 4
  %6 = call i32 (...) @rdr1()
  %7 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %8 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %7, i32 0, i32 9
  store i32 %6, i32* %8, align 4
  %9 = call i32 (...) @rdr2()
  %10 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %11 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 4
  %12 = call i32 (...) @rdr3()
  %13 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %14 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %16 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @load_dr0(i32 %17)
  %19 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %20 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @load_dr1(i32 %21)
  %23 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %24 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @load_dr2(i32 %25)
  %27 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %28 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @load_dr3(i32 %29)
  %31 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %32 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @load_dr6(i32 %33)
  %35 = load i32, i32* @MSR_DEBUGCTLMSR, align 4
  %36 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %37 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wrmsr(i32 %35, i32 %38)
  %40 = load %struct.svm_regctx*, %struct.svm_regctx** %2, align 8
  %41 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @load_dr7(i32 %42)
  ret void
}

declare dso_local i32 @rdr0(...) #1

declare dso_local i32 @rdr1(...) #1

declare dso_local i32 @rdr2(...) #1

declare dso_local i32 @rdr3(...) #1

declare dso_local i32 @load_dr0(i32) #1

declare dso_local i32 @load_dr1(i32) #1

declare dso_local i32 @load_dr2(i32) #1

declare dso_local i32 @load_dr3(i32) #1

declare dso_local i32 @load_dr6(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @load_dr7(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
