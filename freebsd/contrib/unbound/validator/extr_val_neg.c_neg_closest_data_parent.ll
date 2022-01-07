; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_closest_data_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_closest_data_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_data = type { i64, i32, %struct.val_neg_data*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.val_neg_data* }
%struct.val_neg_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_neg_data* (%struct.val_neg_zone*, i32*, i64, i32)* @neg_closest_data_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_neg_data* @neg_closest_data_parent(%struct.val_neg_zone* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.val_neg_data*, align 8
  %6 = alloca %struct.val_neg_zone*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.val_neg_data, align 8
  %11 = alloca %struct.val_neg_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %12, align 8
  %14 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.val_neg_data* %10, %struct.val_neg_data** %15, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 3
  store i32* %16, i32** %17, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  %23 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %22, i32 0, i32 0
  %24 = call i64 @rbtree_find_less_equal(i32* %23, %struct.val_neg_data* %10, i32** %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32*, i32** %12, align 8
  %28 = bitcast i32* %27 to %struct.val_neg_data*
  store %struct.val_neg_data* %28, %struct.val_neg_data** %11, align 8
  br label %62

29:                                               ; preds = %4
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to %struct.val_neg_data*
  store %struct.val_neg_data* %31, %struct.val_neg_data** %11, align 8
  %32 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  %33 = icmp ne %struct.val_neg_data* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.val_neg_data* null, %struct.val_neg_data** %5, align 8
  br label %64

35:                                               ; preds = %29
  %36 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  %37 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  %40 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dname_lab_cmp(i32* %38, i32 %41, i32* %43, i32 %45, i32* %13)
  br label %47

47:                                               ; preds = %57, %35
  %48 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  %49 = icmp ne %struct.val_neg_data* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  %52 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %61

57:                                               ; preds = %50
  %58 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  %59 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %58, i32 0, i32 2
  %60 = load %struct.val_neg_data*, %struct.val_neg_data** %59, align 8
  store %struct.val_neg_data* %60, %struct.val_neg_data** %11, align 8
  br label %47

61:                                               ; preds = %56, %47
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.val_neg_data*, %struct.val_neg_data** %11, align 8
  store %struct.val_neg_data* %63, %struct.val_neg_data** %5, align 8
  br label %64

64:                                               ; preds = %62, %34
  %65 = load %struct.val_neg_data*, %struct.val_neg_data** %5, align 8
  ret %struct.val_neg_data* %65
}

declare dso_local i64 @rbtree_find_less_equal(i32*, %struct.val_neg_data*, i32**) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
