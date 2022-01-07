; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_verify_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_verify_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.key_entry_key = type { i32 }
%struct.module_qstate = type { i32 }
%struct.packed_rrset_data = type { i64 }

@sec_status_secure = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.key_entry_key*, i8**, %struct.module_qstate*)* @nsec_verify_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec_verify_rrset(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.key_entry_key* %3, i8** %4, %struct.module_qstate* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca %struct.val_env*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca %struct.key_entry_key*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.module_qstate*, align 8
  %14 = alloca %struct.packed_rrset_data*, align 8
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store %struct.val_env* %1, %struct.val_env** %9, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %10, align 8
  store %struct.key_entry_key* %3, %struct.key_entry_key** %11, align 8
  store i8** %4, i8*** %12, align 8
  store %struct.module_qstate* %5, %struct.module_qstate** %13, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %19, %struct.packed_rrset_data** %14, align 8
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @sec_status_secure, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %69

26:                                               ; preds = %6
  %27 = load %struct.module_env*, %struct.module_env** %8, align 8
  %28 = getelementptr inbounds %struct.module_env, %struct.module_env* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %31 = load %struct.module_env*, %struct.module_env** %8, align 8
  %32 = getelementptr inbounds %struct.module_env, %struct.module_env* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rrset_check_sec_status(i32 %29, %struct.ub_packed_rrset_key* %30, i32 %34)
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @sec_status_secure, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %69

42:                                               ; preds = %26
  %43 = load %struct.module_env*, %struct.module_env** %8, align 8
  %44 = load %struct.val_env*, %struct.val_env** %9, align 8
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %46 = load %struct.key_entry_key*, %struct.key_entry_key** %11, align 8
  %47 = load i8**, i8*** %12, align 8
  %48 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %49 = load %struct.module_qstate*, %struct.module_qstate** %13, align 8
  %50 = call i64 @val_verify_rrset_entry(%struct.module_env* %43, %struct.val_env* %44, %struct.ub_packed_rrset_key* %45, %struct.key_entry_key* %46, i8** %47, i32 %48, %struct.module_qstate* %49)
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @sec_status_secure, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %42
  %59 = load %struct.module_env*, %struct.module_env** %8, align 8
  %60 = getelementptr inbounds %struct.module_env, %struct.module_env* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %63 = load %struct.module_env*, %struct.module_env** %8, align 8
  %64 = getelementptr inbounds %struct.module_env, %struct.module_env* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rrset_update_sec_status(i32 %61, %struct.ub_packed_rrset_key* %62, i32 %66)
  store i32 1, i32* %7, align 4
  br label %69

68:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %58, %41, %25
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @rrset_check_sec_status(i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i64 @val_verify_rrset_entry(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.key_entry_key*, i8**, i32, %struct.module_qstate*) #1

declare dso_local i32 @rrset_update_sec_status(i32, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
