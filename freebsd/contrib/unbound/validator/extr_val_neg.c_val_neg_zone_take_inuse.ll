; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_zone_take_inuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_zone_take_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i32, i32, %struct.val_neg_zone* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_neg_zone_take_inuse(%struct.val_neg_zone* %0) #0 {
  %2 = alloca %struct.val_neg_zone*, align 8
  %3 = alloca %struct.val_neg_zone*, align 8
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %2, align 8
  %4 = load %struct.val_neg_zone*, %struct.val_neg_zone** %2, align 8
  %5 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = load %struct.val_neg_zone*, %struct.val_neg_zone** %2, align 8
  %10 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.val_neg_zone*, %struct.val_neg_zone** %2, align 8
  store %struct.val_neg_zone* %11, %struct.val_neg_zone** %3, align 8
  br label %12

12:                                               ; preds = %20, %8
  %13 = load %struct.val_neg_zone*, %struct.val_neg_zone** %3, align 8
  %14 = icmp ne %struct.val_neg_zone* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.val_neg_zone*, %struct.val_neg_zone** %3, align 8
  %17 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load %struct.val_neg_zone*, %struct.val_neg_zone** %3, align 8
  %22 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %21, i32 0, i32 2
  %23 = load %struct.val_neg_zone*, %struct.val_neg_zone** %22, align 8
  store %struct.val_neg_zone* %23, %struct.val_neg_zone** %3, align 8
  br label %12

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
