; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_salt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i32*, i64**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, i32, i64**, i64*)* @nsec3_get_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_get_salt(%struct.ub_packed_rrset_key* %0, i32 %1, i64** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64** %2, i64*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %12 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %15, %struct.packed_rrset_data** %10, align 8
  %16 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %17 = icmp ne %struct.packed_rrset_data* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br label %25

25:                                               ; preds = %18, %4
  %26 = phi i1 [ false, %4 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @log_assert(i32 %27)
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 7
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i64**, i64*** %8, align 8
  store i64* null, i64** %38, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 0, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %77

40:                                               ; preds = %25
  %41 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %42 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %41, i32 0, i32 1
  %43 = load i64**, i64*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64*, i64** %43, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 6
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add i64 7, %60
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %40
  %64 = load i64**, i64*** %8, align 8
  store i64* null, i64** %64, align 8
  %65 = load i64*, i64** %9, align 8
  store i64 0, i64* %65, align 8
  store i32 0, i32* %5, align 4
  br label %77

66:                                               ; preds = %40
  %67 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %68 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = getelementptr inbounds i64, i64* %74, i64 5
  %76 = load i64**, i64*** %8, align 8
  store i64* %75, i64** %76, align 8
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %66, %63, %37
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
