; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_ds_digest_match_dnskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_ds_digest_match_dnskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"DS fail: not supported, or DS RR format error\00", align 1
@fake_sha1 = common dso_local global i64 0, align 8
@LDNS_SHA1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"DS fail: DS RR algo and digest do not match each other\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DS fail: out of memory\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"DS fail: could not calc key digest\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"DS fail: digest is different\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ds_digest_match_dnskey(%struct.module_env* %0, %struct.ub_packed_rrset_key* %1, i64 %2, %struct.ub_packed_rrset_key* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i64 @ds_digest_size_algo(%struct.ub_packed_rrset_key* %16, i64 %17)
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @VERB_QUERY, align 4
  %23 = call i32 @verbose(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %80

24:                                               ; preds = %5
  %25 = load i64, i64* @fake_sha1, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %28, i64 %29)
  %31 = load i64, i64* @LDNS_SHA1, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %80

34:                                               ; preds = %27, %24
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @ds_get_sigdata(%struct.ub_packed_rrset_key* %35, i64 %36, i32** %12, i64* %13)
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %34
  %45 = load i32, i32* @VERB_QUERY, align 4
  %46 = call i32 @verbose(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %80

47:                                               ; preds = %40
  %48 = load %struct.module_env*, %struct.module_env** %7, align 8
  %49 = getelementptr inbounds %struct.module_env, %struct.module_env* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %15, align 8
  %52 = call i32* @regional_alloc(i32 %50, i64 %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @VERB_QUERY, align 4
  %57 = call i32 @verbose(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %80

58:                                               ; preds = %47
  %59 = load %struct.module_env*, %struct.module_env** %7, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @ds_create_dnskey_digest(%struct.module_env* %59, %struct.ub_packed_rrset_key* %60, i64 %61, %struct.ub_packed_rrset_key* %62, i64 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @VERB_QUERY, align 4
  %69 = call i32 @verbose(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %80

70:                                               ; preds = %58
  %71 = load i32*, i32** %14, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i64 @memcmp(i32* %71, i32* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @VERB_QUERY, align 4
  %78 = call i32 @verbose(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %80

79:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %76, %67, %55, %44, %33, %21
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @ds_digest_size_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_get_sigdata(%struct.ub_packed_rrset_key*, i64, i32**, i64*) #1

declare dso_local i32* @regional_alloc(i32, i64) #1

declare dso_local i32 @ds_create_dnskey_digest(%struct.module_env*, %struct.ub_packed_rrset_key*, i64, %struct.ub_packed_rrset_key*, i64, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
