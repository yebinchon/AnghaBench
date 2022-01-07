; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust_meta_balanced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust_meta_balanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@ARC_BUFC_DATA = common dso_local global i64 0, align 8
@zfs_arc_meta_adjust_restarts = common dso_local global i32 0, align 4
@arc_meta_limit = common dso_local global i64 0, align 8
@arc_mru = common dso_local global %struct.TYPE_6__* null, align 8
@arc_mfu = common dso_local global %struct.TYPE_6__* null, align 8
@arc_mru_ghost = common dso_local global %struct.TYPE_6__* null, align 8
@arc_mfu_ghost = common dso_local global %struct.TYPE_6__* null, align 8
@ARC_BUFC_METADATA = common dso_local global i64 0, align 8
@zfs_arc_meta_prune = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @arc_adjust_meta_balanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arc_adjust_meta_balanced(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* @ARC_BUFC_DATA, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @zfs_arc_meta_adjust_restarts, align 4
  %11 = call i32 @MAX(i32 %10, i32 0)
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %152, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @arc_meta_limit, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mru, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i64 @zfs_refcount_count(i32* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mru, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i64 @zfs_refcount_count(i32* %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @MIN(i64 %32, i64 %33)
  store i64 %34, i64* %3, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mru, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @arc_adjust_impl(%struct.TYPE_6__* %35, i32 0, i64 %36, i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %26, %18, %12
  %45 = load i64, i64* %5, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mfu, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i64 @zfs_refcount_count(i32* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mfu, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i64 @zfs_refcount_count(i32* %60)
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @MIN(i64 %61, i64 %62)
  store i64 %63, i64* %3, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mfu, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @arc_adjust_impl(%struct.TYPE_6__* %64, i32 0, i64 %65, i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %55, %47, %44
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* @arc_meta_limit, align 8
  %73 = sub nsw i64 %71, %72
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mru_ghost, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i64 @zfs_refcount_count(i32* %81)
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %76
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mru_ghost, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = call i64 @zfs_refcount_count(i32* %90)
  %92 = call i64 @MIN(i64 %85, i64 %91)
  store i64 %92, i64* %3, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mru_ghost, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @arc_adjust_impl(%struct.TYPE_6__* %93, i32 0, i64 %94, i64 %95)
  %97 = load i64, i64* %6, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* %5, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %84, %76, %70
  %103 = load i64, i64* %5, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mfu_ghost, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i64 @zfs_refcount_count(i32* %110)
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %105
  %114 = load i64, i64* %5, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mfu_ghost, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = call i64 @zfs_refcount_count(i32* %119)
  %121 = call i64 @MIN(i64 %114, i64 %120)
  store i64 %121, i64* %3, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_mfu_ghost, align 8
  %123 = load i64, i64* %3, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @arc_adjust_impl(%struct.TYPE_6__* %122, i32 0, i64 %123, i64 %124)
  %126 = load i64, i64* %6, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %113, %105, %102
  %129 = load i64, i64* %2, align 8
  %130 = load i64, i64* @arc_meta_limit, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* @ARC_BUFC_DATA, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* @ARC_BUFC_METADATA, align 8
  store i64 %137, i64* %7, align 8
  br label %149

138:                                              ; preds = %132
  %139 = load i64, i64* @ARC_BUFC_DATA, align 8
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* @zfs_arc_meta_prune, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i64, i64* @zfs_arc_meta_prune, align 8
  %144 = load i64, i64* %4, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %4, align 8
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @arc_prune_async(i64 %146)
  br label %148

148:                                              ; preds = %142, %138
  br label %149

149:                                              ; preds = %148, %136
  %150 = load i32, i32* %8, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %8, align 4
  br label %12

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %128
  %157 = load i64, i64* %6, align 8
  ret i64 %157
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @zfs_refcount_count(i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @arc_adjust_impl(%struct.TYPE_6__*, i32, i64, i64) #1

declare dso_local i32 @arc_prune_async(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
