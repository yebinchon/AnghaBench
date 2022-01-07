; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_add_prepend_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_add_prepend_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32 }
%struct.iter_qstate = type { %struct.iter_prep_list*, %struct.iter_prep_list* }
%struct.iter_prep_list = type { %struct.iter_prep_list*, %struct.ub_packed_rrset_key* }
%struct.ub_packed_rrset_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, %struct.ub_packed_rrset_key*)* @iter_add_prepend_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_add_prepend_auth(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca %struct.iter_prep_list*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %7, align 8
  %9 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @regional_alloc(i32 %11, i32 16)
  %13 = inttoptr i64 %12 to %struct.iter_prep_list*
  store %struct.iter_prep_list* %13, %struct.iter_prep_list** %8, align 8
  %14 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %15 = icmp ne %struct.iter_prep_list* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %19 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %20 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %19, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %18, %struct.ub_packed_rrset_key** %20, align 8
  %21 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %22 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %21, i32 0, i32 0
  store %struct.iter_prep_list* null, %struct.iter_prep_list** %22, align 8
  %23 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %24 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %23, i32 0, i32 0
  %25 = load %struct.iter_prep_list*, %struct.iter_prep_list** %24, align 8
  %26 = icmp ne %struct.iter_prep_list* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %29 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %30 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %29, i32 0, i32 0
  %31 = load %struct.iter_prep_list*, %struct.iter_prep_list** %30, align 8
  %32 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %31, i32 0, i32 0
  store %struct.iter_prep_list* %28, %struct.iter_prep_list** %32, align 8
  br label %37

33:                                               ; preds = %17
  %34 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 1
  store %struct.iter_prep_list* %34, %struct.iter_prep_list** %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %39 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %40 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %39, i32 0, i32 0
  store %struct.iter_prep_list* %38, %struct.iter_prep_list** %40, align 8
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @regional_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
