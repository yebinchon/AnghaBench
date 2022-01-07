; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_leaf.c_zap_leaf_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_leaf.c_zap_leaf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.zap_leaf_entry = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@ZAP_HISTOGRAM_SIZE = common dso_local global i64 0, align 8
@ZAP_LEAF_ARRAY_BYTES = common dso_local global i32 0, align 4
@CHAIN_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zap_leaf_stats(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.zap_leaf_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_11__* @zap_f_phys(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_10__* @zap_leaf_phys(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %16, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* @ZAP_HISTOGRAM_SIZE, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @MIN(i32 %23, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_10__* @zap_leaf_phys(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 5
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* @ZAP_HISTOGRAM_SIZE, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @MIN(i32 %41, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @FZAP_BLOCK_SHIFT(i32* %53)
  %55 = shl i32 1, %54
  %56 = load i32*, i32** %5, align 8
  %57 = call %struct.TYPE_10__* @zap_leaf_phys(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZAP_LEAF_ARRAY_BYTES, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  %64 = sub nsw i32 %55, %63
  %65 = mul nsw i32 %64, 10
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @FZAP_BLOCK_SHIFT(i32* %66)
  %68 = shl i32 1, %67
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* @ZAP_HISTOGRAM_SIZE, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i32 @MIN(i32 %70, i64 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %149, %3
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @ZAP_LEAF_HASH_NUMENTRIES(i32* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %152

87:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = call %struct.TYPE_10__* @zap_leaf_phys(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %100, %87
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @CHAIN_END, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %96
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32* %101, i32 %102)
  store %struct.zap_leaf_entry* %103, %struct.zap_leaf_entry** %11, align 8
  %104 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %11, align 8
  %105 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ZAP_LEAF_ARRAY_NCHUNKS(i32 %106)
  %108 = add nsw i32 1, %107
  %109 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %11, align 8
  %110 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %11, align 8
  %113 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = call i32 @ZAP_LEAF_ARRAY_NCHUNKS(i32 %115)
  %117 = add nsw i32 %108, %116
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i64, i64* @ZAP_HISTOGRAM_SIZE, align 8
  %120 = sub nsw i64 %119, 1
  %121 = call i32 @MIN(i32 %118, i64 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %11, align 8
  %131 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %96

135:                                              ; preds = %96
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i64, i64* @ZAP_HISTOGRAM_SIZE, align 8
  %139 = sub nsw i64 %138, 1
  %140 = call i32 @MIN(i32 %137, i64 %139)
  store i32 %140, i32* %7, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %82

152:                                              ; preds = %82
  ret void
}

declare dso_local %struct.TYPE_11__* @zap_f_phys(i32*) #1

declare dso_local %struct.TYPE_10__* @zap_leaf_phys(i32*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @FZAP_BLOCK_SHIFT(i32*) #1

declare dso_local i32 @ZAP_LEAF_HASH_NUMENTRIES(i32*) #1

declare dso_local %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32*, i32) #1

declare dso_local i32 @ZAP_LEAF_ARRAY_NCHUNKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
