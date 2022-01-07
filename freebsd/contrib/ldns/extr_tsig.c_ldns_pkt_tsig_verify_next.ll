; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_tsig.c_ldns_pkt_tsig_verify_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_tsig.c_ldns_pkt_tsig_verify_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pkt_tsig_verify_next(i32* %0, i32* %1, i64 %2, i8* %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %31 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32* @ldns_rdf_new_frm_str(i32 %31, i8* %32)
  store i32* %33, i32** %24, align 8
  store i32* null, i32** %28, align 8
  store i64 0, i64* %29, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @ldns_pkt_tsig(i32* %34)
  store i32* %35, i32** %30, align 8
  %36 = load i32*, i32** %30, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %7
  %39 = load i32*, i32** %30, align 8
  %40 = call i32 @ldns_rr_rd_count(i32* %39)
  %41 = icmp sle i32 %40, 6
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %7
  %43 = load i32*, i32** %24, align 8
  %44 = call i32 @ldns_rdf_deep_free(i32* %43)
  store i32 0, i32* %8, align 4
  br label %111

45:                                               ; preds = %38
  %46 = load i32*, i32** %30, align 8
  %47 = call i32* @ldns_rr_rdf(i32* %46, i32 0)
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %30, align 8
  %49 = call i32* @ldns_rr_rdf(i32* %48, i32 1)
  store i32* %49, i32** %18, align 8
  %50 = load i32*, i32** %30, align 8
  %51 = call i32* @ldns_rr_rdf(i32* %50, i32 2)
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %30, align 8
  %53 = call i32* @ldns_rr_rdf(i32* %52, i32 3)
  store i32* %53, i32** %22, align 8
  %54 = load i32*, i32** %30, align 8
  %55 = call i32* @ldns_rr_rdf(i32* %54, i32 4)
  store i32* %55, i32** %19, align 8
  %56 = load i32*, i32** %30, align 8
  %57 = call i32* @ldns_rr_rdf(i32* %56, i32 5)
  store i32* %57, i32** %20, align 8
  %58 = load i32*, i32** %30, align 8
  %59 = call i32* @ldns_rr_rdf(i32* %58, i32 6)
  store i32* %59, i32** %21, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @ldns_pkt_set_tsig(i32* %60, i32* null)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @ldns_pkt_id(i32* %62)
  store i32 %63, i32* %25, align 4
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @ldns_rdf2native_int16(i32* %64)
  store i32 %65, i32* %26, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %26, align 4
  %68 = call i32 @ldns_pkt_set_id(i32* %66, i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32* @ldns_tsig_prepare_pkt_wire(i32* %69, i64 %70, i64* %29)
  store i32* %71, i32** %28, align 8
  %72 = load i32*, i32** %28, align 8
  %73 = load i64, i64* %29, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = load i32*, i32** %20, align 8
  %80 = load i32*, i32** %21, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i64 @ldns_tsig_mac_new(i32** %23, i32* %72, i64 %73, i8* %74, i32* %75, i32* %76, i32* %77, i32* %78, i32* %79, i32* %80, i32* %81, i32 %82)
  store i64 %83, i64* %27, align 8
  %84 = load i32*, i32** %28, align 8
  %85 = call i32 @LDNS_FREE(i32* %84)
  %86 = load i64, i64* %27, align 8
  %87 = load i64, i64* @LDNS_STATUS_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %45
  %90 = load i32*, i32** %24, align 8
  %91 = call i32 @ldns_rdf_deep_free(i32* %90)
  store i32 0, i32* %8, align 4
  br label %111

92:                                               ; preds = %45
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %30, align 8
  %95 = call i32 @ldns_pkt_set_tsig(i32* %93, i32* %94)
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %25, align 4
  %98 = call i32 @ldns_pkt_set_id(i32* %96, i32 %97)
  %99 = load i32*, i32** %24, align 8
  %100 = call i32 @ldns_rdf_deep_free(i32* %99)
  %101 = load i32*, i32** %22, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i64 @ldns_rdf_compare(i32* %101, i32* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32*, i32** %23, align 8
  %107 = call i32 @ldns_rdf_deep_free(i32* %106)
  store i32 1, i32* %8, align 4
  br label %111

108:                                              ; preds = %92
  %109 = load i32*, i32** %23, align 8
  %110 = call i32 @ldns_rdf_deep_free(i32* %109)
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %108, %105, %89, %42
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32* @ldns_rdf_new_frm_str(i32, i8*) #1

declare dso_local i32* @ldns_pkt_tsig(i32*) #1

declare dso_local i32 @ldns_rr_rd_count(i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_tsig(i32*, i32*) #1

declare dso_local i32 @ldns_pkt_id(i32*) #1

declare dso_local i32 @ldns_rdf2native_int16(i32*) #1

declare dso_local i32 @ldns_pkt_set_id(i32*, i32) #1

declare dso_local i32* @ldns_tsig_prepare_pkt_wire(i32*, i64, i64*) #1

declare dso_local i64 @ldns_tsig_mac_new(i32**, i32*, i64, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @LDNS_FREE(i32*) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
