; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_open_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_open_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, %struct.aac_fib_context* }
%struct.aac_fib_context = type { i32, %struct.aac_fib_context*, %struct.aac_fib_context* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i64)* @aac_open_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_open_aif(%struct.aac_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aac_fib_context*, align 8
  %7 = alloca %struct.aac_fib_context*, align 8
  %8 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %10 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %11 = call i32 @fwprintf(%struct.aac_softc* %9, i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @M_AACBUF, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.aac_fib_context* @malloc(i32 24, i32 %12, i32 %15)
  store %struct.aac_fib_context* %16, %struct.aac_fib_context** %6, align 8
  %17 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %18 = icmp eq %struct.aac_fib_context* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %25, i32 0, i32 1
  %27 = load %struct.aac_fib_context*, %struct.aac_fib_context** %26, align 8
  %28 = icmp eq %struct.aac_fib_context* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %31 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %32 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %31, i32 0, i32 1
  store %struct.aac_fib_context* %30, %struct.aac_fib_context** %32, align 8
  br label %54

33:                                               ; preds = %21
  %34 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %34, i32 0, i32 1
  %36 = load %struct.aac_fib_context*, %struct.aac_fib_context** %35, align 8
  store %struct.aac_fib_context* %36, %struct.aac_fib_context** %7, align 8
  br label %37

37:                                               ; preds = %43, %33
  %38 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %39 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %38, i32 0, i32 1
  %40 = load %struct.aac_fib_context*, %struct.aac_fib_context** %39, align 8
  %41 = icmp ne %struct.aac_fib_context* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %45 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %44, i32 0, i32 1
  %46 = load %struct.aac_fib_context*, %struct.aac_fib_context** %45, align 8
  store %struct.aac_fib_context* %46, %struct.aac_fib_context** %7, align 8
  br label %37

47:                                               ; preds = %37
  %48 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %49 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %50 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %49, i32 0, i32 1
  store %struct.aac_fib_context* %48, %struct.aac_fib_context** %50, align 8
  %51 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %52 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %53 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %52, i32 0, i32 2
  store %struct.aac_fib_context* %51, %struct.aac_fib_context** %53, align 8
  br label %54

54:                                               ; preds = %47, %29
  %55 = bitcast %struct.aac_fib_context** %6 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %58 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %60 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %59, i32 0, i32 1
  %61 = load %struct.aac_fib_context*, %struct.aac_fib_context** %60, align 8
  store %struct.aac_fib_context* %61, %struct.aac_fib_context** %7, align 8
  br label %62

62:                                               ; preds = %86, %54
  %63 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %64 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %65 = icmp ne %struct.aac_fib_context* %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %68 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %71 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %76 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %80 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %79, i32 0, i32 1
  %81 = load %struct.aac_fib_context*, %struct.aac_fib_context** %80, align 8
  store %struct.aac_fib_context* %81, %struct.aac_fib_context** %7, align 8
  br label %86

82:                                               ; preds = %66
  %83 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %84 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %83, i32 0, i32 1
  %85 = load %struct.aac_fib_context*, %struct.aac_fib_context** %84, align 8
  store %struct.aac_fib_context* %85, %struct.aac_fib_context** %7, align 8
  br label %86

86:                                               ; preds = %82, %74
  br label %62

87:                                               ; preds = %62
  %88 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %89 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %92 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %91, i32 0, i32 0
  %93 = load i64, i64* %5, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @copyout(i32* %92, i8* %94, i32 4)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %100 = load %struct.aac_fib_context*, %struct.aac_fib_context** %7, align 8
  %101 = ptrtoint %struct.aac_fib_context* %100 to i64
  %102 = call i32 @aac_close_aif(%struct.aac_softc* %99, i64 %101)
  br label %103

103:                                              ; preds = %98, %87
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %19
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_fib_context* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @aac_close_aif(%struct.aac_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
