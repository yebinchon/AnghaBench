; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_closest_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_closest_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i32 }
%struct.val_neg_data = type { i64, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.val_neg_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_neg_zone*, i32*, i64, i32, %struct.val_neg_data**)* @neg_closest_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neg_closest_data(%struct.val_neg_zone* %0, i32* %1, i64 %2, i32 %3, %struct.val_neg_data** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.val_neg_zone*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.val_neg_data**, align 8
  %12 = alloca %struct.val_neg_data, align 8
  %13 = alloca i32*, align 8
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.val_neg_data** %4, %struct.val_neg_data*** %11, align 8
  %14 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %12, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.val_neg_data* %12, %struct.val_neg_data** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %12, i32 0, i32 2
  store i32* %16, i32** %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %12, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.val_neg_zone*, %struct.val_neg_zone** %7, align 8
  %23 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %22, i32 0, i32 0
  %24 = call i64 @rbtree_find_less_equal(i32* %23, %struct.val_neg_data* %12, i32** %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32*, i32** %13, align 8
  %28 = bitcast i32* %27 to %struct.val_neg_data*
  %29 = load %struct.val_neg_data**, %struct.val_neg_data*** %11, align 8
  store %struct.val_neg_data* %28, %struct.val_neg_data** %29, align 8
  store i32 1, i32* %6, align 4
  br label %34

30:                                               ; preds = %5
  %31 = load i32*, i32** %13, align 8
  %32 = bitcast i32* %31 to %struct.val_neg_data*
  %33 = load %struct.val_neg_data**, %struct.val_neg_data*** %11, align 8
  store %struct.val_neg_data* %32, %struct.val_neg_data** %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i64 @rbtree_find_less_equal(i32*, %struct.val_neg_data*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
