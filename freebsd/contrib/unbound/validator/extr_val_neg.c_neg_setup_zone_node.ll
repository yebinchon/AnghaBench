; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_setup_zone_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_setup_zone_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.val_neg_zone* }

@val_neg_data_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_neg_zone* (i32*, i64, i32, i32)* @neg_setup_zone_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_neg_zone* @neg_setup_zone_node(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.val_neg_zone*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.val_neg_zone*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i64 @calloc(i32 1, i32 32)
  %12 = inttoptr i64 %11 to %struct.val_neg_zone*
  store %struct.val_neg_zone* %12, %struct.val_neg_zone** %10, align 8
  %13 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %14 = icmp ne %struct.val_neg_zone* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %5, align 8
  br label %47

16:                                               ; preds = %4
  %17 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %18 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %19 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.val_neg_zone* %17, %struct.val_neg_zone** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @memdup(i32* %21, i64 %22)
  %24 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %25 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %27 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %32 = call i32 @free(%struct.val_neg_zone* %31)
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %5, align 8
  br label %47

33:                                               ; preds = %16
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %36 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %39 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %42 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %44 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %43, i32 0, i32 2
  %45 = call i32 @rbtree_init(i32* %44, i32* @val_neg_data_compare)
  %46 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  store %struct.val_neg_zone* %46, %struct.val_neg_zone** %5, align 8
  br label %47

47:                                               ; preds = %33, %30, %15
  %48 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  ret %struct.val_neg_zone* %48
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.val_neg_zone*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
