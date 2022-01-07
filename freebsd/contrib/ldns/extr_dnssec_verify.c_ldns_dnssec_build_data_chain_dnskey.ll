; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain_dnskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain_dnskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i8* null, align 8
@LDNS_SECTION_ANY_NOQUESTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, %struct.TYPE_5__*, i32*, i32)* @ldns_dnssec_build_data_chain_dnskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_dnssec_build_data_chain_dnskey(i32* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_5__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %85

19:                                               ; preds = %7
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @ldns_rr_list_rr_count(i32* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %19
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @ldns_rr_list_clone(i32* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i8*, i8** @LDNS_RR_TYPE_DNSKEY, align 8
  %33 = load i32, i32* @LDNS_SECTION_ANY_NOQUESTION, align 4
  %34 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %30, i32* %31, i8* %32, i32 %33)
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %68, label %37

37:                                               ; preds = %23
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i8*, i8** @LDNS_RR_TYPE_DNSKEY, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32* @ldns_resolver_query(i32* %38, i32* %39, i8* %40, i32 %41, i32 %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %37
  %47 = load i32*, i32** %16, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i8*, i8** @LDNS_RR_TYPE_DNSKEY, align 8
  %50 = load i32, i32* @LDNS_SECTION_ANY_NOQUESTION, align 4
  %51 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %47, i32* %48, i8* %49, i32 %50)
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i8* @ldns_dnssec_build_data_chain(i32* %52, i32 %53, i32* %54, i32* %55, i32* null)
  %57 = bitcast i8* %56 to %struct.TYPE_4__*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  %60 = load i8*, i8** @LDNS_RR_TYPE_DNSKEY, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @ldns_pkt_free(i32* %65)
  br label %67

67:                                               ; preds = %46, %37
  br label %82

68:                                               ; preds = %23
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @ldns_dnssec_build_data_chain(i32* %69, i32 %70, i32* %71, i32* %72, i32* null)
  %74 = bitcast i8* %73 to %struct.TYPE_4__*
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load i8*, i8** @LDNS_RR_TYPE_DNSKEY, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %68, %67
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @ldns_rr_list_deep_free(i32* %83)
  br label %85

85:                                               ; preds = %82, %19, %7
  ret void
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @ldns_rr_list_clone(i32*) #1

declare dso_local i32* @ldns_pkt_rr_list_by_name_and_type(i32*, i32*, i8*, i32) #1

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i8*, i32, i32) #1

declare dso_local i8* @ldns_dnssec_build_data_chain(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
