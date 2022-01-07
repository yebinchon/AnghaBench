; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_UpdatePtrWhichPointOnCrntMdfNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_UpdatePtrWhichPointOnCrntMdfNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* @UpdatePtrWhichPointOnCrntMdfNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdatePtrWhichPointOnCrntMdfNode(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %13 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  store i32* null, i32** %12, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = call i32 @NCSW_LIST_IsEmpty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @UpdateAdPtrOfNodesWhichPointsOnCrntMdfNode(%struct.TYPE_13__* %19, i32* %20, %struct.TYPE_14__** %9)
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = call i32 @NCSW_LIST_IsEmpty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @UpdateAdPtrOfTreesWhichPointsOnCrntMdfNode(%struct.TYPE_13__* %28, i32* %29, %struct.TYPE_14__** %9)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32* @GetNewAd(%struct.TYPE_13__* %35, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @MAJOR, align 4
  %42 = load i32, i32* @E_NO_MEMORY, align 4
  %43 = load i32, i32* @NO_MSG, align 4
  %44 = call i32 @RETURN_ERROR(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %48 = call i32 @MemSet8(i32* %46, i32 0, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = call i32 @BuildNewAd(i32* %52, i32* %53, %struct.TYPE_13__* %54, %struct.TYPE_14__* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @EnqueueNodeInfoToRelevantLst(i32* %59, %struct.TYPE_15__* %10, i32* null)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %45
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @FmPcdManipUpdateOwner(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %65, %45
  br label %75

75:                                               ; preds = %74, %31
  %76 = load i32, i32* @E_OK, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NCSW_LIST_IsEmpty(i32*) #2

declare dso_local i32 @UpdateAdPtrOfNodesWhichPointsOnCrntMdfNode(%struct.TYPE_13__*, i32*, %struct.TYPE_14__**) #2

declare dso_local i32 @UpdateAdPtrOfTreesWhichPointsOnCrntMdfNode(%struct.TYPE_13__*, i32*, %struct.TYPE_14__**) #2

declare dso_local i32* @GetNewAd(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #2

declare dso_local i32 @MemSet8(i32*, i32, i32) #2

declare dso_local i32 @BuildNewAd(i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i32 @EnqueueNodeInfoToRelevantLst(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @FmPcdManipUpdateOwner(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
