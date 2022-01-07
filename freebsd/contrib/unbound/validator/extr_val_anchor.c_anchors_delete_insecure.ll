; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_delete_insecure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_delete_insecure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32, i32 }
%struct.trust_anchor = type { %struct.TYPE_3__, i32, i64, i64, i64, i64, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { %struct.trust_anchor* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @anchors_delete_insecure(%struct.val_anchors* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.val_anchors*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.trust_anchor, align 8
  %8 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.trust_anchor* %7, %struct.trust_anchor** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %7, i32 0, i32 9
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %7, i32 0, i32 7
  %15 = call i32 @dname_count_size_labels(i32* %13, i32* %14)
  %16 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %7, i32 0, i32 8
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %7, i32 0, i32 6
  store i32 %17, i32* %18, align 8
  %19 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %20 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %19, i32 0, i32 0
  %21 = call i32 @lock_basic_lock(i32* %20)
  %22 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %23 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @rbtree_search(i32 %24, %struct.trust_anchor* %7)
  %26 = inttoptr i64 %25 to %struct.trust_anchor*
  store %struct.trust_anchor* %26, %struct.trust_anchor** %8, align 8
  %27 = icmp ne %struct.trust_anchor* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %30 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %29, i32 0, i32 0
  %31 = call i32 @lock_basic_unlock(i32* %30)
  br label %80

32:                                               ; preds = %3
  %33 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %34 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %33, i32 0, i32 1
  %35 = call i32 @lock_basic_lock(i32* %34)
  %36 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %37 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %32
  %41 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %42 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %47 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %52 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %45, %40, %32
  %56 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %57 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %56, i32 0, i32 0
  %58 = call i32 @lock_basic_unlock(i32* %57)
  %59 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %60 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %59, i32 0, i32 1
  %61 = call i32 @lock_basic_unlock(i32* %60)
  br label %80

62:                                               ; preds = %50
  %63 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %64 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %67 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %66, i32 0, i32 0
  %68 = call i32 @rbtree_delete(i32 %65, %struct.TYPE_3__* %67)
  %69 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %70 = call i32 @anchors_init_parents_locked(%struct.val_anchors* %69)
  %71 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %72 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %71, i32 0, i32 0
  %73 = call i32 @lock_basic_unlock(i32* %72)
  %74 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %75 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %74, i32 0, i32 1
  %76 = call i32 @lock_basic_unlock(i32* %75)
  %77 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  %78 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %77, i32 0, i32 0
  %79 = call i32 @anchors_delfunc(%struct.TYPE_3__* %78, i32* null)
  br label %80

80:                                               ; preds = %62, %55, %28
  ret void
}

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_search(i32, %struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @rbtree_delete(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @anchors_init_parents_locked(%struct.val_anchors*) #1

declare dso_local i32 @anchors_delfunc(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
