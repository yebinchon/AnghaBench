; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_create_empty_rrsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_create_empty_rrsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_INT32 = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_INT8 = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_TIME = common dso_local global i32 0, align 4
@LDNS_DEFAULT_EXP_TIME = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_INT16 = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_ALG = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_create_empty_rrsig(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @ldns_rr_list_rr(i32* %11, i32 0)
  %13 = call i32 @ldns_rr_owner(i32 %12)
  %14 = call i32 @ldns_dname_label_count(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @ldns_rr_list_rr(i32* %15, i32 0)
  %17 = call i32 @ldns_rr_owner(i32 %16)
  %18 = call i64 @ldns_dname_is_wildcard(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %25 = call i32* @ldns_rr_new_frm_type(i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ldns_rr_list_rr(i32* %26, i32 0)
  %28 = call i64 @ldns_rr_ttl(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ldns_rr_list_rr(i32* %29, i32 0)
  %31 = call i32 @ldns_rr_get_class(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ldns_rr_set_ttl(i32* %32, i64 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ldns_rr_set_class(i32* %35, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @ldns_rr_list_rr(i32* %39, i32 0)
  %41 = call i32 @ldns_rr_owner(i32 %40)
  %42 = call i32* @ldns_rdf_clone(i32 %41)
  %43 = call i32 @ldns_rr_set_owner(i32* %38, i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @ldns_native2rdf_int32(i32 %45, i64 %46)
  %48 = call i32 @ldns_rr_rrsig_set_origttl(i32* %44, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @ldns_key_pubkey_owner(i32* %49)
  %51 = call i32* @ldns_rdf_clone(i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @ldns_dname2canonical(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ldns_rr_rrsig_set_signame(i32* %54, i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @LDNS_RDF_TYPE_INT8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ldns_native2rdf_int8(i32 %58, i32 %59)
  %61 = call i32 @ldns_rr_rrsig_set_labels(i32* %57, i32 %60)
  %62 = call i64 @time(i32* null)
  store i64 %62, i64* %7, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @ldns_key_inception(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %23
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @LDNS_RDF_TYPE_TIME, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @ldns_key_inception(i32* %69)
  %71 = call i32 @ldns_native2rdf_int32(i32 %68, i64 %70)
  %72 = call i32 @ldns_rr_rrsig_set_inception(i32* %67, i32 %71)
  br label %79

73:                                               ; preds = %23
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @LDNS_RDF_TYPE_TIME, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ldns_native2rdf_int32(i32 %75, i64 %76)
  %78 = call i32 @ldns_rr_rrsig_set_inception(i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @ldns_key_expiration(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @LDNS_RDF_TYPE_TIME, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @ldns_key_expiration(i32* %86)
  %88 = call i32 @ldns_native2rdf_int32(i32 %85, i64 %87)
  %89 = call i32 @ldns_rr_rrsig_set_expiration(i32* %84, i32 %88)
  br label %98

90:                                               ; preds = %79
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @LDNS_RDF_TYPE_TIME, align 4
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @LDNS_DEFAULT_EXP_TIME, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @ldns_native2rdf_int32(i32 %92, i64 %95)
  %97 = call i32 @ldns_rr_rrsig_set_expiration(i32* %91, i32 %96)
  br label %98

98:                                               ; preds = %90, %83
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @LDNS_RDF_TYPE_INT16, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ldns_key_keytag(i32* %101)
  %103 = call i32 @ldns_native2rdf_int16(i32 %100, i32 %102)
  %104 = call i32 @ldns_rr_rrsig_set_keytag(i32* %99, i32 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @LDNS_RDF_TYPE_ALG, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @ldns_key_algorithm(i32* %107)
  %109 = call i32 @ldns_native2rdf_int8(i32 %106, i32 %108)
  %110 = call i32 @ldns_rr_rrsig_set_algorithm(i32* %105, i32 %109)
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* @LDNS_RDF_TYPE_TYPE, align 4
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @ldns_rr_list_rr(i32* %113, i32 0)
  %115 = call i32 @ldns_rr_get_type(i32 %114)
  %116 = call i32 @ldns_native2rdf_int16(i32 %112, i32 %115)
  %117 = call i32 @ldns_rr_rrsig_set_typecovered(i32* %111, i32 %116)
  %118 = load i32*, i32** %8, align 8
  ret i32* %118
}

declare dso_local i32 @ldns_dname_label_count(i32) #1

declare dso_local i32 @ldns_rr_owner(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i64 @ldns_dname_is_wildcard(i32) #1

declare dso_local i32* @ldns_rr_new_frm_type(i32) #1

declare dso_local i64 @ldns_rr_ttl(i32) #1

declare dso_local i32 @ldns_rr_get_class(i32) #1

declare dso_local i32 @ldns_rr_set_ttl(i32*, i64) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32* @ldns_rdf_clone(i32) #1

declare dso_local i32 @ldns_rr_rrsig_set_origttl(i32*, i32) #1

declare dso_local i32 @ldns_native2rdf_int32(i32, i64) #1

declare dso_local i32 @ldns_key_pubkey_owner(i32*) #1

declare dso_local i32 @ldns_dname2canonical(i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_signame(i32*, i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_labels(i32*, i32) #1

declare dso_local i32 @ldns_native2rdf_int8(i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @ldns_key_inception(i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_inception(i32*, i32) #1

declare dso_local i64 @ldns_key_expiration(i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_expiration(i32*, i32) #1

declare dso_local i32 @ldns_rr_rrsig_set_keytag(i32*, i32) #1

declare dso_local i32 @ldns_native2rdf_int16(i32, i32) #1

declare dso_local i32 @ldns_key_keytag(i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_algorithm(i32*, i32) #1

declare dso_local i32 @ldns_key_algorithm(i32*) #1

declare dso_local i32 @ldns_rr_rrsig_set_typecovered(i32*, i32) #1

declare dso_local i32 @ldns_rr_get_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
