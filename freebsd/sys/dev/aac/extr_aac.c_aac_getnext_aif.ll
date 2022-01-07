; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_getnext_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_getnext_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, %struct.aac_fib_context* }
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
  %12 = load i64, i64* %5, align 8
  %13 = bitcast %struct.get_adapter_fib_ioctl* %6 to %struct.get_adapter_fib_ioctl32*
  %14 = call i32 @copyin(i64 %12, %struct.get_adapter_fib_ioctl32* %13, i32 24)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %93

17:                                               ; preds = %2
  %18 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %19 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %18, i32 0, i32 2
  %20 = load %struct.aac_fib_context*, %struct.aac_fib_context** %19, align 8
  store %struct.aac_fib_context* %20, %struct.aac_fib_context** %7, align 8
  br label %21

21:                                               ; preds = %33, %17
  %22 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %23 = icmp ne %struct.aac_fib_context* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %28 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %37

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %35 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %34, i32 0, i32 1
  %36 = load %struct.aac_fib_context*, %struct.aac_fib_context** %35, align 8
  store %struct.aac_fib_context* %36, %struct.aac_fib_context** %7, align 8
  br label %21

37:                                               ; preds = %31, %21
  %38 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %39 = icmp ne %struct.aac_fib_context* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EFAULT, align 4
  store i32 %41, i32* %3, align 4
  br label %95

42:                                               ; preds = %37
  %43 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %44 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %45 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @aac_return_aif(%struct.aac_softc* %43, %struct.aac_fib_context* %44, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %51
  %56 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %57 = load i8*, i8** @HBA_FLAGS_DBG_AIF_B, align 8
  %58 = call i32 @fwprintf(%struct.aac_softc* %56, i8* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @AAC_STATE_AIF_SLEEPER, align 4
  %60 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %84, %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %70 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PRIBIO, align 4
  %73 = load i32, i32* @PCATCH, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @tsleep(i32 %71, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %80 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %81 = getelementptr inbounds %struct.get_adapter_fib_ioctl, %struct.get_adapter_fib_ioctl* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @aac_return_aif(%struct.aac_softc* %79, %struct.aac_fib_context* %80, i64 %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %68
  br label %64

85:                                               ; preds = %64
  %86 = load i32, i32* @AAC_STATE_AIF_SLEEPER, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %89 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %51, %42
  br label %93

93:                                               ; preds = %92, %2
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %40
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @copyin(i64, %struct.get_adapter_fib_ioctl32*, i32) #1

declare dso_local i32 @aac_return_aif(%struct.aac_softc*, %struct.aac_fib_context*, i64) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
