; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_favorite_ds_algo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_favorite_ds_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key* %0) #0 {
  %2 = alloca %struct.ub_packed_rrset_key*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %2, align 8
  %7 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %8 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %7)
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %13
  br label %34

24:                                               ; preds = %18
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %25, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %24
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %9

37:                                               ; preds = %9
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
