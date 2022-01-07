; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_AllocMember.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_AllocMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Frame replicator member\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"member AD table\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @AllocMember to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocMember(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @ASSERT_COND(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_10__* @FmPcdGetMuramHandle(i32 %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call i32 @ASSERT_COND(%struct.TYPE_10__* %11)
  %13 = call i64 @XX_Malloc(i32 16)
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @MAJOR, align 4
  %19 = load i32, i32* @E_NO_MEMORY, align 4
  %20 = call i32 @RETURN_ERROR(i32 %18, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i32 @memset(%struct.TYPE_11__* %22, i32 0, i32 16)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %26 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %27 = call i64 @FM_MURAM_AllocMem(%struct.TYPE_10__* %24, i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = call i32 @XX_Free(%struct.TYPE_11__* %36)
  %38 = load i32, i32* @MAJOR, align 4
  %39 = load i32, i32* @E_NO_MEMORY, align 4
  %40 = call i32 @RETURN_ERROR(i32 %38, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %21
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %46 = call i32 @IOMemSet32(i32* %44, i32 0, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = call i32 @LIST_AddToTail(i32* %48, i32* %50)
  %52 = load i32, i32* @E_OK, align 4
  ret i32 %52
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @FmPcdGetMuramHandle(i32) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @FM_MURAM_AllocMem(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_11__*) #1

declare dso_local i32 @IOMemSet32(i32*, i32, i32) #1

declare dso_local i32 @LIST_AddToTail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
