; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_return_aif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_return_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32* }
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
  %13 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %14 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %23 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EAGAIN, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %21, %3
  %29 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %30 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i64, i64* %7, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @copyout(i32* %34, i8* %36, i32 4)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %55

46:                                               ; preds = %28
  %47 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %48 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @AAC_AIFQ_LENGTH, align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.aac_fib_context*, %struct.aac_fib_context** %6, align 8
  %54 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %46, %40
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
