; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_params_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_params_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i32, i64, i64, i32 }
%struct.ub_packed_rrset_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_neg_zone*, %struct.ub_packed_rrset_key*)* @neg_params_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neg_params_ok(%struct.val_neg_zone* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.val_neg_zone*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %11 = call i32 @nsec3_get_params(%struct.ub_packed_rrset_key* %10, i32 0, i32* %6, i64* %9, i32** %7, i64* %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %17 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %23 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %29 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %34 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @memcmp(i32 %35, i32* %36, i64 %37)
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %32, %26, %20, %14
  %41 = phi i1 [ false, %26 ], [ false, %20 ], [ false, %14 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @nsec3_get_params(%struct.ub_packed_rrset_key*, i32, i32*, i64*, i32**, i64*) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
