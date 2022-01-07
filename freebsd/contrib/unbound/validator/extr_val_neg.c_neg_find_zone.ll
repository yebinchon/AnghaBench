; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_find_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_find_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i64, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { %struct.val_neg_zone* }
%struct.val_neg_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.val_neg_zone* @neg_find_zone(%struct.val_neg_cache* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.val_neg_cache*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.val_neg_zone, align 8
  %10 = alloca %struct.val_neg_zone*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.val_neg_zone* %9, %struct.val_neg_zone** %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 3
  store i32* %13, i32** %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @dname_count_labels(i32* %18)
  %20 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.val_neg_cache*, %struct.val_neg_cache** %5, align 8
  %24 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.val_neg_zone*, %struct.val_neg_zone** %26, align 8
  %28 = call i64 @rbtree_search(i32* %24, %struct.val_neg_zone* %27)
  %29 = inttoptr i64 %28 to %struct.val_neg_zone*
  store %struct.val_neg_zone* %29, %struct.val_neg_zone** %10, align 8
  %30 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  ret %struct.val_neg_zone* %30
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i64 @rbtree_search(i32*, %struct.val_neg_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
