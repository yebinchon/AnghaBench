; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_pool_close(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 20
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 20
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = call i32 @dsl_dataset_rele(i32* %10, %struct.TYPE_8__* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 19
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 19
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call i32 @dsl_dir_rele(i32* %21, %struct.TYPE_8__* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 18
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 18
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = call i32 @dsl_dir_rele(i32* %32, %struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 17
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 17
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = call i32 @dsl_dir_rele(i32* %43, %struct.TYPE_8__* %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 16
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 16
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = call i32 @dsl_dir_rele(i32* %54, %struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 15
  %60 = call i32 @bpobj_close(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 14
  %63 = call i32 @bpobj_close(i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 13
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 13
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dmu_objset_evict(i32* %71)
  br label %73

73:                                               ; preds = %68, %57
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 12
  %76 = call i32 @txg_list_destroy(i32* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 11
  %79 = call i32 @txg_list_destroy(i32* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 10
  %82 = call i32 @txg_list_destroy(i32* %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 9
  %85 = call i32 @txg_list_destroy(i32* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 8
  %88 = call i32 @txg_list_destroy(i32* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @taskq_destroy(i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @taskq_destroy(i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @arc_flush(i32 %99, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = call i32 @txg_fini(%struct.TYPE_8__* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = call i32 @dsl_scan_fini(%struct.TYPE_8__* %104)
  %106 = call i32 (...) @dmu_buf_user_evict_wait()
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = call i32 @rrw_destroy(i32* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = call i32 @mutex_destroy(i32* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @taskq_destroy(i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = icmp ne %struct.TYPE_8__* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %73
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = call i32 @mutex_destroy(i32* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = call i32 @kmem_free(%struct.TYPE_8__* %129, i32 4)
  br label %131

131:                                              ; preds = %121, %73
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = call i32 @kmem_free(%struct.TYPE_8__* %132, i32 112)
  ret void
}

declare dso_local i32 @dsl_dataset_rele(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dsl_dir_rele(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @bpobj_close(i32*) #1

declare dso_local i32 @dmu_objset_evict(i32*) #1

declare dso_local i32 @txg_list_destroy(i32*) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local i32 @arc_flush(i32, i32) #1

declare dso_local i32 @txg_fini(%struct.TYPE_8__*) #1

declare dso_local i32 @dsl_scan_fini(%struct.TYPE_8__*) #1

declare dso_local i32 @dmu_buf_user_evict_wait(...) #1

declare dso_local i32 @rrw_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
