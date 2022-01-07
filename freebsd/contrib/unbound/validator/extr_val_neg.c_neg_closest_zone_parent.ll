; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_closest_zone_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_closest_zone_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i64, i32, i64, %struct.val_neg_zone*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.val_neg_zone* }
%struct.val_neg_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_neg_zone* (%struct.val_neg_cache*, i32*, i64, i32, i64)* @neg_closest_zone_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache* %0, i32* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.val_neg_zone*, align 8
  %7 = alloca %struct.val_neg_cache*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.val_neg_zone, align 8
  %13 = alloca %struct.val_neg_zone*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %14, align 8
  %16 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.val_neg_zone* %12, %struct.val_neg_zone** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 4
  store i32* %18, i32** %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load %struct.val_neg_cache*, %struct.val_neg_cache** %7, align 8
  %27 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %26, i32 0, i32 0
  %28 = call i64 @rbtree_find_less_equal(i32* %27, %struct.val_neg_zone* %12, i32** %14)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32*, i32** %14, align 8
  %32 = bitcast i32* %31 to %struct.val_neg_zone*
  store %struct.val_neg_zone* %32, %struct.val_neg_zone** %13, align 8
  br label %72

33:                                               ; preds = %5
  %34 = load i32*, i32** %14, align 8
  %35 = bitcast i32* %34 to %struct.val_neg_zone*
  store %struct.val_neg_zone* %35, %struct.val_neg_zone** %13, align 8
  %36 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %37 = icmp ne %struct.val_neg_zone* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %40 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %33
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %6, align 8
  br label %74

45:                                               ; preds = %38
  %46 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %47 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %50 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dname_lab_cmp(i32* %48, i32 %51, i32* %53, i32 %55, i32* %15)
  br label %57

57:                                               ; preds = %67, %45
  %58 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %59 = icmp ne %struct.val_neg_zone* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %62 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %60
  %68 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  %69 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %68, i32 0, i32 3
  %70 = load %struct.val_neg_zone*, %struct.val_neg_zone** %69, align 8
  store %struct.val_neg_zone* %70, %struct.val_neg_zone** %13, align 8
  br label %57

71:                                               ; preds = %66, %57
  br label %72

72:                                               ; preds = %71, %30
  %73 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  store %struct.val_neg_zone* %73, %struct.val_neg_zone** %6, align 8
  br label %74

74:                                               ; preds = %72, %44
  %75 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  ret %struct.val_neg_zone* %75
}

declare dso_local i64 @rbtree_find_less_equal(i32*, %struct.val_neg_zone*, i32**) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
