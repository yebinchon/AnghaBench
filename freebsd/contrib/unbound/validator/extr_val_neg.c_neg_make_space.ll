; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_make_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_make_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.val_neg_cache*, i64)* @neg_make_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neg_make_space(%struct.val_neg_cache* %0, i64 %1) #0 {
  %3 = alloca %struct.val_neg_cache*, align 8
  %4 = alloca i64, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %22, %2
  %6 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %7 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %12 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %15 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  %19 = icmp ult i64 %13, %18
  br label %20

20:                                               ; preds = %10, %5
  %21 = phi i1 [ false, %5 ], [ %19, %10 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %24 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %25 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @neg_delete_data(%struct.val_neg_cache* %23, i64 %26)
  br label %5

28:                                               ; preds = %20
  ret void
}

declare dso_local i32 @neg_delete_data(%struct.val_neg_cache*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
