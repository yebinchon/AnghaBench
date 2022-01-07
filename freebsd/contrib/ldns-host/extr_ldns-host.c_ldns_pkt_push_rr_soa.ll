; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_pkt_push_rr_soa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_pkt_push_rr_soa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_INT32 = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_PERIOD = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i64)* @ldns_pkt_push_rr_soa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_pkt_push_rr_soa(i32* %0, i32 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %16 = call i32* @ldns_rr_new_frm_type(i32 %15)
  store i32* %16, i32** %13, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %19, i32* %6, align 4
  br label %100

20:                                               ; preds = %5
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ldns_rr_set_class(i32* %21, i32 %22)
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @ldns_rdf_clone(i32* %25)
  %27 = call i32 @ldns_rr_set_owner(i32* %24, i32* %26)
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @ldns_rr_set_ttl(i32* %28, i32 0)
  store i64 0, i64* %14, align 8
  %30 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %31 = call i32* @ldns_rdf_new_frm_data(i32 %30, i32 1, i64* %14)
  store i32* %31, i32** %12, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %96

34:                                               ; preds = %20
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @ldns_rr_set_rdf(i32* %35, i32* %36, i32 0)
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32* @ldns_rdf_clone(i32* %39)
  %41 = call i32 @ldns_rr_set_rdf(i32* %38, i32* %40, i32 1)
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @htonl(i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %45 = call i32* @ldns_rdf_new_frm_data(i32 %44, i32 4, i64* %14)
  store i32* %45, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %96

48:                                               ; preds = %34
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @ldns_rr_set_rdf(i32* %49, i32* %50, i32 2)
  store i64 0, i64* %14, align 8
  %52 = load i32, i32* @LDNS_RDF_TYPE_PERIOD, align 4
  %53 = call i32* @ldns_rdf_new_frm_data(i32 %52, i32 4, i64* %14)
  store i32* %53, i32** %12, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %96

56:                                               ; preds = %48
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @ldns_rr_set_rdf(i32* %57, i32* %58, i32 3)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32* @ldns_rdf_clone(i32* %61)
  %63 = call i32 @ldns_rr_set_rdf(i32* %60, i32* %62, i32 4)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32* @ldns_rdf_clone(i32* %65)
  %67 = call i32 @ldns_rr_set_rdf(i32* %64, i32* %66, i32 5)
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32* @ldns_rdf_clone(i32* %69)
  %71 = call i32 @ldns_rr_set_rdf(i32* %68, i32* %70, i32 6)
  %72 = load i32*, i32** %13, align 8
  %73 = call i32* @ldns_rr_rdf(i32* %72, i32 1)
  %74 = icmp eq i32* %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %56
  %76 = load i32*, i32** %13, align 8
  %77 = call i32* @ldns_rr_rdf(i32* %76, i32 4)
  %78 = icmp eq i32* %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %13, align 8
  %81 = call i32* @ldns_rr_rdf(i32* %80, i32 5)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @ldns_rr_rdf(i32* %84, i32 6)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @ldns_pkt_push_rr(i32* %88, i32 %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87, %83, %79, %75, %56
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %95, i32* %6, align 4
  br label %100

96:                                               ; preds = %93, %55, %47, %33
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @ldns_rr_free(i32* %97)
  %99 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %94, %18
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32* @ldns_rr_new_frm_type(i32) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32 @ldns_rr_set_ttl(i32*, i32) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i32, i64*) #1

declare dso_local i32 @ldns_rr_set_rdf(i32*, i32*, i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32 @ldns_pkt_push_rr(i32*, i32, i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
