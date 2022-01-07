; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@arc_size = common dso_local global i32 0, align 4
@arc_meta_used = common dso_local global i32 0, align 4
@arc_c = common dso_local global i64 0, align 8
@arc_anon = common dso_local global %struct.TYPE_9__* null, align 8
@arc_mru = common dso_local global %struct.TYPE_8__* null, align 8
@arc_p = common dso_local global i64 0, align 8
@ARC_BUFC_METADATA = common dso_local global i64 0, align 8
@arc_meta_min = common dso_local global i64 0, align 8
@ARC_BUFC_DATA = common dso_local global i64 0, align 8
@arc_mfu = common dso_local global %struct.TYPE_8__* null, align 8
@arc_mru_ghost = common dso_local global %struct.TYPE_8__* null, align 8
@arc_mfu_ghost = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @arc_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arc_adjust() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %6 = call i64 @aggsum_value(i32* @arc_size)
  store i64 %6, i64* %4, align 8
  %7 = call i64 @aggsum_value(i32* @arc_meta_used)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @arc_adjust_meta(i64 %8)
  %10 = load i64, i64* %1, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @arc_c, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arc_anon, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = call i64 @zfs_refcount_count(i32* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i64 @zfs_refcount_count(i32* %19)
  %21 = add nsw i64 %17, %20
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @arc_p, align 8
  %25 = sub nsw i64 %23, %24
  %26 = call i64 @MIN(i64 %14, i64 %25)
  store i64 %26, i64* %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %28 = call i64 @arc_adjust_type(%struct.TYPE_8__* %27)
  %29 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %0
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @arc_meta_min, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %39 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %36, i32 0, i64 %37, i64 %38)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* %1, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %3, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @ARC_BUFC_DATA, align 8
  %49 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %46, i32 0, i64 %47, i64 %48)
  %50 = load i64, i64* %1, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %1, align 8
  br label %69

52:                                               ; preds = %31, %0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @ARC_BUFC_DATA, align 8
  %56 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %53, i32 0, i64 %54, i64 %55)
  store i64 %56, i64* %2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* %1, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %3, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %66 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %63, i32 0, i64 %64, i64 %65)
  %67 = load i64, i64* %1, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %1, align 8
  br label %69

69:                                               ; preds = %52, %35
  %70 = call i64 @aggsum_value(i32* @arc_size)
  store i64 %70, i64* %4, align 8
  %71 = call i64 @aggsum_value(i32* @arc_meta_used)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @arc_c, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %3, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu, align 8
  %76 = call i64 @arc_adjust_type(%struct.TYPE_8__* %75)
  %77 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %69
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @arc_meta_min, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %87 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %84, i32 0, i64 %85, i64 %86)
  store i64 %87, i64* %2, align 8
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* %1, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %1, align 8
  %91 = load i64, i64* %2, align 8
  %92 = load i64, i64* %3, align 8
  %93 = sub nsw i64 %92, %91
  store i64 %93, i64* %3, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu, align 8
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* @ARC_BUFC_DATA, align 8
  %97 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %94, i32 0, i64 %95, i64 %96)
  %98 = load i64, i64* %1, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %1, align 8
  br label %117

100:                                              ; preds = %79, %69
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu, align 8
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @ARC_BUFC_DATA, align 8
  %104 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %101, i32 0, i64 %102, i64 %103)
  store i64 %104, i64* %2, align 8
  %105 = load i64, i64* %2, align 8
  %106 = load i64, i64* %1, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %1, align 8
  %108 = load i64, i64* %2, align 8
  %109 = load i64, i64* %3, align 8
  %110 = sub nsw i64 %109, %108
  store i64 %110, i64* %3, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu, align 8
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %114 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %111, i32 0, i64 %112, i64 %113)
  %115 = load i64, i64* %1, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %1, align 8
  br label %117

117:                                              ; preds = %100, %83
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i64 @zfs_refcount_count(i32* %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru_ghost, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = call i64 @zfs_refcount_count(i32* %122)
  %124 = add nsw i64 %120, %123
  %125 = load i64, i64* @arc_c, align 8
  %126 = sub nsw i64 %124, %125
  store i64 %126, i64* %3, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru_ghost, align 8
  %128 = load i64, i64* %3, align 8
  %129 = load i64, i64* @ARC_BUFC_DATA, align 8
  %130 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %127, i32 0, i64 %128, i64 %129)
  store i64 %130, i64* %2, align 8
  %131 = load i64, i64* %2, align 8
  %132 = load i64, i64* %1, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %1, align 8
  %134 = load i64, i64* %2, align 8
  %135 = load i64, i64* %3, align 8
  %136 = sub nsw i64 %135, %134
  store i64 %136, i64* %3, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru_ghost, align 8
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %140 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %137, i32 0, i64 %138, i64 %139)
  %141 = load i64, i64* %1, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %1, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mru_ghost, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = call i64 @zfs_refcount_count(i32* %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu_ghost, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = call i64 @zfs_refcount_count(i32* %147)
  %149 = add nsw i64 %145, %148
  %150 = load i64, i64* @arc_c, align 8
  %151 = sub nsw i64 %149, %150
  store i64 %151, i64* %3, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu_ghost, align 8
  %153 = load i64, i64* %3, align 8
  %154 = load i64, i64* @ARC_BUFC_DATA, align 8
  %155 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %152, i32 0, i64 %153, i64 %154)
  store i64 %155, i64* %2, align 8
  %156 = load i64, i64* %2, align 8
  %157 = load i64, i64* %1, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %1, align 8
  %159 = load i64, i64* %2, align 8
  %160 = load i64, i64* %3, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %3, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** @arc_mfu_ghost, align 8
  %163 = load i64, i64* %3, align 8
  %164 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %165 = call i64 @arc_adjust_impl(%struct.TYPE_8__* %162, i32 0, i64 %163, i64 %164)
  %166 = load i64, i64* %1, align 8
  %167 = add nsw i64 %166, %165
  store i64 %167, i64* %1, align 8
  %168 = load i64, i64* %1, align 8
  ret i64 %168
}

declare dso_local i64 @aggsum_value(i32*) #1

declare dso_local i64 @arc_adjust_meta(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @zfs_refcount_count(i32*) #1

declare dso_local i64 @arc_adjust_type(%struct.TYPE_8__*) #1

declare dso_local i64 @arc_adjust_impl(%struct.TYPE_8__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
