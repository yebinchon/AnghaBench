; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_rrset_get_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_rrset_get_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64, i64*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_packed_rrset_key*, i64, i32**, i64*)* @rrset_get_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rrset_get_rdata(%struct.ub_packed_rrset_key* %0, i64 %1, i32** %2, i64* %3) #0 {
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %11 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %14, %struct.packed_rrset_data** %9, align 8
  %15 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %16 = icmp ne %struct.packed_rrset_data* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = icmp ult i64 %18, %25
  br label %27

27:                                               ; preds = %17, %4
  %28 = phi i1 [ false, %4 ], [ %26, %17 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @log_assert(i32 %29)
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32**, i32*** %7, align 8
  store i32* %36, i32** %37, align 8
  %38 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %39 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  ret void
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
