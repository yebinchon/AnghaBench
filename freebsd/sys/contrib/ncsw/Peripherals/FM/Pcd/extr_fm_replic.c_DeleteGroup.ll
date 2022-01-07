; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_DeleteGroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_DeleteGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64, %struct.TYPE_19__*, i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @DeleteGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeleteGroup(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %9 = icmp ne %struct.TYPE_19__* %8, null
  br i1 %9, label %10, label %122

10:                                               ; preds = %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %14 = call i32 @ASSERT_COND(%struct.TYPE_19__* %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = call %struct.TYPE_19__* @FmPcdGetMuramHandle(%struct.TYPE_19__* %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = call i32 @ASSERT_COND(%struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %10
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @FM_MURAM_FreeMem(%struct.TYPE_19__* %26, i32* %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %25, %10
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %33
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %72, %38
  %45 = load i32, i32* %3, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.TYPE_19__* @GetMemberByIndex(%struct.TYPE_19__* %48, i32 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %7, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = call i32 @ASSERT_COND(%struct.TYPE_19__* %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @FmPcdManipUpdateOwner(i32* %60, i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %57, %47
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = call i32 @RemoveMemberFromList(%struct.TYPE_19__* %66, %struct.TYPE_19__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = call i32 @FreeMember(%struct.TYPE_19__* %69, %struct.TYPE_19__* %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %3, align 4
  br label %44

75:                                               ; preds = %44
  br label %76

76:                                               ; preds = %75, %33
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = call %struct.TYPE_19__* @GetAvailableMember(%struct.TYPE_19__* %84)
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %6, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = call i32 @ASSERT_COND(%struct.TYPE_19__* %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @FM_MURAM_FreeMem(%struct.TYPE_19__* %93, i32* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %92, %83
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = call i32 @XX_Free(%struct.TYPE_19__* %101)
  br label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %77

106:                                              ; preds = %77
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @FmPcdReleaseLock(%struct.TYPE_19__* %114, i64 %117)
  br label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = call i32 @XX_Free(%struct.TYPE_19__* %120)
  br label %122

122:                                              ; preds = %119, %1
  ret void
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @FmPcdGetMuramHandle(%struct.TYPE_19__*) #1

declare dso_local i32 @FM_MURAM_FreeMem(%struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_19__* @GetMemberByIndex(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @FmPcdManipUpdateOwner(i32*, i32) #1

declare dso_local i32 @RemoveMemberFromList(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @FreeMember(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @GetAvailableMember(%struct.TYPE_19__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_19__*) #1

declare dso_local i32 @FmPcdReleaseLock(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
