; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_AAAA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_getaddrinfo(i32* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @ldns_rdf_get_type(i32* %14)
  store i64 %15, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = call i64 @ldns_resolver_new_frm_file(i32** %12, i32* null)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @LDNS_STATUS_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %64

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @ldns_get_rr_list_addr_by_name(i32* %31, i32* %32, i32 %33, i32 0)
  %35 = load i32**, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @ldns_rr_list_rr_count(i32* %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %30, %26
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @LDNS_RDF_TYPE_A, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @LDNS_RDF_TYPE_AAAA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43, %39
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @ldns_get_rr_list_name_by_addr(i32* %48, i32* %49, i32 %50, i32 0)
  %52 = load i32**, i32*** %9, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @ldns_rr_list_rr_count(i32* %54)
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %47, %43
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @ldns_resolver_deep_free(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %62, %24
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_resolver_new_frm_file(i32**, i32*) #1

declare dso_local i32* @ldns_get_rr_list_addr_by_name(i32*, i32*, i32, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_get_rr_list_name_by_addr(i32*, i32*, i32, i32) #1

declare dso_local i32 @ldns_resolver_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
