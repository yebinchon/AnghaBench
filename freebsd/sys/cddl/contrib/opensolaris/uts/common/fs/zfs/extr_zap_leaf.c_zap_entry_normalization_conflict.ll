; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_leaf.c_zap_entry_normalization_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_leaf.c_zap_entry_normalization_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.zap_leaf_entry = type { i64, i64, i64, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@CHAIN_END = common dso_local global i64 0, align 8
@MT_NORMALIZE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zap_entry_normalization_conflict(%struct.TYPE_7__* %0, i32* %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.zap_leaf_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %13 = load i64, i64* @B_FALSE, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %5, align 8
  br label %99

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64* @LEAF_HASH_ENTPTR(i32 %23, i64 %26)
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %87, %20
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @CHAIN_END, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32 %36, i64 %37)
  store %struct.zap_leaf_entry* %38, %struct.zap_leaf_entry** %10, align 8
  %39 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %10, align 8
  %40 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %87

47:                                               ; preds = %33
  %48 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %10, align 8
  %49 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %87

56:                                               ; preds = %47
  %57 = load i32*, i32** %7, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @MT_NORMALIZE, align 4
  %63 = call i32* @zap_name_alloc(%struct.TYPE_6__* %60, i8* %61, i32 %62)
  store i32* %63, i32** %7, align 8
  %64 = load i64, i64* @B_TRUE, align 8
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %59, %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %10, align 8
  %71 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %10, align 8
  %74 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @zap_leaf_array_match(i32 %68, i32* %69, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @zap_name_free(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* @B_TRUE, align 8
  store i64 %85, i64* %5, align 8
  br label %99

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %55, %46
  %88 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %10, align 8
  %89 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %12, align 8
  br label %29

91:                                               ; preds = %29
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @zap_name_free(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i64, i64* @B_FALSE, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %84, %18
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i64* @LEAF_HASH_ENTPTR(i32, i64) #1

declare dso_local %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32, i64) #1

declare dso_local i32* @zap_name_alloc(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @zap_leaf_array_match(i32, i32*, i32, i32) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
