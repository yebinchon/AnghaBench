; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@LDNS_STATUS_RES_NO_NS = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_STATUS_RES_QUERY = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_CRYPTO_TSIG_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_resolver_send(i32** %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store i32* null, i32** %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 0, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @ldns_resolver_nameserver_count(i32* %35)
  %37 = icmp eq i64 0, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @LDNS_STATUS_RES_NO_NS, align 8
  store i64 %39, i64* %7, align 8
  br label %84

40:                                               ; preds = %34
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @ldns_rdf_get_type(i32* %41)
  %43 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @LDNS_STATUS_RES_QUERY, align 8
  store i64 %46, i64* %7, align 8
  br label %84

47:                                               ; preds = %40
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @ldns_resolver_prepare_query_pkt(i32** %14, i32* %48, i32* %49, i32 %50, i32 %51, i32 %52)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* @LDNS_STATUS_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i64, i64* %16, align 8
  store i64 %58, i64* %7, align 8
  br label %84

59:                                               ; preds = %47
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @ldns_resolver_tsig_keyname(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @ldns_resolver_tsig_keydata(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @ldns_pkt_free(i32* %68)
  %70 = load i64, i64* @LDNS_STATUS_CRYPTO_TSIG_ERR, align 8
  store i64 %70, i64* %7, align 8
  br label %84

71:                                               ; preds = %63, %59
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = call i64 @ldns_resolver_send_pkt(i32** %15, i32* %72, i32* %73)
  store i64 %74, i64* %16, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @ldns_pkt_free(i32* %75)
  %77 = load i32**, i32*** %8, align 8
  %78 = icmp ne i32** %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32*, i32** %15, align 8
  %81 = load i32**, i32*** %8, align 8
  store i32* %80, i32** %81, align 8
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i64, i64* %16, align 8
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %82, %67, %57, %45, %38
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_resolver_prepare_query_pkt(i32**, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @ldns_resolver_tsig_keyname(i32*) #1

declare dso_local i64 @ldns_resolver_tsig_keydata(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i64 @ldns_resolver_send_pkt(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
