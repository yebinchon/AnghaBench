; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32, i64, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.trust_anchor* }
%struct.val_anchors = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trust_anchor* @anchor_find(%struct.val_anchors* %0, i32* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca %struct.val_anchors*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.trust_anchor, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.trust_anchor* null, %struct.trust_anchor** %6, align 8
  br label %56

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.trust_anchor* %12, %struct.trust_anchor** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 4
  store i32* %20, i32** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.val_anchors*, %struct.val_anchors** %7, align 8
  %29 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %28, i32 0, i32 0
  %30 = call i32 @lock_basic_lock(i32* %29)
  %31 = load %struct.val_anchors*, %struct.val_anchors** %7, align 8
  %32 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_5__* @rbtree_search(i32 %33, %struct.trust_anchor* %12)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %13, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %17
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.trust_anchor*
  %42 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %41, i32 0, i32 2
  %43 = call i32 @lock_basic_lock(i32* %42)
  br label %44

44:                                               ; preds = %37, %17
  %45 = load %struct.val_anchors*, %struct.val_anchors** %7, align 8
  %46 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %45, i32 0, i32 0
  %47 = call i32 @lock_basic_unlock(i32* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store %struct.trust_anchor* null, %struct.trust_anchor** %6, align 8
  br label %56

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.trust_anchor*
  store %struct.trust_anchor* %55, %struct.trust_anchor** %6, align 8
  br label %56

56:                                               ; preds = %51, %50, %16
  %57 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  ret %struct.trust_anchor* %57
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @rbtree_search(i32, %struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
