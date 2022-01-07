; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_verify_dnskeys_with_ds_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_verify_dnskeys_with_ds_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.module_qstate = type { i32 }

@sec_status_bogus = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"attempt DS match algo %d keytag %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"DS match attempt failed\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"DS match digest ok, trying signature\00", align 1
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"no keys have a DS\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"DS hash mismatches key\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"keyset not secured by DNSKEY that matches DS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i8**, %struct.module_qstate*)* @verify_dnskeys_with_ds_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_dnskeys_with_ds_rr(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key* %3, i64 %4, i8** %5, %struct.module_qstate* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.module_qstate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.val_env* %1, %struct.val_env** %10, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %11, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8** %5, i8*** %14, align 8
  store %struct.module_qstate* %6, %struct.module_qstate** %15, align 8
  %21 = load i32, i32* @sec_status_bogus, align 4
  store i32 %21, i32* %16, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %23 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %22)
  store i64 %23, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %24

24:                                               ; preds = %86, %7
  %25 = load i64, i64* %17, align 8
  %26 = load i64, i64* %18, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %24
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %29, i64 %30)
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i64 @dnskey_get_algo(%struct.ub_packed_rrset_key* %32, i64 %33)
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %37, i64 %38)
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @ds_get_keytag(%struct.ub_packed_rrset_key* %40, i64 %41)
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28
  br label %86

45:                                               ; preds = %36
  %46 = load i64, i64* %19, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %19, align 8
  %48 = load i32, i32* @VERB_ALGO, align 4
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %49, i64 %50)
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i64 @ds_get_keytag(%struct.ub_packed_rrset_key* %52, i64 %53)
  %55 = call i32 (i32, i8*, ...) @verbose(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %54)
  %56 = load %struct.module_env*, %struct.module_env** %9, align 8
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @ds_digest_match_dnskey(%struct.module_env* %56, %struct.ub_packed_rrset_key* %57, i64 %58, %struct.ub_packed_rrset_key* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %45
  %64 = load i32, i32* @VERB_ALGO, align 4
  %65 = call i32 (i32, i8*, ...) @verbose(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %86

66:                                               ; preds = %45
  %67 = load i64, i64* %20, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %20, align 8
  %69 = load i32, i32* @VERB_ALGO, align 4
  %70 = call i32 (i32, i8*, ...) @verbose(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.module_env*, %struct.module_env** %9, align 8
  %72 = load %struct.val_env*, %struct.val_env** %10, align 8
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i8**, i8*** %14, align 8
  %77 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %78 = load %struct.module_qstate*, %struct.module_qstate** %15, align 8
  %79 = call i32 @dnskey_verify_rrset(%struct.module_env* %71, %struct.val_env* %72, %struct.ub_packed_rrset_key* %73, %struct.ub_packed_rrset_key* %74, i64 %75, i8** %76, i32 %77, %struct.module_qstate* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @sec_status_secure, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %8, align 4
  br label %114

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %63, %44
  %87 = load i64, i64* %17, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %17, align 8
  br label %24

89:                                               ; preds = %24
  %90 = load i64, i64* %19, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.module_env*, %struct.module_env** %9, align 8
  %94 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %94, i64 %95)
  %97 = load i8**, i8*** %14, align 8
  %98 = call i32 @algo_needs_reason(%struct.module_env* %93, i64 %96, i8** %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %112

99:                                               ; preds = %89
  %100 = load i64, i64* %20, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8**, i8*** %14, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %103, align 8
  br label %111

104:                                              ; preds = %99
  %105 = load i8**, i8*** %14, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load i8**, i8*** %14, align 8
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8** %109, align 8
  br label %110

110:                                              ; preds = %108, %104
  br label %111

111:                                              ; preds = %110, %102
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32, i32* @sec_status_bogus, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %83
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i64 @ds_get_key_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @ds_get_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @ds_digest_match_dnskey(%struct.module_env*, %struct.ub_packed_rrset_key*, i64, %struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_verify_rrset(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i8**, i32, %struct.module_qstate*) #1

declare dso_local i32 @algo_needs_reason(%struct.module_env*, i64, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
