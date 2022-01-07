; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_removeoldleaves.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_removeoldleaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, %struct.entry*, i32, %struct.entry*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Mark entries to be removed.\0A\00", align 1
@UFS_WINO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Delete whiteouts\0A\00", align 1
@usedinomap = common dso_local global i32 0, align 4
@dumpmap = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"%s: REMOVE\0A\00", align 1
@LEAF = common dso_local global i64 0, align 8
@removelist = common dso_local global %struct.entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @removeoldleaves() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @vprintf(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @UFS_WINO, align 8
  %8 = call %struct.entry* @lookupino(i64 %7)
  store %struct.entry* %8, %struct.entry** %1, align 8
  %9 = icmp ne %struct.entry* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %0
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @vprintf(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %40, %10
  %14 = load %struct.entry*, %struct.entry** %1, align 8
  %15 = icmp ne %struct.entry* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load %struct.entry*, %struct.entry** %1, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 3
  %19 = load %struct.entry*, %struct.entry** %18, align 8
  store %struct.entry* %19, %struct.entry** %2, align 8
  %20 = load %struct.entry*, %struct.entry** %1, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @usedinomap, align 4
  %27 = call i64 @TSTINO(i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @dumpmap, align 4
  %32 = call i64 @TSTINO(i64 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %40

35:                                               ; preds = %29, %16
  %36 = load %struct.entry*, %struct.entry** %1, align 8
  %37 = call i32 @delwhiteout(%struct.entry* %36)
  %38 = load %struct.entry*, %struct.entry** %1, align 8
  %39 = call i32 @freeentry(%struct.entry* %38)
  br label %40

40:                                               ; preds = %35, %34
  %41 = load %struct.entry*, %struct.entry** %2, align 8
  store %struct.entry* %41, %struct.entry** %1, align 8
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42, %0
  %44 = load i64, i64* @UFS_ROOTINO, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %98, %43
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @maxino, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = call %struct.entry* @lookupino(i64 %51)
  store %struct.entry* %52, %struct.entry** %1, align 8
  %53 = load %struct.entry*, %struct.entry** %1, align 8
  %54 = icmp eq %struct.entry* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %98

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* @usedinomap, align 4
  %59 = call i64 @TSTINO(i64 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %98

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %93, %62
  %64 = load %struct.entry*, %struct.entry** %1, align 8
  %65 = icmp ne %struct.entry* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load i32, i32* @stdout, align 4
  %68 = load %struct.entry*, %struct.entry** %1, align 8
  %69 = call i32 @myname(%struct.entry* %68)
  %70 = call i32 @dprintf(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.entry*, %struct.entry** %1, align 8
  %72 = getelementptr inbounds %struct.entry, %struct.entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LEAF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.entry*, %struct.entry** %1, align 8
  %78 = call i32 @removeleaf(%struct.entry* %77)
  %79 = load %struct.entry*, %struct.entry** %1, align 8
  %80 = call i32 @freeentry(%struct.entry* %79)
  br label %92

81:                                               ; preds = %66
  %82 = load %struct.entry*, %struct.entry** %1, align 8
  %83 = call i32 @mktempname(%struct.entry* %82)
  %84 = load %struct.entry*, %struct.entry** %1, align 8
  %85 = getelementptr inbounds %struct.entry, %struct.entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @deleteino(i32 %86)
  %88 = load %struct.entry*, %struct.entry** @removelist, align 8
  %89 = load %struct.entry*, %struct.entry** %1, align 8
  %90 = getelementptr inbounds %struct.entry, %struct.entry* %89, i32 0, i32 1
  store %struct.entry* %88, %struct.entry** %90, align 8
  %91 = load %struct.entry*, %struct.entry** %1, align 8
  store %struct.entry* %91, %struct.entry** @removelist, align 8
  br label %92

92:                                               ; preds = %81, %76
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.entry*, %struct.entry** %1, align 8
  %95 = getelementptr inbounds %struct.entry, %struct.entry* %94, i32 0, i32 3
  %96 = load %struct.entry*, %struct.entry** %95, align 8
  store %struct.entry* %96, %struct.entry** %1, align 8
  br label %63

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97, %61, %55
  %99 = load i64, i64* %3, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %3, align 8
  br label %46

101:                                              ; preds = %46
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i64 @TSTINO(i64, i32) #1

declare dso_local i32 @delwhiteout(%struct.entry*) #1

declare dso_local i32 @freeentry(%struct.entry*) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @myname(%struct.entry*) #1

declare dso_local i32 @removeleaf(%struct.entry*) #1

declare dso_local i32 @mktempname(%struct.entry*) #1

declare dso_local i32 @deleteino(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
