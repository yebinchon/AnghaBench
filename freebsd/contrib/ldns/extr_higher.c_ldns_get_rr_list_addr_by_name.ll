; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_get_rr_list_addr_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_get_rr_list_addr_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RESOLV_INETANY = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@LDNS_RD = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_get_rr_list_addr_by_name(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %141

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @ldns_rdf_get_type(i32* %21)
  %23 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %5, align 8
  br label %141

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @ldns_resolver_ip6(i32* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @LDNS_RESOLV_INETANY, align 4
  %31 = call i32 @ldns_resolver_set_ip6(i32* %29, i32 %30)
  %32 = call i32* @ldns_get_rr_list_hosts_frm_file(i32* null)
  store i32* %32, i32** %14, align 8
  store i64 0, i64* %15, align 8
  br label %33

33:                                               ; preds = %59, %26
  %34 = load i64, i64* %15, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i64 @ldns_rr_list_rr_count(i32* %35)
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @ldns_rr_list_rr(i32* %40, i64 %41)
  %43 = call i32 @ldns_rr_owner(i32 %42)
  %44 = call i64 @ldns_rdf_compare(i32* %39, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32* (...) @ldns_rr_list_new()
  store i32* %50, i32** %13, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @ldns_rr_list_rr(i32* %53, i64 %54)
  %56 = call i32 @ldns_rr_clone(i32 %55)
  %57 = call i32 @ldns_rr_list_push_rr(i32* %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %15, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %15, align 8
  br label %33

62:                                               ; preds = %33
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @ldns_rr_list_deep_free(i32* %63)
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32*, i32** %13, align 8
  store i32* %68, i32** %5, align 8
  br label %141

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @LDNS_RD, align 4
  %76 = or i32 %74, %75
  %77 = call i32* @ldns_resolver_query(i32* %70, i32* %71, i32 %72, i32 %73, i32 %76)
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %83 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %84 = call i32* @ldns_pkt_rr_list_by_type(i32* %81, i32 %82, i32 %83)
  store i32* %84, i32** %11, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @ldns_pkt_free(i32* %85)
  br label %87

87:                                               ; preds = %80, %69
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @LDNS_RD, align 4
  %94 = or i32 %92, %93
  %95 = call i32* @ldns_resolver_query(i32* %88, i32* %89, i32 %90, i32 %91, i32 %94)
  store i32* %95, i32** %10, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %101 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %102 = call i32* @ldns_pkt_rr_list_by_type(i32* %99, i32 %100, i32 %101)
  store i32* %102, i32** %12, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @ldns_pkt_free(i32* %103)
  br label %105

105:                                              ; preds = %98, %87
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ldns_resolver_set_ip6(i32* %106, i32 %107)
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32*, i32** %12, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32*, i32** %11, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = call i32* @ldns_rr_list_cat_clone(i32* %115, i32* %116)
  store i32* %117, i32** %13, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @ldns_rr_list_deep_free(i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @ldns_rr_list_deep_free(i32* %120)
  %122 = load i32*, i32** %13, align 8
  store i32* %122, i32** %5, align 8
  br label %141

123:                                              ; preds = %111, %105
  %124 = load i32*, i32** %11, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %11, align 8
  %128 = call i32* @ldns_rr_list_clone(i32* %127)
  store i32* %128, i32** %13, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32*, i32** %12, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %12, align 8
  %134 = call i32* @ldns_rr_list_clone(i32* %133)
  store i32* %134, i32** %13, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @ldns_rr_list_deep_free(i32* %136)
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @ldns_rr_list_deep_free(i32* %138)
  %140 = load i32*, i32** %13, align 8
  store i32* %140, i32** %5, align 8
  br label %141

141:                                              ; preds = %135, %114, %67, %25, %19
  %142 = load i32*, i32** %5, align 8
  ret i32* %142
}

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i32 @ldns_resolver_ip6(i32*) #1

declare dso_local i32 @ldns_resolver_set_ip6(i32*, i32) #1

declare dso_local i32* @ldns_get_rr_list_hosts_frm_file(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32) #1

declare dso_local i32 @ldns_rr_owner(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i32, i32) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local i32* @ldns_rr_list_cat_clone(i32*, i32*) #1

declare dso_local i32* @ldns_rr_list_clone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
