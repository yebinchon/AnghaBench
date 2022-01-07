; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_create_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_create_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i64, %struct.val_neg_zone*, i32, i64, i32 }
%struct.val_neg_cache = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.val_neg_zone* @neg_create_zone(%struct.val_neg_cache* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.val_neg_zone*, align 8
  %6 = alloca %struct.val_neg_cache*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.val_neg_zone*, align 8
  %11 = alloca %struct.val_neg_zone*, align 8
  %12 = alloca %struct.val_neg_zone*, align 8
  %13 = alloca %struct.val_neg_zone*, align 8
  %14 = alloca i32, align 4
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @dname_count_labels(i32* %15)
  store i32 %16, i32* %14, align 4
  %17 = load %struct.val_neg_cache*, %struct.val_neg_cache** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache* %17, i32* %18, i64 %19, i32 %20, i32 %21)
  store %struct.val_neg_zone* %22, %struct.val_neg_zone** %11, align 8
  %23 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %24 = icmp ne %struct.val_neg_zone* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %27 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @query_dname_compare(i32 %28, i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  store %struct.val_neg_zone* %33, %struct.val_neg_zone** %5, align 8
  br label %89

34:                                               ; preds = %25, %4
  %35 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %36 = icmp ne %struct.val_neg_zone* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %39 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ true, %34 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @log_assert(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %51 = call %struct.val_neg_zone* @neg_zone_chain(i32* %46, i64 %47, i32 %48, i32 %49, %struct.val_neg_zone* %50)
  store %struct.val_neg_zone* %51, %struct.val_neg_zone** %10, align 8
  %52 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %53 = icmp ne %struct.val_neg_zone* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %5, align 8
  br label %89

55:                                               ; preds = %42
  %56 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  store %struct.val_neg_zone* %56, %struct.val_neg_zone** %12, align 8
  br label %57

57:                                               ; preds = %85, %55
  %58 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %59 = icmp ne %struct.val_neg_zone* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %62 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %61, i32 0, i32 1
  %63 = load %struct.val_neg_zone*, %struct.val_neg_zone** %62, align 8
  store %struct.val_neg_zone* %63, %struct.val_neg_zone** %13, align 8
  %64 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %65 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add i64 40, %66
  %68 = load %struct.val_neg_cache*, %struct.val_neg_cache** %6, align 8
  %69 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.val_neg_cache*, %struct.val_neg_cache** %6, align 8
  %75 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %74, i32 0, i32 0
  %76 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %77 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %76, i32 0, i32 2
  %78 = call i32 @rbtree_insert(i32* %75, i32* %77)
  %79 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %80 = icmp eq %struct.val_neg_zone* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %60
  %82 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %83 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %84 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %83, i32 0, i32 1
  store %struct.val_neg_zone* %82, %struct.val_neg_zone** %84, align 8
  br label %85

85:                                               ; preds = %81, %60
  %86 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  store %struct.val_neg_zone* %86, %struct.val_neg_zone** %12, align 8
  br label %57

87:                                               ; preds = %57
  %88 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  store %struct.val_neg_zone* %88, %struct.val_neg_zone** %5, align 8
  br label %89

89:                                               ; preds = %87, %54, %32
  %90 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  ret %struct.val_neg_zone* %90
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache*, i32*, i64, i32, i32) #1

declare dso_local i64 @query_dname_compare(i32, i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.val_neg_zone* @neg_zone_chain(i32*, i64, i32, i32, %struct.val_neg_zone*) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
