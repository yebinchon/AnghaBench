; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_lru_front.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_lru_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { %struct.val_neg_data*, %struct.val_neg_data* }
%struct.val_neg_data = type { %struct.val_neg_data*, %struct.val_neg_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.val_neg_cache*, %struct.val_neg_data*)* @neg_lru_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neg_lru_front(%struct.val_neg_cache* %0, %struct.val_neg_data* %1) #0 {
  %3 = alloca %struct.val_neg_cache*, align 8
  %4 = alloca %struct.val_neg_data*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %3, align 8
  store %struct.val_neg_data* %1, %struct.val_neg_data** %4, align 8
  %5 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %6 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %5, i32 0, i32 0
  store %struct.val_neg_data* null, %struct.val_neg_data** %6, align 8
  %7 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %8 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %7, i32 0, i32 0
  %9 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  %10 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %11 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %10, i32 0, i32 1
  store %struct.val_neg_data* %9, %struct.val_neg_data** %11, align 8
  %12 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %13 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %12, i32 0, i32 0
  %14 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  %15 = icmp ne %struct.val_neg_data* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %18 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %19 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %18, i32 0, i32 1
  store %struct.val_neg_data* %17, %struct.val_neg_data** %19, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %22 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %23 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %22, i32 0, i32 0
  %24 = load %struct.val_neg_data*, %struct.val_neg_data** %23, align 8
  %25 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %24, i32 0, i32 0
  store %struct.val_neg_data* %21, %struct.val_neg_data** %25, align 8
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %28 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %29 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %28, i32 0, i32 0
  store %struct.val_neg_data* %27, %struct.val_neg_data** %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
