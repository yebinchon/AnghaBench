; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskeyset_verify_rrset_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskeyset_verify_rrset_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.rbtree_type = type { i32 }
%struct.module_qstate = type { i32 }

@sec_status_bogus = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"verify sig %d %d\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"verify sig: unknown algorithm\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"signatures from unknown keys\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"verify: could not find appropriate key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnskeyset_verify_rrset_sig(%struct.module_env* %0, %struct.val_env* %1, i32 %2, %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key* %4, i64 %5, %struct.rbtree_type** %6, i8** %7, i32 %8, %struct.module_qstate* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.module_env*, align 8
  %13 = alloca %struct.val_env*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ub_packed_rrset_key*, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rbtree_type**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.module_qstate*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %12, align 8
  store %struct.val_env* %1, %struct.val_env** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %15, align 8
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %16, align 8
  store i64 %5, i64* %17, align 8
  store %struct.rbtree_type** %6, %struct.rbtree_type*** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.module_qstate* %9, %struct.module_qstate** %21, align 8
  %29 = load i32, i32* @sec_status_bogus, align 4
  store i32 %29, i32* %22, align 4
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i64 @rrset_get_sig_keytag(%struct.ub_packed_rrset_key* %30, i64 %31)
  store i64 %32, i64* %23, align 8
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %34 = load i64, i64* %17, align 8
  %35 = call i32 @rrset_get_sig_algo(%struct.ub_packed_rrset_key* %33, i64 %34)
  store i32 %35, i32* %24, align 4
  %36 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %37 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %36)
  store i64 %37, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %38 = load i32, i32* @VERB_ALGO, align 4
  %39 = load i64, i64* %23, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %24, align 4
  %42 = call i32 (i32, i8*, ...) @verbose(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %24, align 4
  %44 = call i32 @dnskey_algo_id_is_supported(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %10
  %47 = load i32, i32* @VERB_QUERY, align 4
  %48 = call i32 (i32, i8*, ...) @verbose(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @sec_status_insecure, align 4
  store i32 %49, i32* %11, align 4
  br label %107

50:                                               ; preds = %10
  store i64 0, i64* %25, align 8
  br label %51

51:                                               ; preds = %94, %50
  %52 = load i64, i64* %25, align 8
  %53 = load i64, i64* %26, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %97

55:                                               ; preds = %51
  %56 = load i32, i32* %24, align 4
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %58 = load i64, i64* %25, align 8
  %59 = call i32 @dnskey_get_algo(%struct.ub_packed_rrset_key* %57, i64 %58)
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %23, align 8
  %63 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %64 = load i64, i64* %25, align 8
  %65 = call i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %63, i64 %64)
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55
  br label %94

68:                                               ; preds = %61
  %69 = load i64, i64* %27, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %27, align 8
  %71 = load %struct.module_env*, %struct.module_env** %12, align 8
  %72 = getelementptr inbounds %struct.module_env, %struct.module_env* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.module_env*, %struct.module_env** %12, align 8
  %75 = getelementptr inbounds %struct.module_env, %struct.module_env* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.val_env*, %struct.val_env** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %15, align 8
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %81 = load i64, i64* %25, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load %struct.rbtree_type**, %struct.rbtree_type*** %18, align 8
  %84 = load i8**, i8*** %19, align 8
  %85 = load i32, i32* %20, align 4
  %86 = load %struct.module_qstate*, %struct.module_qstate** %21, align 8
  %87 = call i32 @dnskey_verify_rrset_sig(i32 %73, i32 %76, %struct.val_env* %77, i32 %78, %struct.ub_packed_rrset_key* %79, %struct.ub_packed_rrset_key* %80, i64 %81, i64 %82, %struct.rbtree_type** %83, i32* %28, i8** %84, i32 %85, %struct.module_qstate* %86)
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* @sec_status_secure, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %68
  %92 = load i32, i32* %22, align 4
  store i32 %92, i32* %11, align 4
  br label %107

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %67
  %95 = load i64, i64* %25, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %25, align 8
  br label %51

97:                                               ; preds = %51
  %98 = load i64, i64* %27, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i8**, i8*** %19, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %101, align 8
  %102 = load i32, i32* @VERB_QUERY, align 4
  %103 = call i32 (i32, i8*, ...) @verbose(i32 %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @sec_status_bogus, align 4
  store i32 %104, i32* %11, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @sec_status_bogus, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %105, %100, %91, %46
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i64 @rrset_get_sig_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @rrset_get_sig_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @dnskey_algo_id_is_supported(i32) #1

declare dso_local i32 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_verify_rrset_sig(i32, i32, %struct.val_env*, i32, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i64, %struct.rbtree_type**, i32*, i8**, i32, %struct.module_qstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
