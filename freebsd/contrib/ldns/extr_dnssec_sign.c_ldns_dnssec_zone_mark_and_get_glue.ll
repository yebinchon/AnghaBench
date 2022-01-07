; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_dnssec_zone_mark_and_get_glue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_dnssec_zone_mark_and_get_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@LDNS_STATUS_NULL = common dso_local global i64 0, align 8
@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dnssec_zone_mark_and_get_glue(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %2
  %20 = load i64, i64* @LDNS_STATUS_NULL, align 8
  store i64 %20, i64* %3, align 8
  br label %121

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_10__* @ldns_rbtree_first(i32 %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %6, align 8
  br label %26

26:                                               ; preds = %116, %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @LDNS_RBTREE_NULL, align 8
  %29 = icmp ne %struct.TYPE_10__* %27, %28
  br i1 %29, label %30, label %119

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = call i32* @ldns_dnssec_name_name(%struct.TYPE_12__* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %30
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @ldns_dname_is_subdomain(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %49 = call i64 @ldns_dnssec_rrsets_contains_type(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @ldns_dnssec_addresses_on_glue_list(i32 %60, i32* %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @LDNS_STATUS_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %3, align 8
  br label %121

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %54, %51
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %116

72:                                               ; preds = %44, %39
  store i32* null, i32** %9, align 8
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %30
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %79 = call i64 @ldns_dnssec_rrsets_contains_type(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %86 = call i64 @ldns_dnssec_rrsets_contains_type(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** %8, align 8
  store i32* %89, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = call i64 @ldns_dnssec_addresses_on_glue_list(i32 %95, i32* %96)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @LDNS_STATUS_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %3, align 8
  br label %121

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %88
  br label %115

105:                                              ; preds = %81, %74
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @LDNS_RR_TYPE_DNAME, align 4
  %110 = call i64 @ldns_dnssec_rrsets_contains_type(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32*, i32** %8, align 8
  store i32* %113, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %112, %105
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %69
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = call %struct.TYPE_10__* @ldns_rbtree_next(%struct.TYPE_10__* %117)
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %6, align 8
  br label %26

119:                                              ; preds = %26
  %120 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %119, %101, %66, %19
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local %struct.TYPE_10__* @ldns_rbtree_first(i32) #1

declare dso_local i32* @ldns_dnssec_name_name(%struct.TYPE_12__*) #1

declare dso_local i64 @ldns_dname_is_subdomain(i32*, i32*) #1

declare dso_local i64 @ldns_dnssec_rrsets_contains_type(i32, i32) #1

declare dso_local i64 @ldns_dnssec_addresses_on_glue_list(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @ldns_rbtree_next(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
