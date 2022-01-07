; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_condense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_condense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32, %struct.TYPE_17__*, i32*, i32*, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [107 x i8] c"condensing: txg %llu, msp[%llu] %p, vdev id %llu, spa %s, smp size %llu, segments %lu, forcing condense=%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@B_FALSE = common dso_local global i8* null, align 8
@range_tree_remove = common dso_local global i32 0, align 4
@TXG_DEFER_SIZE = common dso_local global i32 0, align 4
@TXG_CONCURRENT_STATES = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@zfs_metaslab_sm_blksz = common dso_local global i32 0, align 4
@SM_ALLOC = common dso_local global i32 0, align 4
@SM_NO_VDEVID = common dso_local global i32 0, align 4
@SM_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32, i32*)* @metaslab_condense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metaslab_condense(%struct.TYPE_18__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 10
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = call i32 @MUTEX_HELD(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 11
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 11
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @space_map_length(i32* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = call i32 @avl_numnodes(i32* %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 9
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, %struct.TYPE_18__* %26, i32 %33, i32 %42, i32 %46, i32 %51, i8* %57)
  %59 = load i8*, i8** @B_FALSE, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  %62 = call %struct.TYPE_17__* @range_tree_create(i32* null, i32* null)
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %7, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @range_tree_add(%struct.TYPE_17__* %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @range_tree_remove, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = call i32 @range_tree_walk(i32 %73, i32 %74, %struct.TYPE_17__* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @range_tree_remove, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = call i32 @range_tree_walk(i32 %79, i32 %80, %struct.TYPE_17__* %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %98, %3
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @TXG_DEFER_SIZE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @range_tree_remove, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = call i32 @range_tree_walk(i32 %94, i32 %95, %struct.TYPE_17__* %96)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %83

101:                                              ; preds = %83
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @TXG_CONCURRENT_STATES, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* @TXG_MASK, align 4
  %114 = and i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @range_tree_remove, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = call i32 @range_tree_walk(i32 %117, i32 %118, %struct.TYPE_17__* %119)
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %102

124:                                              ; preds = %102
  %125 = load i8*, i8** @B_TRUE, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = call i32 @mutex_exit(i32* %129)
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* @zfs_metaslab_sm_blksz, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @space_map_truncate(i32* %131, i32 %132, i32* %133)
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = load i32, i32* @SM_ALLOC, align 4
  %138 = load i32, i32* @SM_NO_VDEVID, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @space_map_write(i32* %135, %struct.TYPE_17__* %136, i32 %137, i32 %138, i32* %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %142 = call i32 @range_tree_vacate(%struct.TYPE_17__* %141, i32* null, i32* null)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = call i32 @range_tree_destroy(%struct.TYPE_17__* %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = load i32, i32* @SM_FREE, align 4
  %150 = load i32, i32* @SM_NO_VDEVID, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @space_map_write(i32* %145, %struct.TYPE_17__* %148, i32 %149, i32 %150, i32* %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = call i32 @mutex_enter(i32* %154)
  %156 = load i8*, i8** @B_FALSE, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @space_map_length(i32*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local %struct.TYPE_17__* @range_tree_create(i32*, i32*) #1

declare dso_local i32 @range_tree_add(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @range_tree_walk(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @space_map_truncate(i32*, i32, i32*) #1

declare dso_local i32 @space_map_write(i32*, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @range_tree_vacate(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @range_tree_destroy(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
