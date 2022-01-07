; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_find_rrset_in_prepend_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_find_rrset_in_prepend_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_qstate = type { %struct.iter_prep_list* }
%struct.iter_prep_list = type { %struct.iter_prep_list*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.packed_rrset_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_qstate*, %struct.ub_packed_rrset_key*)* @iter_find_rrset_in_prepend_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_find_rrset_in_prepend_answer(%struct.iter_qstate* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_qstate*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca %struct.iter_prep_list*, align 8
  store %struct.iter_qstate* %0, %struct.iter_qstate** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  %7 = load %struct.iter_qstate*, %struct.iter_qstate** %4, align 8
  %8 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %7, i32 0, i32 0
  %9 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  store %struct.iter_prep_list* %9, %struct.iter_prep_list** %6, align 8
  br label %10

10:                                               ; preds = %36, %2
  %11 = load %struct.iter_prep_list*, %struct.iter_prep_list** %6, align 8
  %12 = icmp ne %struct.iter_prep_list* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.iter_prep_list*, %struct.iter_prep_list** %6, align 8
  %15 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %18 = call i64 @ub_rrset_compare(%struct.TYPE_6__* %16, %struct.ub_packed_rrset_key* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.iter_prep_list*, %struct.iter_prep_list** %6, align 8
  %22 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.packed_rrset_data*
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.packed_rrset_data*
  %33 = call i64 @rrsetdata_equal(%struct.packed_rrset_data* %27, %struct.packed_rrset_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %41

36:                                               ; preds = %20, %13
  %37 = load %struct.iter_prep_list*, %struct.iter_prep_list** %6, align 8
  %38 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %37, i32 0, i32 0
  %39 = load %struct.iter_prep_list*, %struct.iter_prep_list** %38, align 8
  store %struct.iter_prep_list* %39, %struct.iter_prep_list** %6, align 8
  br label %10

40:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ub_rrset_compare(%struct.TYPE_6__*, %struct.ub_packed_rrset_key*) #1

declare dso_local i64 @rrsetdata_equal(%struct.packed_rrset_data*, %struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
