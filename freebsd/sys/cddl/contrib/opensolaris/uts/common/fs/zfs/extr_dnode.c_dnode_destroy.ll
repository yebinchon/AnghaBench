; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode.c_dnode_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode.c_dnode_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i8*, i32*, %struct.TYPE_13__*, i32*, i64, i64, i64, i64, i64, %struct.TYPE_10__*, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@DN_ID_NEW_EXIST = common dso_local global i32 0, align 4
@dnode_cache = common dso_local global i32 0, align 4
@ARC_SPACE_DNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @dnode_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnode_destroy(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 19
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %3, align 8
  %8 = load i8*, i8** @B_FALSE, align 8
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DN_ID_NEW_EXIST, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = call i32 @mutex_enter(i32* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 19
  %23 = call i32 @POINTER_INVALIDATE(%struct.TYPE_11__** %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 18
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DMU_OBJECT_IS_SPECIAL(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = call i32 @list_remove(i32* %31, %struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = call i64 @list_is_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = call i64 @list_link_active(i32* %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %29
  %44 = phi i1 [ false, %29 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 @mutex_exit(i32* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 17
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = call i32 @zrl_is_locked(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 17
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @zrl_remove(i32* %60)
  br label %62

62:                                               ; preds = %56, %46
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 16
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 15
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 14
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 13
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 12
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 11
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 11
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kmem_free(i32* %80, i32 1)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 11
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %62
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 10
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 10
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = call i32 @mutex_enter(i32* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 10
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = call i32 @dbuf_destroy(%struct.TYPE_13__* %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 10
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %100, align 8
  br label %101

101:                                              ; preds = %89, %84
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 9
  store i32* null, i32** %103, align 8
  %104 = load i8*, i8** @B_FALSE, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 8
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 7
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 6
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 5
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = call i32 @dmu_zfetch_fini(i32* %122)
  %124 = load i32, i32* @dnode_cache, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = call i32 @kmem_cache_free(i32 %124, %struct.TYPE_12__* %125)
  %127 = load i32, i32* @ARC_SPACE_DNODE, align 4
  %128 = call i32 @arc_space_return(i32 152, i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %101
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = call i32 @dmu_objset_evict_done(%struct.TYPE_11__* %132)
  br label %134

134:                                              ; preds = %131, %101
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @POINTER_INVALIDATE(%struct.TYPE_11__**) #1

declare dso_local i32 @DMU_OBJECT_IS_SPECIAL(i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @list_is_empty(i32*) #1

declare dso_local i64 @list_link_active(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zrl_is_locked(i32*) #1

declare dso_local i32 @zrl_remove(i32*) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @dbuf_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_zfetch_fini(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @arc_space_return(i32, i32) #1

declare dso_local i32 @dmu_objset_evict_done(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
