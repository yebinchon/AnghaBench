; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_findfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_findfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%union.dinodep = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64*, i64 }
%struct.TYPE_8__ = type { i64*, i64 }

@disk = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@UFS_ROOTINO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get root inode: %s\00", align 1
@sblock = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@UFS_NDADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"UFS_ROOTINO extends beyond direct blocks.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @journal_findfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_findfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.dinodep, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @UFS_ROOTINO, align 4
  %6 = call i64 @getinode(%struct.TYPE_11__* @disk, %union.dinodep* %2, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @disk, i32 0, i32 0), align 4
  %10 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 -1, i32* %1, align 4
  br label %116

11:                                               ; preds = %0
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sblock, i32 0, i32 0), align 8
  %13 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = bitcast %union.dinodep* %2 to %struct.TYPE_8__**
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @UFS_NDADDR, align 4
  %21 = call i64 @lblktosize(%struct.TYPE_10__* @sblock, i32 %20)
  %22 = icmp sge i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %116

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @UFS_NDADDR, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = bitcast %union.dinodep* %2 to %struct.TYPE_8__**
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %64

41:                                               ; preds = %30
  %42 = bitcast %union.dinodep* %2 to %struct.TYPE_8__**
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = bitcast %union.dinodep* %2 to %struct.TYPE_8__**
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @sblksize(%struct.TYPE_10__* @sblock, i64 %53, i32 %54)
  %56 = call i32 @dir_search(i64 %49, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %1, align 4
  br label %116

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %26

64:                                               ; preds = %40, %26
  br label %115

65:                                               ; preds = %11
  %66 = bitcast %union.dinodep* %2 to %struct.TYPE_9__**
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @UFS_NDADDR, align 4
  %71 = call i64 @lblktosize(%struct.TYPE_10__* @sblock, i32 %70)
  %72 = icmp sge i64 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %116

75:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @UFS_NDADDR, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = bitcast %union.dinodep* %2 to %struct.TYPE_9__**
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %114

91:                                               ; preds = %80
  %92 = bitcast %union.dinodep* %2 to %struct.TYPE_9__**
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = bitcast %union.dinodep* %2 to %struct.TYPE_9__**
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @sblksize(%struct.TYPE_10__* @sblock, i64 %103, i32 %104)
  %106 = call i32 @dir_search(i64 %99, i32 %105)
  store i32 %106, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %91
  %109 = load i32, i32* %3, align 4
  store i32 %109, i32* %1, align 4
  br label %116

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %76

114:                                              ; preds = %90, %76
  br label %115

115:                                              ; preds = %114, %64
  store i32 0, i32* %1, align 4
  br label %116

116:                                              ; preds = %115, %108, %73, %58, %23, %8
  %117 = load i32, i32* %1, align 4
  ret i32 %117
}

declare dso_local i64 @getinode(%struct.TYPE_11__*, %union.dinodep*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @lblktosize(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @dir_search(i64, i32) #1

declare dso_local i32 @sblksize(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
