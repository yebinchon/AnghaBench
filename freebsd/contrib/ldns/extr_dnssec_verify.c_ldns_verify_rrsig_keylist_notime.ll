; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_keylist_notime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_verify_rrsig_keylist_notime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_verify_rrsig_keylist_notime(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %20, i64* %5, align 8
  br label %120

21:                                               ; preds = %4
  %22 = call i32* (...) @ldns_rr_list_new()
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %26, i64* %5, align 8
  br label %120

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @ldns_rr_list_clone(i32* %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %31 = call i32* @ldns_buffer_new(i32 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %33 = call i32* @ldns_buffer_new(i32 %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @ldns_prepare_for_verify(i32* %34, i32* %35, i32* %36, i32* %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @LDNS_STATUS_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @ldns_buffer_free(i32* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @ldns_buffer_free(i32* %45)
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @ldns_rr_list_deep_free(i32* %47)
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @ldns_rr_list_free(i32* %49)
  %51 = load i64, i64* %13, align 8
  store i64 %51, i64* %5, align 8
  br label %120

52:                                               ; preds = %27
  %53 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY, align 8
  store i64 %53, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %96, %52
  %55 = load i64, i64* %12, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @ldns_rr_list_rr_count(i32* %56)
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @ldns_rr_list_rr(i32* %63, i64 %64)
  %66 = call i64 @ldns_verify_test_sig_key(i32* %60, i32* %61, i32* %62, i32 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @LDNS_STATUS_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %59
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @ldns_rr_list_rr(i32* %72, i64 %73)
  %75 = call i32 @ldns_rr_list_push_rr(i32* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @ldns_buffer_free(i32* %78)
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @ldns_buffer_free(i32* %80)
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @ldns_rr_list_deep_free(i32* %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @ldns_rr_list_free(i32* %84)
  %86 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %86, i64* %5, align 8
  br label %120

87:                                               ; preds = %70
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %13, align 8
  br label %89

89:                                               ; preds = %87, %59
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %13, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %54

99:                                               ; preds = %54
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @ldns_rr_list_deep_free(i32* %100)
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @ldns_buffer_free(i32* %102)
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ldns_buffer_free(i32* %104)
  %106 = load i32*, i32** %16, align 8
  %107 = call i64 @ldns_rr_list_rr_count(i32* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @ldns_rr_list_free(i32* %110)
  %112 = load i64, i64* %13, align 8
  store i64 %112, i64* %5, align 8
  br label %120

113:                                              ; preds = %99
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @ldns_rr_list_cat(i32* %114, i32* %115)
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @ldns_rr_list_free(i32* %117)
  %119 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %113, %109, %77, %42, %25, %19
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i32* @ldns_rr_list_clone(i32*) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_prepare_for_verify(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_rr_list_free(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_verify_test_sig_key(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_list_cat(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
