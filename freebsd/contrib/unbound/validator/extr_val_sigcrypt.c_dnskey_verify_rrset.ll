; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskey_verify_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskey_verify_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32, i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.module_qstate = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"rrset failed to verify due to a lack of signatures\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no signatures\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"rrset failed to verify: all signatures are bogus\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"signature missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnskey_verify_rrset(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key* %3, i64 %4, i8** %5, i32 %6, %struct.module_qstate* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.val_env*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.val_env* %1, %struct.val_env** %11, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %12, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  store i64 0, i64* %21, align 8
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %26, i64 %27)
  store i64 %28, i64* %24, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @dnskey_get_algo(%struct.ub_packed_rrset_key* %29, i64 %30)
  store i32 %31, i32* %25, align 4
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %33 = call i64 @rrset_get_sigcount(%struct.ub_packed_rrset_key* %32)
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %20, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %8
  %37 = load i32, i32* @VERB_QUERY, align 4
  %38 = call i32 @verbose(i32 %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %39 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @sec_status_bogus, align 4
  store i32 %40, i32* %9, align 4
  br label %99

41:                                               ; preds = %8
  store i64 0, i64* %19, align 8
  br label %42

42:                                               ; preds = %87, %41
  %43 = load i64, i64* %19, align 8
  %44 = load i64, i64* %20, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %42
  %47 = load i32, i32* %25, align 4
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %49 = load i64, i64* %19, align 8
  %50 = call i32 @rrset_get_sig_algo(%struct.ub_packed_rrset_key* %48, i64 %49)
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %24, align 8
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %55 = load i64, i64* %19, align 8
  %56 = call i64 @rrset_get_sig_keytag(%struct.ub_packed_rrset_key* %54, i64 %55)
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  br label %87

59:                                               ; preds = %52
  store i32 0, i32* %23, align 4
  %60 = load %struct.module_env*, %struct.module_env** %10, align 8
  %61 = getelementptr inbounds %struct.module_env, %struct.module_env* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.module_env*, %struct.module_env** %10, align 8
  %64 = getelementptr inbounds %struct.module_env, %struct.module_env* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.val_env*, %struct.val_env** %11, align 8
  %67 = load %struct.module_env*, %struct.module_env** %10, align 8
  %68 = getelementptr inbounds %struct.module_env, %struct.module_env* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i8**, i8*** %15, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %78 = call i32 @dnskey_verify_rrset_sig(i32 %62, i32 %65, %struct.val_env* %66, i32 %70, %struct.ub_packed_rrset_key* %71, %struct.ub_packed_rrset_key* %72, i64 %73, i64 %74, i32** %22, i32* %23, i8** %75, i32 %76, %struct.module_qstate* %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @sec_status_secure, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %59
  %83 = load i32, i32* %18, align 4
  store i32 %83, i32* %9, align 4
  br label %99

84:                                               ; preds = %59
  %85 = load i64, i64* %21, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %21, align 8
  br label %87

87:                                               ; preds = %84, %58
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %19, align 8
  br label %42

90:                                               ; preds = %42
  %91 = load i32, i32* @VERB_ALGO, align 4
  %92 = call i32 @verbose(i32 %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i64, i64* %21, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %96, align 8
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* @sec_status_bogus, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %82, %36
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @rrset_get_sigcount(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @rrset_get_sig_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @rrset_get_sig_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @dnskey_verify_rrset_sig(i32, i32, %struct.val_env*, i32, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, i64, i64, i32**, i32*, i8**, i32, %struct.module_qstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
