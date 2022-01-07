; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { %struct.val_anchors*, %struct.val_anchors*, i32 }

@anchors_delfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @anchors_delete(%struct.val_anchors* %0) #0 {
  %2 = alloca %struct.val_anchors*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %2, align 8
  %3 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %4 = icmp ne %struct.val_anchors* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %41

6:                                                ; preds = %1
  %7 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %8 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %7, i32 0, i32 2
  %9 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %10 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %9, i32 0, i32 0
  %11 = load %struct.val_anchors*, %struct.val_anchors** %10, align 8
  %12 = call i32 @lock_unprotect(i32* %8, %struct.val_anchors* %11)
  %13 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %14 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %13, i32 0, i32 2
  %15 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %16 = call i32 @lock_unprotect(i32* %14, %struct.val_anchors* %15)
  %17 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %18 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %17, i32 0, i32 2
  %19 = call i32 @lock_basic_destroy(i32* %18)
  %20 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %21 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %20, i32 0, i32 1
  %22 = load %struct.val_anchors*, %struct.val_anchors** %21, align 8
  %23 = icmp ne %struct.val_anchors* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %26 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %25, i32 0, i32 1
  %27 = load %struct.val_anchors*, %struct.val_anchors** %26, align 8
  %28 = load i32, i32* @anchors_delfunc, align 4
  %29 = call i32 @traverse_postorder(%struct.val_anchors* %27, i32 %28, i32* null)
  br label %30

30:                                               ; preds = %24, %6
  %31 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %32 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %31, i32 0, i32 1
  %33 = load %struct.val_anchors*, %struct.val_anchors** %32, align 8
  %34 = call i32 @free(%struct.val_anchors* %33)
  %35 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %36 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %35, i32 0, i32 0
  %37 = load %struct.val_anchors*, %struct.val_anchors** %36, align 8
  %38 = call i32 @autr_global_delete(%struct.val_anchors* %37)
  %39 = load %struct.val_anchors*, %struct.val_anchors** %2, align 8
  %40 = call i32 @free(%struct.val_anchors* %39)
  br label %41

41:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @lock_unprotect(i32*, %struct.val_anchors*) #1

declare dso_local i32 @lock_basic_destroy(i32*) #1

declare dso_local i32 @traverse_postorder(%struct.val_anchors*, i32, i32*) #1

declare dso_local i32 @free(%struct.val_anchors*) #1

declare dso_local i32 @autr_global_delete(%struct.val_anchors*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
