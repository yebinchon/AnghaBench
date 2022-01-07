; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain_other.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_SECTION_ANY_NOQUESTION = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"There were already sigs!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"replacing the old sigs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_4__*, i32*, i32, i32*)* @ldns_dnssec_build_data_chain_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_dnssec_build_data_chain_other(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @ldns_resolver_query(i32* %17, i32* %18, i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %6
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %29 = load i32, i32* @LDNS_SECTION_ANY_NOQUESTION, align 4
  %30 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %26, i32* %27, i32 %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call %struct.TYPE_5__* @ldns_dnssec_build_data_chain(i32* %34, i32 %35, i32* %36, i32* %37, i32* null)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @ldns_rr_list_deep_free(i32* %46)
  br label %48

48:                                               ; preds = %33, %25
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @ldns_pkt_free(i32* %49)
  br label %51

51:                                               ; preds = %48, %6
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32* @ldns_resolver_query(i32* %52, i32* %53, i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %51
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %64 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %65 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %61, i32* %62, i32 %63, i32 %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ldns_rr_list_deep_free(i32* %77)
  %79 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i32*, i32** %14, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %60
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @ldns_pkt_free(i32* %85)
  br label %87

87:                                               ; preds = %84, %51
  ret void
}

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @ldns_pkt_rr_list_by_name_and_type(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ldns_dnssec_build_data_chain(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
