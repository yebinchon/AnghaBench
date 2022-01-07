; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_set_fpcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_set_fpcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ia32_mcontext = type { i64, i64, i32 }
%struct.savefpu = type { i32 }

@_MC_FPFMT_NODEV = common dso_local global i64 0, align 8
@_MC_FPFMT_XMM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@_MC_FPOWNED_NONE = common dso_local global i64 0, align 8
@_MC_FPOWNED_FPU = common dso_local global i64 0, align 8
@_MC_FPOWNED_PCB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.ia32_mcontext*, i8*, i64)* @ia32_set_fpcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia32_set_fpcontext(%struct.thread* %0, %struct.ia32_mcontext* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.ia32_mcontext*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.ia32_mcontext* %1, %struct.ia32_mcontext** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %7, align 8
  %12 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @_MC_FPFMT_NODEV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

17:                                               ; preds = %4
  %18 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %7, align 8
  %19 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @_MC_FPFMT_XMM, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %17
  %26 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %7, align 8
  %27 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @_MC_FPOWNED_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = call i32 @fpstate_drop(%struct.thread* %32)
  store i32 0, i32* %10, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %7, align 8
  %36 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @_MC_FPOWNED_FPU, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %7, align 8
  %42 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @_MC_FPOWNED_PCB, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40, %34
  %47 = load %struct.thread*, %struct.thread** %6, align 8
  %48 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %7, align 8
  %49 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %48, i32 0, i32 2
  %50 = bitcast i32* %49 to %struct.savefpu*
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @fpusetregs(%struct.thread* %47, %struct.savefpu* %50, i8* %51, i64 %52)
  store i32 %53, i32* %10, align 4
  br label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %61

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %54, %23, %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @fpstate_drop(%struct.thread*) #1

declare dso_local i32 @fpusetregs(%struct.thread*, %struct.savefpu*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
