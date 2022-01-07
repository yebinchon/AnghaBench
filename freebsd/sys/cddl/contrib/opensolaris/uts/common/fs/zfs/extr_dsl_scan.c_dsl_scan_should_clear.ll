; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_should_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_should_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32, i32 }

@physmem = common dso_local global i32 0, align 4
@zfs_scan_mem_lim_fact = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i32 0, align 4
@zfs_scan_mem_lim_min = common dso_local global i32 0, align 4
@zfs_scan_mem_lim_soft_fact = common dso_local global i32 0, align 4
@zfs_scan_mem_lim_soft_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"current scan memory usage: %llu bytes\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @dsl_scan_should_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_scan_should_clear(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = call i32 @spa_normal_class(%struct.TYPE_11__* %23)
  %25 = call i32 @metaslab_class_get_alloc(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @physmem, align 4
  %27 = load i32, i32* @zfs_scan_mem_lim_fact, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* @PAGESIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @zfs_scan_mem_lim_min, align 4
  %32 = call i32 @MAX(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 20
  %36 = call i32 @MIN(i32 %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @zfs_scan_mem_lim_soft_fact, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32, i32* @zfs_scan_mem_lim_soft_max, align 4
  %42 = call i32 @MIN(i32 %40, i32 %41)
  %43 = sub nsw i32 %37, %42
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %86, %1
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %53, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %10, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i32 @mutex_enter(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %11, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %50
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = call i32 @avl_numnodes(i32* %68)
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = call i32 @avl_numnodes(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = add i64 %71, %76
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %66, %50
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = call i32 @mutex_exit(i32* %84)
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ASSERT0(i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @B_TRUE, align 4
  store i32 %104, i32* %2, align 4
  br label %115

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @B_FALSE, align 4
  store i32 %110, i32* %2, align 4
  br label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %109, %103
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @metaslab_class_get_alloc(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_11__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
