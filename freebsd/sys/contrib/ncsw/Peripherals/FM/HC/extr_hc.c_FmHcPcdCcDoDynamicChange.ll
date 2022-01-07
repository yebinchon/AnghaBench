; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdCcDoDynamicChange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdCcDoDynamicChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_CC = common dso_local global i32 0, align 4
@SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcPcdCcDoDynamicChange(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* @E_OK, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @E_INVALID_HANDLE, align 4
  %17 = call i32 @SANITY_CHECK_RETURN_ERROR(i32* %15, i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call %struct.TYPE_5__* @GetBuf(i32* %18, i8** %11)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @MINOR, align 4
  %24 = load i64, i64* @E_NO_MEMORY, align 8
  %25 = call i32 @RETURN_ERROR(i32 %23, i64 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 32)
  %29 = load i32, i32* @HC_HCOR_GBL, align 4
  %30 = load i32, i32* @HC_HCOR_OPCODE_CC, align 4
  %31 = or i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, -1073741824
  store i32 %43, i32* %41, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC, align 4
  %51 = call i32 @BUILD_FD(i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @EnQFrm(i32* %52, i32* %9, i8* %53)
  store i64 %54, i64* %10, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @PutBuf(i32* %55, %struct.TYPE_5__* %56, i8* %57)
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @E_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %26
  %63 = load i32, i32* @MAJOR, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i8*, i8** @NO_MSG, align 8
  %66 = call i32 @RETURN_ERROR(i32 %63, i64 %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %26
  %68 = load i64, i64* @E_OK, align 8
  ret i64 %68
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
