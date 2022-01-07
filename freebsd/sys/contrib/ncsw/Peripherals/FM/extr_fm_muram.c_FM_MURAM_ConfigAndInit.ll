; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_muram.c_FM_MURAM_ConfigAndInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_muram.c_FM_MURAM_ConfigAndInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"baseAddress 0 is not supported\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"baseAddress not 4 bytes aligned!\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"FM MURAM driver structure\00", align 1
@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"FM-MURAM partition!!!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @FM_MURAM_ConfigAndInit(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MAJOR, align 4
  %12 = load i32, i32* @E_INVALID_VALUE, align 4
  %13 = call i32 @REPORT_ERROR(i32 %11, i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %59

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = urem i64 %15, 4
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @MAJOR, align 4
  %20 = load i32, i32* @E_INVALID_VALUE, align 4
  %21 = call i32 @REPORT_ERROR(i32 %19, i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %59

22:                                               ; preds = %14
  %23 = call i64 @XX_Malloc(i32 24)
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @MAJOR, align 4
  %29 = load i32, i32* @E_NO_MEMORY, align 4
  %30 = call i32 @REPORT_ERROR(i32 %28, i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %59

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = call i32 @memset(%struct.TYPE_7__* %32, i32 0, i32 24)
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @MM_Init(%struct.TYPE_7__** %6, i64 %34, i32 %35)
  %37 = load i64, i64* @E_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = call i32 @XX_Free(%struct.TYPE_7__* %43)
  %45 = load i32, i32* @MAJOR, align 4
  %46 = load i32, i32* @E_INVALID_HANDLE, align 4
  %47 = call i32 @REPORT_ERROR(i32 %45, i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %59

48:                                               ; preds = %39
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %3, align 8
  br label %59

59:                                               ; preds = %48, %42, %27, %18, %10
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %60
}

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @MM_Init(%struct.TYPE_7__**, i64, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
