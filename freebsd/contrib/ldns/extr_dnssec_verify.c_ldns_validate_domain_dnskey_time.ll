; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_validate_domain_dnskey_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_validate_domain_dnskey_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_validate_domain_dnskey_time(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %23 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %24 = load i32, i32* @LDNS_RD, align 4
  %25 = call i32* @ldns_resolver_query(i32* %20, i32* %21, i32 %22, i32 %23, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %132

28:                                               ; preds = %4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %31 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %32 = call i32* @ldns_pkt_rr_list_by_type(i32* %29, i32 %30, i32 %31)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %35 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %36 = call i32* @ldns_pkt_rr_list_by_type(i32* %33, i32 %34, i32 %35)
  store i32* %36, i32** %18, align 8
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %122, %28
  %38 = load i64, i64* %12, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i64 @ldns_rr_list_rr_count(i32* %39)
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %125

42:                                               ; preds = %37
  %43 = load i32*, i32** %17, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32* @ldns_rr_list_rr(i32* %43, i64 %44)
  store i32* %45, i32** %11, align 8
  store i64 0, i64* %13, align 8
  br label %46

46:                                               ; preds = %118, %42
  %47 = load i64, i64* %13, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @ldns_rr_list_rr_count(i32* %48)
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %121

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32* @ldns_rr_list_rr(i32* %52, i64 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @ldns_rr_compare_ds(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %117

58:                                               ; preds = %51
  %59 = call i32* (...) @ldns_rr_list_new()
  store i32* %59, i32** %19, align 8
  store i64 0, i64* %15, align 8
  br label %60

60:                                               ; preds = %109, %58
  %61 = load i64, i64* %15, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = call i64 @ldns_rr_list_rr_count(i32* %62)
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %60
  %66 = load i32*, i32** %18, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i32* @ldns_rr_list_rr(i32* %66, i64 %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @ldns_rr_rrsig_keytag(i32* %69)
  %71 = call i64 @ldns_rdf2native_int16(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i64 @ldns_calc_keytag(i32* %72)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %65
  %76 = load i32*, i32** %17, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @ldns_verify_rrsig_time(i32* %76, i32* %77, i32* %78, i32 %79)
  %81 = load i64, i64* @LDNS_STATUS_OK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %75
  store i64 0, i64* %14, align 8
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i64, i64* %14, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = call i64 @ldns_rr_list_rr_count(i32* %86)
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32*, i32** %19, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32* @ldns_rr_list_rr(i32* %91, i64 %92)
  %94 = call i32 @ldns_rr_clone(i32* %93)
  %95 = call i32 @ldns_rr_list_push_rr(i32* %90, i32 %94)
  br label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %14, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %14, align 8
  br label %84

99:                                               ; preds = %84
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @ldns_rr_list_deep_free(i32* %100)
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @ldns_rr_list_deep_free(i32* %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @ldns_pkt_free(i32* %104)
  %106 = load i32*, i32** %19, align 8
  store i32* %106, i32** %5, align 8
  br label %135

107:                                              ; preds = %75
  br label %108

108:                                              ; preds = %107, %65
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %15, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %15, align 8
  br label %60

112:                                              ; preds = %60
  %113 = load i32*, i32** %19, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @ldns_rr_clone(i32* %114)
  %116 = call i32 @ldns_rr_list_push_rr(i32* %113, i32 %115)
  br label %117

117:                                              ; preds = %112, %51
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %13, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %13, align 8
  br label %46

121:                                              ; preds = %46
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %12, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %12, align 8
  br label %37

125:                                              ; preds = %37
  %126 = load i32*, i32** %17, align 8
  %127 = call i32 @ldns_rr_list_deep_free(i32* %126)
  %128 = load i32*, i32** %18, align 8
  %129 = call i32 @ldns_rr_list_deep_free(i32* %128)
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @ldns_pkt_free(i32* %130)
  br label %133

132:                                              ; preds = %4
  br label %133

133:                                              ; preds = %132, %125
  %134 = load i32*, i32** %19, align 8
  store i32* %134, i32** %5, align 8
  br label %135

135:                                              ; preds = %133, %99
  %136 = load i32*, i32** %5, align 8
  ret i32* %136
}

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i32, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_compare_ds(i32*, i32*) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rdf2native_int16(i32) #1

declare dso_local i32 @ldns_rr_rrsig_keytag(i32*) #1

declare dso_local i64 @ldns_calc_keytag(i32*) #1

declare dso_local i64 @ldns_verify_rrsig_time(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
