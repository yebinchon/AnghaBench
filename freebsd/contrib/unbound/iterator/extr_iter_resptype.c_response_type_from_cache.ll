; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_resptype.c_response_type_from_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_resptype.c_response_type_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.ub_packed_rrset_key**, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.query_info = type { i64, i64, i64, i32* }

@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@RESPONSE_TYPE_ANSWER = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@RESPONSE_TYPE_CNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @response_type_from_cache(%struct.dns_msg* %0, %struct.query_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  %10 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %11 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @FLAGS_GET_RCODE(i32 %14)
  %16 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %19, i32* %3, align 4
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.query_info*, %struct.query_info** %5, align 8
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %27, i32* %3, align 4
  br label %122

28:                                               ; preds = %20
  %29 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %30 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %120

35:                                               ; preds = %28
  %36 = load %struct.query_info*, %struct.query_info** %5, align 8
  %37 = getelementptr inbounds %struct.query_info, %struct.query_info* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %6, align 8
  %39 = load %struct.query_info*, %struct.query_info** %5, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %108, %35
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %45 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %111

50:                                               ; preds = %42
  %51 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %52 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %55, i64 %56
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %57, align 8
  store %struct.ub_packed_rrset_key* %58, %struct.ub_packed_rrset_key** %9, align 8
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %60 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntohs(i32 %62)
  %64 = load %struct.query_info*, %struct.query_info** %5, align 8
  %65 = getelementptr inbounds %struct.query_info, %struct.query_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %50
  %69 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %70 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ntohs(i32 %72)
  %74 = load %struct.query_info*, %struct.query_info** %5, align 8
  %75 = getelementptr inbounds %struct.query_info, %struct.query_info* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @query_dname_compare(i32* %79, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %87, i32* %3, align 4
  br label %122

88:                                               ; preds = %78, %68, %50
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %90 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ntohs(i32 %92)
  %94 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %99 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @query_dname_compare(i32* %97, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %106 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %105, i32** %6, i64* %7)
  br label %107

107:                                              ; preds = %104, %96, %88
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %8, align 8
  br label %42

111:                                              ; preds = %42
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.query_info*, %struct.query_info** %5, align 8
  %114 = getelementptr inbounds %struct.query_info, %struct.query_info* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  store i32 %118, i32* %3, align 4
  br label %122

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %28
  %121 = load i32, i32* @RESPONSE_TYPE_ANSWER, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %117, %86, %26, %18
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
