; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { %struct.val_anchors*, i32, i32 }

@anchor_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.val_anchors* @anchors_create() #0 {
  %1 = alloca %struct.val_anchors*, align 8
  %2 = alloca %struct.val_anchors*, align 8
  %3 = call i64 @calloc(i32 1, i32 16)
  %4 = inttoptr i64 %3 to %struct.val_anchors*
  store %struct.val_anchors* %4, %struct.val_anchors** %2, align 8
  %5 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %6 = icmp ne %struct.val_anchors* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.val_anchors* null, %struct.val_anchors** %1, align 8
  br label %46

8:                                                ; preds = %0
  %9 = load i32, i32* @anchor_cmp, align 4
  %10 = call i32 @rbtree_create(i32 %9)
  %11 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %12 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %14 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %19 = call i32 @anchors_delete(%struct.val_anchors* %18)
  store %struct.val_anchors* null, %struct.val_anchors** %1, align 8
  br label %46

20:                                               ; preds = %8
  %21 = call %struct.val_anchors* (...) @autr_global_create()
  %22 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %23 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %22, i32 0, i32 0
  store %struct.val_anchors* %21, %struct.val_anchors** %23, align 8
  %24 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %25 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %24, i32 0, i32 0
  %26 = load %struct.val_anchors*, %struct.val_anchors** %25, align 8
  %27 = icmp ne %struct.val_anchors* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %30 = call i32 @anchors_delete(%struct.val_anchors* %29)
  store %struct.val_anchors* null, %struct.val_anchors** %1, align 8
  br label %46

31:                                               ; preds = %20
  %32 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %33 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %32, i32 0, i32 1
  %34 = call i32 @lock_basic_init(i32* %33)
  %35 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %36 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %35, i32 0, i32 1
  %37 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %38 = call i32 @lock_protect(i32* %36, %struct.val_anchors* %37, i32 16)
  %39 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %40 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %39, i32 0, i32 1
  %41 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %42 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %41, i32 0, i32 0
  %43 = load %struct.val_anchors*, %struct.val_anchors** %42, align 8
  %44 = call i32 @lock_protect(i32* %40, %struct.val_anchors* %43, i32 16)
  %45 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  store %struct.val_anchors* %45, %struct.val_anchors** %1, align 8
  br label %46

46:                                               ; preds = %31, %28, %17, %7
  %47 = load %struct.val_anchors*, %struct.val_anchors** %1, align 8
  ret %struct.val_anchors* %47
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @rbtree_create(i32) #1

declare dso_local i32 @anchors_delete(%struct.val_anchors*) #1

declare dso_local %struct.val_anchors* @autr_global_create(...) #1

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, %struct.val_anchors*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
