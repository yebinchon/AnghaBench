; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_close_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_close_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, %struct.aac_fib_context* }
%struct.aac_fib_context = type { i64, %struct.TYPE_2__*, %struct.aac_fib_context* }
%struct.TYPE_2__ = type { %struct.aac_fib_context* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32)* @aac_close_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_close_aif(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aac_fib_context*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* %6, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 1
  %14 = load %struct.aac_fib_context*, %struct.aac_fib_context** %13, align 8
  store %struct.aac_fib_context* %14, %struct.aac_fib_context** %5, align 8
  br label %15

15:                                               ; preds = %57, %2
  %16 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %17 = icmp ne %struct.aac_fib_context* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %20 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = bitcast i32* %4 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %27 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 1
  %29 = load %struct.aac_fib_context*, %struct.aac_fib_context** %28, align 8
  %30 = icmp eq %struct.aac_fib_context* %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %33 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %32, i32 0, i32 1
  store %struct.aac_fib_context* null, %struct.aac_fib_context** %33, align 8
  br label %55

34:                                               ; preds = %25
  %35 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %36 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %35, i32 0, i32 2
  %37 = load %struct.aac_fib_context*, %struct.aac_fib_context** %36, align 8
  %38 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %39 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.aac_fib_context* %37, %struct.aac_fib_context** %41, align 8
  %42 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %43 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %42, i32 0, i32 2
  %44 = load %struct.aac_fib_context*, %struct.aac_fib_context** %43, align 8
  %45 = icmp ne %struct.aac_fib_context* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %48 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %51 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %50, i32 0, i32 2
  %52 = load %struct.aac_fib_context*, %struct.aac_fib_context** %51, align 8
  %53 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %52, i32 0, i32 1
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %53, align 8
  br label %54

54:                                               ; preds = %46, %34
  br label %55

55:                                               ; preds = %54, %31
  br label %61

56:                                               ; preds = %18
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %59 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %58, i32 0, i32 2
  %60 = load %struct.aac_fib_context*, %struct.aac_fib_context** %59, align 8
  store %struct.aac_fib_context* %60, %struct.aac_fib_context** %5, align 8
  br label %15

61:                                               ; preds = %55, %15
  %62 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %63 = icmp ne %struct.aac_fib_context* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.aac_fib_context*, %struct.aac_fib_context** %5, align 8
  %66 = load i32, i32* @M_AACRAIDBUF, align 4
  %67 = call i32 @free(%struct.aac_fib_context* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %70 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %69, i32 0, i32 0
  %71 = call i32 @mtx_unlock(i32* %70)
  ret i32 0
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @free(%struct.aac_fib_context*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
