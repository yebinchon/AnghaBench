; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_key_matches_a_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_key_matches_a_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DS match attempt failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key*, i64, %struct.ub_packed_rrset_key*)* @key_matches_a_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_matches_a_ds(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key* %2, i64 %3, %struct.ub_packed_rrset_key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store %struct.val_env* %1, %struct.val_env** %8, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ub_packed_rrset_key* %4, %struct.ub_packed_rrset_key** %11, align 8
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %21, %struct.packed_rrset_data** %12, align 8
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %26 = call i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key* %25)
  store i32 %26, i32* %15, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %79, %5
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key* %42, i64 %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %36, %31
  br label %79

48:                                               ; preds = %41
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @ds_get_key_algo(%struct.ub_packed_rrset_key* %49, i64 %50)
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @dnskey_get_algo(%struct.ub_packed_rrset_key* %52, i64 %53)
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key* %57, i64 %58)
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @ds_get_keytag(%struct.ub_packed_rrset_key* %60, i64 %61)
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %48
  br label %79

65:                                               ; preds = %56
  %66 = load %struct.module_env*, %struct.module_env** %7, align 8
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @ds_digest_match_dnskey(%struct.module_env* %66, %struct.ub_packed_rrset_key* %67, i64 %68, %struct.ub_packed_rrset_key* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @VERB_ALGO, align 4
  %75 = call i32 @verbose(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %79

76:                                               ; preds = %65
  %77 = load i8*, i8** %16, align 8
  %78 = load %struct.val_env*, %struct.val_env** %8, align 8
  store i32 1, i32* %6, align 4
  br label %83

79:                                               ; preds = %73, %64, %47
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  br label %27

82:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @val_favorite_ds_algo(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @ds_digest_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_key_algo_is_supported(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_get_digest_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @ds_get_key_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dnskey_get_algo(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dnskey_calc_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @ds_get_keytag(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @ds_digest_match_dnskey(%struct.module_env*, %struct.ub_packed_rrset_key*, i64, %struct.ub_packed_rrset_key*, i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
