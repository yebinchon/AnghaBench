; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskeyset_verify_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskeyset_verify_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32* }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.module_qstate = type { i32 }
%struct.algo_needs = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"rrset failed to verify due to a lack of signatures\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no signatures\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"zone has no known algorithms\00", align 1
@sec_status_insecure = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"rrset failed to verify: no valid signatures for %d algorithms\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"rrset failed to verify: no valid signatures\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnskeyset_verify_rrset(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key* %3, i32* %4, i8** %5, i32 %6, %struct.module_qstate* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.val_env*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.algo_needs, align 4
  %23 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.val_env* %1, %struct.val_env** %11, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %12, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  store i32* null, i32** %21, align 8
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %25 = call i64 @rrset_get_sigcount(%struct.ub_packed_rrset_key* %24)
  store i64 %25, i64* %20, align 8
  %26 = load i64, i64* %20, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = load i32, i32* @VERB_QUERY, align 4
  %30 = call i32 (i32, i8*, ...) @verbose(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %31 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @sec_status_bogus, align 4
  store i32 %32, i32* %9, align 4
  br label %123

33:                                               ; preds = %8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @algo_needs_init_list(%struct.algo_needs* %22, i32* %37)
  %39 = call i64 @algo_needs_num_missing(%struct.algo_needs* %22)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @VERB_QUERY, align 4
  %43 = call i32 (i32, i8*, ...) @verbose(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @sec_status_insecure, align 4
  store i32 %45, i32* %9, align 4
  br label %123

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  store i64 0, i64* %19, align 8
  br label %48

48:                                               ; preds = %100, %47
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %20, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = load %struct.module_env*, %struct.module_env** %10, align 8
  %54 = load %struct.val_env*, %struct.val_env** %11, align 8
  %55 = load %struct.module_env*, %struct.module_env** %10, align 8
  %56 = getelementptr inbounds %struct.module_env, %struct.module_env* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i8**, i8*** %15, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %65 = call i32 @dnskeyset_verify_rrset_sig(%struct.module_env* %53, %struct.val_env* %54, i32 %58, %struct.ub_packed_rrset_key* %59, %struct.ub_packed_rrset_key* %60, i64 %61, i32** %21, i8** %62, i32 %63, %struct.module_qstate* %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* @sec_status_secure, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %52
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %9, align 4
  br label %123

74:                                               ; preds = %69
  %75 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %76 = load i64, i64* %19, align 8
  %77 = call i64 @rrset_get_sig_algo(%struct.ub_packed_rrset_key* %75, i64 %76)
  %78 = trunc i64 %77 to i32
  %79 = call i64 @algo_needs_set_secure(%struct.algo_needs* %22, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %18, align 4
  store i32 %82, i32* %9, align 4
  br label %123

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  br label %99

85:                                               ; preds = %52
  %86 = load i32*, i32** %14, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @sec_status_bogus, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %94 = load i64, i64* %19, align 8
  %95 = call i64 @rrset_get_sig_algo(%struct.ub_packed_rrset_key* %93, i64 %94)
  %96 = trunc i64 %95 to i32
  %97 = call i32 @algo_needs_set_bogus(%struct.algo_needs* %22, i32 %96)
  br label %98

98:                                               ; preds = %92, %88, %85
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %19, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %19, align 8
  br label %48

103:                                              ; preds = %48
  %104 = load i32*, i32** %14, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = call i32 @algo_needs_missing(%struct.algo_needs* %22)
  store i32 %107, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i32, i32* @VERB_ALGO, align 4
  %111 = call i64 @algo_needs_num_missing(%struct.algo_needs* %22)
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, ...) @verbose(i32 %110, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.module_env*, %struct.module_env** %10, align 8
  %115 = load i32, i32* %23, align 4
  %116 = load i8**, i8*** %15, align 8
  %117 = call i32 @algo_needs_reason(%struct.module_env* %114, i32 %115, i8** %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %121

118:                                              ; preds = %106, %103
  %119 = load i32, i32* @VERB_ALGO, align 4
  %120 = call i32 (i32, i8*, ...) @verbose(i32 %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %109
  %122 = load i32, i32* @sec_status_bogus, align 4
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %121, %81, %72, %41, %28
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i64 @rrset_get_sigcount(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @algo_needs_init_list(%struct.algo_needs*, i32*) #1

declare dso_local i64 @algo_needs_num_missing(%struct.algo_needs*) #1

declare dso_local i32 @dnskeyset_verify_rrset_sig(%struct.module_env*, %struct.val_env*, i32, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i32**, i8**, i32, %struct.module_qstate*) #1

declare dso_local i64 @algo_needs_set_secure(%struct.algo_needs*, i32) #1

declare dso_local i64 @rrset_get_sig_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @algo_needs_set_bogus(%struct.algo_needs*, i32) #1

declare dso_local i32 @algo_needs_missing(%struct.algo_needs*) #1

declare dso_local i32 @algo_needs_reason(%struct.module_env*, i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
