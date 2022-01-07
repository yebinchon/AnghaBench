; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_HashTableDelete(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = load i32, i32* @E_INVALID_HANDLE, align 4
  %13 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_17__* %11, i32 %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @XX_Malloc(i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_17__**
  store %struct.TYPE_17__** %22, %struct.TYPE_17__*** %5, align 8
  %23 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %24 = icmp ne %struct.TYPE_17__** %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i32, i32* @E_NO_MEMORY, align 4
  %28 = load i32, i32* @NO_MSG, align 4
  %29 = call i32 @RETURN_ERROR(i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %47, i64 %49
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %50, align 8
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %4, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %6, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = call i32 @FM_PCD_MatchTableDelete(%struct.TYPE_17__* %61)
  store i32 %62, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %76, %54
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %68, i64 %70
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = call i32 @FM_PCD_MatchTableDelete(%struct.TYPE_17__* %72)
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %81 = call i32 @XX_Free(%struct.TYPE_17__** %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = icmp ne %struct.TYPE_17__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = call i32 @FmPcdGetMuramHandle(%struct.TYPE_17__* %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = call i32 @FM_MURAM_FreeMem(i32 %86, %struct.TYPE_17__* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @MAJOR, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @NO_MSG, align 4
  %96 = call i32 @RETURN_ERROR(i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* @E_OK, align 4
  ret i32 %98
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @FM_PCD_MatchTableDelete(%struct.TYPE_17__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_17__**) #1

declare dso_local i32 @FM_MURAM_FreeMem(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @FmPcdGetMuramHandle(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
