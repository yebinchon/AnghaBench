; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, i32**, i64*)* @nsec_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec_get_next(%struct.ub_packed_rrset_key* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %10 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %13, %struct.packed_rrset_data** %8, align 8
  %14 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %15 = icmp ne %struct.packed_rrset_data* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %18 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %16, %3
  %29 = load i32**, i32*** %6, align 8
  store i32* null, i32** %29, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %4, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %33 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32**, i32*** %6, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %42 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 2
  %47 = call i64 @dname_valid(i32* %40, i32 %46)
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %31
  %53 = load i32**, i32*** %6, align 8
  store i32* null, i32** %53, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 0, i64* %54, align 8
  store i32 0, i32* %4, align 4
  br label %56

55:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @dname_valid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
