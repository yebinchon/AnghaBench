; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_get_num_anchors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_get_num_anchors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @autr_get_num_anchors(%struct.val_anchors* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.val_anchors*, align 8
  %4 = alloca i64, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %6 = icmp ne %struct.val_anchors* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %10 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %9, i32 0, i32 0
  %11 = call i32 @lock_basic_lock(i32* %10)
  %12 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %13 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %18 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %16, %8
  %24 = load %struct.val_anchors*, %struct.val_anchors** %3, align 8
  %25 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %24, i32 0, i32 0
  %26 = call i32 @lock_basic_unlock(i32* %25)
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %23, %7
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
