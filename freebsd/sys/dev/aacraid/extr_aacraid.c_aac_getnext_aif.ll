; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_getnext_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_getnext_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, %struct.aac_fib_context* }
%struct.aac_fib_context = type { i64, %struct.aac_fib_context* }
%struct.get_adapter_fib_ioctl = type { i64, i64, i64 }
%struct.get_adapter_fib_ioctl32 = type { i64, i64, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EFAULT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_AIF_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"aac_getnext_aif(): waiting for AIF\00", align 1
@AAC_STATE_AIF_SLEEPER = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"aacaif\00", align 1
@SV_ILP32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i64)* @aac_getnext_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_getnext_aif(%struct.aac_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.get_adapter_fib_ioctl, align 8
  %7 = alloca %struct.aac_fib_context*, align 8
  %8 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %10 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %11 = call i32 @fwprintf(%struct.aac_softc* %9, i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load i64, i64* %5, align 8
  %16 = bitcast %struct.get_adapter_fib_ioctl* %6 to %struct.get_adapter_fib_ioctl32*
  %17 = call i32 @copyin(i64 %15, %struct.get_adapter_fib_ioctl32* %16, i32 24)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %2
  %21 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %21, i32 0, i32 3
  %23 = load %struct.aac_fib_context*, %struct.aac_fib_context** %22, align 8
  store %struct.aac_fib_context* %23, %struct.aac_fib_context** %7, align 8
  br label %24

24:                                               ; preds = %36, %20
  %25 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %26 = icmp ne %struct.aac_fib_context* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %31 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %40

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %38 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %37, i32 0, i32 1
  %39 = load %struct.aac_fib_context*, %struct.aac_fib_context** %38, align 8
  store %struct.aac_fib_context* %39, %struct.aac_fib_context** %7, align 8
  br label %24

40:                                               ; preds = %34, %24
  %41 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %42 = icmp ne %struct.aac_fib_context* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %45 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load i32, i32* @EFAULT, align 4
  store i32 %47, i32* %3, align 4
  br label %110

48:                                               ; preds = %40
  %49 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %50 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %51 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @aac_return_aif(%struct.aac_softc* %49, %struct.aac_fib_context* %50, i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %63 = load i8*, i8** @HBA_FLAGS_DBG_AIF_B, align 8
  %64 = call i32 @fwprintf(%struct.aac_softc* %62, i8* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @AAC_STATE_AIF_SLEEPER, align 4
  %66 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %67 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %96, %61
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %76 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %75, i32 0, i32 0
  %77 = call i32 @mtx_unlock(i32* %76)
  %78 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %79 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PRIBIO, align 4
  %82 = load i32, i32* @PCATCH, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @tsleep(i32 %80, i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %86 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %85, i32 0, i32 0
  %87 = call i32 @mtx_lock(i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %74
  %91 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %92 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %93 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @aac_return_aif(%struct.aac_softc* %91, %struct.aac_fib_context* %92, i64 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %90, %74
  br label %70

97:                                               ; preds = %70
  %98 = load i32, i32* @AAC_STATE_AIF_SLEEPER, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %101 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %57, %48
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %107 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %106, i32 0, i32 0
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %43
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @copyin(i64, %struct.get_adapter_fib_ioctl32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aac_return_aif(%struct.aac_softc*, %struct.aac_fib_context*, i64) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
