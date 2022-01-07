; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_pkt_get_rrsigs_for_name_and_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_pkt_get_rrsigs_for_name_and_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@LDNS_SECTION_ANY_NOQUESTION = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_TYPE = common dso_local global i32 0, align 4
@LDNS_RDF_SIZE_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dnssec_pkt_get_rrsigs_for_name_and_type(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %14 = load i32, i32* @LDNS_SECTION_ANY_NOQUESTION, align 4
  %15 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %11, i32* %12, i32 %13, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @htons(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @LDNS_RDF_TYPE_TYPE, align 4
  %19 = load i32, i32* @LDNS_RDF_SIZE_WORD, align 4
  %20 = call i32* @ldns_rdf_new(i32 %18, i32 %19, i32* %7)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32* @ldns_rr_list_subtype_by_rdf(i32* %21, i32* %22, i32 0)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @ldns_rdf_free(i32* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @ldns_rr_list_deep_free(i32* %26)
  %28 = load i32*, i32** %9, align 8
  ret i32* %28
}

declare dso_local i32* @ldns_pkt_rr_list_by_name_and_type(i32*, i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32* @ldns_rdf_new(i32, i32, i32*) #1

declare dso_local i32* @ldns_rr_list_subtype_by_rdf(i32*, i32*, i32) #1

declare dso_local i32 @ldns_rdf_free(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
