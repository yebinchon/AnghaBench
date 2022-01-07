; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_list_is_secure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_list_is_secure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.key_entry_key = type { i32 }
%struct.module_qstate = type { i32 }
%struct.packed_rrset_data = type { i64 }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NSEC3 did not verify\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.key_entry_key*, i8**, %struct.module_qstate*)* @list_is_secure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_is_secure(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key** %2, i64 %3, %struct.key_entry_key* %4, i8** %5, %struct.module_qstate* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.ub_packed_rrset_key**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.key_entry_key*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.module_qstate*, align 8
  %16 = alloca %struct.packed_rrset_data*, align 8
  %17 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.val_env* %1, %struct.val_env** %10, align 8
  store %struct.ub_packed_rrset_key** %2, %struct.ub_packed_rrset_key*** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %13, align 8
  store i8** %5, i8*** %14, align 8
  store %struct.module_qstate* %6, %struct.module_qstate** %15, align 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %103, %7
  %19 = load i64, i64* %17, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %18
  %23 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %24 = load i64, i64* %17, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, i64 %24
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %30, %struct.packed_rrset_data** %16, align 8
  %31 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %32 = load i64, i64* %17, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %31, i64 %32
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %33, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %103

42:                                               ; preds = %22
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @sec_status_secure, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %103

49:                                               ; preds = %42
  %50 = load %struct.module_env*, %struct.module_env** %9, align 8
  %51 = getelementptr inbounds %struct.module_env, %struct.module_env* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %53, i64 %54
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %55, align 8
  %57 = load %struct.module_env*, %struct.module_env** %9, align 8
  %58 = getelementptr inbounds %struct.module_env, %struct.module_env* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rrset_check_sec_status(i32 %52, %struct.ub_packed_rrset_key* %56, i32 %60)
  %62 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %63 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @sec_status_secure, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %103

68:                                               ; preds = %49
  %69 = load %struct.module_env*, %struct.module_env** %9, align 8
  %70 = load %struct.val_env*, %struct.val_env** %10, align 8
  %71 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %71, i64 %72
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %73, align 8
  %75 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %76 = load i8**, i8*** %14, align 8
  %77 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %78 = load %struct.module_qstate*, %struct.module_qstate** %15, align 8
  %79 = call i64 @val_verify_rrset_entry(%struct.module_env* %69, %struct.val_env* %70, %struct.ub_packed_rrset_key* %74, %struct.key_entry_key* %75, i8** %76, i32 %77, %struct.module_qstate* %78)
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %83 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @sec_status_secure, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load i32, i32* @VERB_ALGO, align 4
  %89 = call i32 @verbose(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %107

90:                                               ; preds = %68
  %91 = load %struct.module_env*, %struct.module_env** %9, align 8
  %92 = getelementptr inbounds %struct.module_env, %struct.module_env* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %94, i64 %95
  %97 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %96, align 8
  %98 = load %struct.module_env*, %struct.module_env** %9, align 8
  %99 = getelementptr inbounds %struct.module_env, %struct.module_env* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @rrset_update_sec_status(i32 %93, %struct.ub_packed_rrset_key* %97, i32 %101)
  br label %103

103:                                              ; preds = %90, %67, %48, %41
  %104 = load i64, i64* %17, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %17, align 8
  br label %18

106:                                              ; preds = %18
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %87
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @rrset_check_sec_status(i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i64 @val_verify_rrset_entry(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.key_entry_key*, i8**, i32, %struct.module_qstate*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @rrset_update_sec_status(i32, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
