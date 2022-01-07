; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_rrset_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_rrset_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.ub_packed_rrset_key* }
%struct.TYPE_5__ = type { i32, i32, i64, i8*, i8* }
%struct.key_entry_key = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.module_qstate = type { i32 }
%struct.key_entry_data = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_verify_rrset_entry(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.key_entry_key* %3, i8** %4, i32 %5, %struct.module_qstate* %6) #0 {
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca %struct.val_env*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca %struct.key_entry_key*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.module_qstate*, align 8
  %15 = alloca %struct.ub_packed_rrset_key, align 8
  %16 = alloca %struct.key_entry_data*, align 8
  %17 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store %struct.val_env* %1, %struct.val_env** %9, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %10, align 8
  store %struct.key_entry_key* %3, %struct.key_entry_key** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.module_qstate* %6, %struct.module_qstate** %14, align 8
  %18 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %19 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.key_entry_data*
  store %struct.key_entry_data* %22, %struct.key_entry_data** %16, align 8
  %23 = load %struct.key_entry_data*, %struct.key_entry_data** %16, align 8
  %24 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %30 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @htons(i32 %31)
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %38 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %43 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %15, %struct.ub_packed_rrset_key** %48, align 8
  %49 = load %struct.key_entry_data*, %struct.key_entry_data** %16, align 8
  %50 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.module_env*, %struct.module_env** %8, align 8
  %55 = load %struct.val_env*, %struct.val_env** %9, align 8
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %57 = load %struct.key_entry_data*, %struct.key_entry_data** %16, align 8
  %58 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8**, i8*** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.module_qstate*, %struct.module_qstate** %14, align 8
  %63 = call i32 @val_verify_rrset(%struct.module_env* %54, %struct.val_env* %55, %struct.ub_packed_rrset_key* %56, %struct.ub_packed_rrset_key* %15, i32 %59, i8** %60, i32 %61, %struct.module_qstate* %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  ret i32 %64
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @val_verify_rrset(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i32, i8**, i32, %struct.module_qstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
