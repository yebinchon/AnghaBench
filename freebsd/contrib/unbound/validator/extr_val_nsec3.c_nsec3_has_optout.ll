; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_has_optout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_has_optout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i32*, i32**, i64 }

@NSEC3_OPTOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_has_optout(%struct.ub_packed_rrset_key* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %8 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %11, %struct.packed_rrset_data** %6, align 8
  %12 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %13 = icmp ne %struct.packed_rrset_data* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %17 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %15, %19
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i1 [ false, %2 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @log_assert(i32 %23)
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %46

34:                                               ; preds = %21
  %35 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %36 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NSEC3_OPTOUT, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %34, %33
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
