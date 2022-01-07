; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_nextowner_b32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_nextowner_b32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nsec3_get_nextowner_b32(%struct.ub_packed_rrset_key* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @nsec3_get_nextowner(%struct.ub_packed_rrset_key* %14, i32 %15, i32** %10, i64* %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %36

19:                                               ; preds = %4
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = call i32 @dname_remove_label(i32** %11, i64* %13)
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @nsec3_hash_to_b32(i32* %29, i64 %30, i32* %31, i64 %32, i32* %33, i64 %34)
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %19, %18
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @nsec3_get_nextowner(%struct.ub_packed_rrset_key*, i32, i32**, i64*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i64 @nsec3_hash_to_b32(i32*, i64, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
