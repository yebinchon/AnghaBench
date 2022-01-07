; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_return_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_return_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32* }
%struct.aac_fib_context = type { i32, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"aac_return_aif: copyout returned %d\0A\00", align 1
@AAC_AIFQ_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, %struct.aac_fib_context*, i64)* @aac_return_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_return_aif(%struct.aac_softc* %0, %struct.aac_fib_context* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca %struct.aac_fib_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %5, align 8
  store %struct.aac_fib_context* %1, %struct.aac_fib_context** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %11 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %12 = call i32 @fwprintf(%struct.aac_softc* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %14 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %17 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %26 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 1
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load i32, i32* @EAGAIN, align 4
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %24, %3
  %35 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %36 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i64, i64* %7, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @copyout(i32* %40, i8* %42, i32 4)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %48 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %61

52:                                               ; preds = %34
  %53 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %54 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @AAC_AIFQ_LENGTH, align 4
  %58 = srem i32 %56, %57
  %59 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %60 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %46
  %62 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %63 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %62, i32 0, i32 1
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %29
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
