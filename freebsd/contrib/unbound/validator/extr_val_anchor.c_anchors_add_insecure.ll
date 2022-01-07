; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_add_insecure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_add_insecure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32, i32 }
%struct.trust_anchor = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.trust_anchor* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anchors_add_insecure(%struct.val_anchors* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.val_anchors*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.trust_anchor, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.trust_anchor* %8, %struct.trust_anchor** %10, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 3
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 0
  %15 = call i32 @dname_count_size_labels(i32* %13, i32* %14)
  %16 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %20 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %19, i32 0, i32 0
  %21 = call i32 @lock_basic_lock(i32* %20)
  %22 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %23 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @rbtree_search(i32 %24, %struct.trust_anchor* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %29 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %28, i32 0, i32 0
  %30 = call i32 @lock_basic_unlock(i32* %29)
  store i32 1, i32* %4, align 4
  br label %52

31:                                               ; preds = %3
  %32 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @anchor_new_ta(%struct.val_anchors* %32, i32* %33, i32 %35, i32 %37, i32 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %44 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %43, i32 0, i32 0
  %45 = call i32 @lock_basic_unlock(i32* %44)
  store i32 0, i32* %4, align 4
  br label %52

46:                                               ; preds = %31
  %47 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %48 = call i32 @anchors_init_parents_locked(%struct.val_anchors* %47)
  %49 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %50 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %49, i32 0, i32 0
  %51 = call i32 @lock_basic_unlock(i32* %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %41, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_search(i32, %struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @anchor_new_ta(%struct.val_anchors*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @anchors_init_parents_locked(%struct.val_anchors*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
