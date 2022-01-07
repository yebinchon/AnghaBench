; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32, i64, i64, i32, %struct.trust_anchor*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.trust_anchor* }
%struct.val_anchors = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trust_anchor* @anchors_lookup(%struct.val_anchors* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trust_anchor, align 8
  %11 = alloca %struct.trust_anchor*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.val_anchors* %0, %struct.val_anchors** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %12, align 8
  %14 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.trust_anchor* %10, %struct.trust_anchor** %15, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 5
  store i32* %16, i32** %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @dname_count_labels(i32* %18)
  %20 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %26 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %25, i32 0, i32 0
  %27 = call i32 @lock_basic_lock(i32* %26)
  %28 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %29 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @rbtree_find_less_equal(i32 %30, %struct.trust_anchor* %10, i32** %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32*, i32** %12, align 8
  %35 = bitcast i32* %34 to %struct.trust_anchor*
  store %struct.trust_anchor* %35, %struct.trust_anchor** %11, align 8
  br label %78

36:                                               ; preds = %4
  %37 = load i32*, i32** %12, align 8
  %38 = bitcast i32* %37 to %struct.trust_anchor*
  store %struct.trust_anchor* %38, %struct.trust_anchor** %11, align 8
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %40 = icmp ne %struct.trust_anchor* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %43 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %36
  %48 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %49 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %48, i32 0, i32 0
  %50 = call i32 @lock_basic_unlock(i32* %49)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %90

51:                                               ; preds = %41
  %52 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %53 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %56 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dname_lab_cmp(i32* %54, i32 %57, i32* %59, i32 %61, i32* %13)
  br label %63

63:                                               ; preds = %73, %51
  %64 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %65 = icmp ne %struct.trust_anchor* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %68 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %75 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %74, i32 0, i32 4
  %76 = load %struct.trust_anchor*, %struct.trust_anchor** %75, align 8
  store %struct.trust_anchor* %76, %struct.trust_anchor** %11, align 8
  br label %63

77:                                               ; preds = %72, %63
  br label %78

78:                                               ; preds = %77, %33
  %79 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %80 = icmp ne %struct.trust_anchor* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  %83 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %82, i32 0, i32 3
  %84 = call i32 @lock_basic_lock(i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %87 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %86, i32 0, i32 0
  %88 = call i32 @lock_basic_unlock(i32* %87)
  %89 = load %struct.trust_anchor*, %struct.trust_anchor** %11, align 8
  store %struct.trust_anchor* %89, %struct.trust_anchor** %5, align 8
  br label %90

90:                                               ; preds = %85, %47
  %91 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  ret %struct.trust_anchor* %91
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_find_less_equal(i32, %struct.trust_anchor*, i32**) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
