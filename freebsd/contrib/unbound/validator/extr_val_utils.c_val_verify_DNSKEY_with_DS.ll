; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_DNSKEY_with_DS.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_verify_DNSKEY_with_DS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.module_qstate = type { i32 }
%struct.algo_needs = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DNSKEY RRset did not match DS RRset by name\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DS matched DNSKEY.\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"No usable DS records were found -- treating as insecure.\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to match any usable DS to a DNSKEY.\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"missing verification of DNSKEY signature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_verify_DNSKEY_with_DS(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key* %3, i32* %4, i8** %5, %struct.module_qstate* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.module_qstate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.algo_needs, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.val_env* %1, %struct.val_env** %10, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %11, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8** %5, i8*** %14, align 8
  store %struct.module_qstate* %6, %struct.module_qstate** %15, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %24 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %7
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %34 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @query_dname_compare(i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32, %7
  %44 = load i32, i32* @VERB_QUERY, align 4
  %45 = call i32 @verbose(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %46 = load i8**, i8*** %14, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @sec_status_bogus, align 4
  store i32 %47, i32* %8, align 4
  br label %153

48:                                               ; preds = %32
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %53 = call i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key* %52)
  store i32 %53, i32* %17, align 4
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @algo_needs_init_ds(%struct.algo_needs* %19, %struct.ub_packed_rrset_key* %54, i32 %55, i32* %56)
  br label %59

58:                                               ; preds = %48
  store i32 -1, i32* %17, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %61 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %60)
  store i64 %61, i64* %21, align 8
  store i64 0, i64* %20, align 8
  br label %62

62:                                               ; preds = %128, %59
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %131

66:                                               ; preds = %62
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %68 = load i64, i64* %20, align 8
  %69 = call i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key* %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key* %72, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32*, i32** %13, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %81 = load i64, i64* %20, align 8
  %82 = call i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %80, i64 %81)
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %71, %66
  br label %128

86:                                               ; preds = %79, %76
  store i32 1, i32* %16, align 4
  %87 = load %struct.module_env*, %struct.module_env** %9, align 8
  %88 = load %struct.val_env*, %struct.val_env** %10, align 8
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %91 = load i64, i64* %20, align 8
  %92 = load i8**, i8*** %14, align 8
  %93 = load %struct.module_qstate*, %struct.module_qstate** %15, align 8
  %94 = call i32 @verify_dnskeys_with_ds_rr(%struct.module_env* %87, %struct.val_env* %88, %struct.ub_packed_rrset_key* %89, %struct.ub_packed_rrset_key* %90, i64 %91, i8** %92, %struct.module_qstate* %93)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* @sec_status_secure, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %86
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %103 = load i64, i64* %20, align 8
  %104 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %102, i64 %103)
  %105 = trunc i64 %104 to i32
  %106 = call i64 @algo_needs_set_secure(%struct.algo_needs* %19, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101, %98
  %109 = load i32, i32* @VERB_ALGO, align 4
  %110 = call i32 @verbose(i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @sec_status_secure, align 4
  store i32 %111, i32* %8, align 4
  br label %153

112:                                              ; preds = %101
  br label %127

113:                                              ; preds = %86
  %114 = load i32*, i32** %13, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* @sec_status_bogus, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %122 = load i64, i64* %20, align 8
  %123 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %121, i64 %122)
  %124 = trunc i64 %123 to i32
  %125 = call i32 @algo_needs_set_bogus(%struct.algo_needs* %19, i32 %124)
  br label %126

126:                                              ; preds = %120, %116, %113
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i64, i64* %20, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %20, align 8
  br label %62

131:                                              ; preds = %62
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @VERB_ALGO, align 4
  %136 = call i32 @verbose(i32 %135, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @sec_status_insecure, align 4
  store i32 %137, i32* %8, align 4
  br label %153

138:                                              ; preds = %131
  %139 = load i32, i32* @VERB_QUERY, align 4
  %140 = call i32 @verbose(i32 %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32*, i32** %13, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = call i32 @algo_needs_missing(%struct.algo_needs* %19)
  store i32 %144, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.module_env*, %struct.module_env** %9, align 8
  %148 = load i32, i32* %18, align 4
  %149 = load i8**, i8*** %14, align 8
  %150 = call i32 @algo_needs_reason(%struct.module_env* %147, i32 %148, i8** %149, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %143, %138
  %152 = load i32, i32* @sec_status_bogus, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %151, %134, %108, %43
  %154 = load i32, i32* %8, align 4
  ret i32 %154
}

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @algo_needs_init_ds(%struct.algo_needs*, %struct.ub_packed_rrset_key*, i32, i32*) #1

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @verify_dnskeys_with_ds_rr(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i8**, %struct.module_qstate*) #1

declare dso_local i64 @algo_needs_set_secure(%struct.algo_needs*, i32) #1

declare dso_local i64 @ds_get_key_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @algo_needs_set_bogus(%struct.algo_needs*, i32) #1

declare dso_local i32 @algo_needs_missing(%struct.algo_needs*) #1

declare dso_local i32 @algo_needs_reason(%struct.module_env*, i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
