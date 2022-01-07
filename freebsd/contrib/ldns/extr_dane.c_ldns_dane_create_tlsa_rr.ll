; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dane.c_ldns_dane_create_tlsa_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dane.c_ldns_dane_create_tlsa_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_TLSA = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_INT8 = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dane_create_tlsa_rr(i32** %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32**, i32*** %7, align 8
  %15 = icmp ne i32** %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @LDNS_RR_TYPE_TLSA, align 4
  %23 = call i32* @ldns_rr_new_frm_type(i32 %22)
  %24 = load i32**, i32*** %7, align 8
  store i32* %23, i32** %24, align 8
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %29, i64* %6, align 8
  br label %92

30:                                               ; preds = %5
  %31 = load i32, i32* @LDNS_RDF_TYPE_INT8, align 4
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32* @ldns_native2rdf_int8(i32 %31, i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %86

38:                                               ; preds = %30
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @ldns_rr_set_rdf(i32* %40, i32* %41, i32 0)
  %43 = load i32, i32* @LDNS_RDF_TYPE_INT8, align 4
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32* @ldns_native2rdf_int8(i32 %43, i32 %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %86

50:                                               ; preds = %38
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @ldns_rr_set_rdf(i32* %52, i32* %53, i32 1)
  %55 = load i32, i32* @LDNS_RDF_TYPE_INT8, align 4
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32* @ldns_native2rdf_int8(i32 %55, i32 %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %86

62:                                               ; preds = %50
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @ldns_rr_set_rdf(i32* %64, i32* %65, i32 2)
  %67 = load i32*, i32** %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @ldns_dane_cert2rdf(i32** %12, i32* %67, i64 %68, i64 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @LDNS_STATUS_OK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load i32**, i32*** %7, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @ldns_rr_set_rdf(i32* %76, i32* %77, i32 3)
  %79 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %79, i64* %6, align 8
  br label %92

80:                                               ; preds = %62
  %81 = load i32**, i32*** %7, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ldns_rr_free(i32* %82)
  %84 = load i32**, i32*** %7, align 8
  store i32* null, i32** %84, align 8
  %85 = load i64, i64* %13, align 8
  store i64 %85, i64* %6, align 8
  br label %92

86:                                               ; preds = %61, %49, %37
  %87 = load i32**, i32*** %7, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ldns_rr_free(i32* %88)
  %90 = load i32**, i32*** %7, align 8
  store i32* null, i32** %90, align 8
  %91 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %86, %80, %74, %28
  %93 = load i64, i64* %6, align 8
  ret i64 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ldns_rr_new_frm_type(i32) #1

declare dso_local i32* @ldns_native2rdf_int8(i32, i32) #1

declare dso_local i32 @ldns_rr_set_rdf(i32*, i32*, i32) #1

declare dso_local i64 @ldns_dane_cert2rdf(i32**, i32*, i64, i64) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
