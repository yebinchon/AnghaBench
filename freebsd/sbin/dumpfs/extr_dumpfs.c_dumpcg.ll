; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dumpfs/extr_dumpfs.c_dumpcg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dumpfs/extr_dumpfs.c_dumpcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\0Acg %d:\0A\00", align 1
@disk = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@afs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@acg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"magic\09%x\09tell\09%jx\09time\09%s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cgx\09%d\09ndblk\09%d\09niblk\09%d\09initiblk %d\09unrefs %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"cgx\09%d\09ncyl\09%d\09niblk\09%d\09ndblk\09%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"nbfree\09%d\09ndir\09%d\09nifree\09%d\09nffree\09%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"rotor\09%d\09irotor\09%d\09frotor\09%d\0Afrsum\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\0Asum of frsum: %d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\0Aclusters %d-%d:\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\0Aclusters size %d and over: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"clusters free:\09\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"inodes used:\09\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"blks free:\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dumpcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumpcg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @disk, i32 0, i32 0), align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @disk, i32 0, i32 0), align 4
  %8 = call i32 @cgtod(%struct.TYPE_12__* @afs, i32 %7)
  %9 = call i32 @fsbtodb(%struct.TYPE_12__* @afs, i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @disk, i32 0, i32 1), align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @disk, i32 0, i32 2), align 4
  switch i32 %12, label %36 [
    i32 2, label %13
    i32 1, label %25
  ]

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 15), align 8
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 0), align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ctime(i32* %1)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 2), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 3), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 4), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 5), align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  br label %37

25:                                               ; preds = %0
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 14), align 4
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 0), align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ctime(i32* %1)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 6), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 7), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 2), align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  br label %37

36:                                               ; preds = %0
  br label %37

37:                                               ; preds = %36, %25, %13
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 13, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 13, i32 1), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 13, i32 2), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 13, i32 3), align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 8), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 9), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 10), align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %67, %37
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 0), align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 11), align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 11), align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 1), align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, 1
  %83 = srem i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 1), align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 7
  %91 = call i32 @MIN(i32 %88, i32 %90)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %85, %80
  %94 = call i32* @cg_clustersum(%struct.TYPE_14__* @acg)
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %76

103:                                              ; preds = %76
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 1), align 4
  %105 = call i32* @cg_clustersum(%struct.TYPE_14__* @acg)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 1), align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %104, i32 %109)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %112 = call i32 @cg_clustersfree(%struct.TYPE_14__* @acg)
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @acg, i32 0, i32 12), align 8
  %114 = call i32 @pbits(i32 %112, i32 %113)
  br label %117

115:                                              ; preds = %70
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %103
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %119 = call i32 @cg_inosused(%struct.TYPE_14__* @acg)
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 3), align 4
  %121 = call i32 @pbits(i32 %119, i32 %120)
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %123 = call i32 @cg_blksfree(%struct.TYPE_14__* @acg)
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @afs, i32 0, i32 2), align 4
  %125 = call i32 @pbits(i32 %123, i32 %124)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cgtod(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @cg_clustersum(%struct.TYPE_14__*) #1

declare dso_local i32 @pbits(i32, i32) #1

declare dso_local i32 @cg_clustersfree(%struct.TYPE_14__*) #1

declare dso_local i32 @cg_inosused(%struct.TYPE_14__*) #1

declare dso_local i32 @cg_blksfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
