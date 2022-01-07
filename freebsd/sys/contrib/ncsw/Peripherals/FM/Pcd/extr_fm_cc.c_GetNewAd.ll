; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_GetNewAd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_GetNewAd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CC Shadow not allocated\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"MURAM allocation for CC node action descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @GetNewAd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetNewAd(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_5__*
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33, %25
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @MAJOR, align 4
  %46 = load i32, i32* @E_NO_MEMORY, align 4
  %47 = call i32 @REPORT_ERROR(i32 %45, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %68

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %7, align 8
  br label %66

52:                                               ; preds = %33, %30
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = call i32 @FmPcdGetMuramHandle(%struct.TYPE_7__* %53)
  %55 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %56 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %57 = call i64 @FM_MURAM_AllocMem(i32 %54, i32 %55, i32 %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @MAJOR, align 4
  %63 = load i32, i32* @E_NO_MEMORY, align 4
  %64 = call i32 @REPORT_ERROR(i32 %62, i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %68

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32*, i32** %7, align 8
  store i32* %67, i32** %3, align 8
  br label %68

68:                                               ; preds = %66, %61, %44
  %69 = load i32*, i32** %3, align 8
  ret i32* %69
}

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @FmPcdGetMuramHandle(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
