; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_create_nsec3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_create_nsec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_create_nsec3(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i64 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca [1024 x i64], align 16
  %27 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  store i64 0, i64* %27, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i64, i64* %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32*, i32** %18, align 8
  %33 = call i32* @ldns_nsec3_hash_name(i32* %28, i32 %29, i64 %30, i32 %31, i32* %32)
  store i32* %33, i32** %24, align 8
  %34 = load i32*, i32** %24, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i64 @ldns_dname_cat(i32* %34, i32* %35)
  store i64 %36, i64* %25, align 8
  %37 = load i64, i64* %25, align 8
  %38 = load i64, i64* @LDNS_STATUS_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %9
  %41 = load i32*, i32** %24, align 8
  %42 = call i32 @ldns_rdf_deep_free(i32* %41)
  store i32* null, i32** %10, align 8
  br label %137

43:                                               ; preds = %9
  %44 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %45 = call i32* @ldns_rr_new_frm_type(i32 %44)
  store i32* %45, i32** %23, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %24, align 8
  %50 = call i32 @ldns_rdf_deep_free(i32* %49)
  store i32* null, i32** %10, align 8
  br label %137

51:                                               ; preds = %43
  %52 = load i32*, i32** %23, align 8
  %53 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %54 = call i32 @ldns_rr_set_type(i32* %52, i32 %53)
  %55 = load i32*, i32** %23, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = call i32 @ldns_rr_set_owner(i32* %55, i32* %56)
  %58 = load i32*, i32** %23, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i64, i64* %16, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @ldns_nsec3_add_param_rdfs(i32* %58, i32 %59, i32 %60, i64 %61, i32 %62, i32* %63)
  %65 = load i32*, i32** %23, align 8
  %66 = call i32 @ldns_rr_set_rdf(i32* %65, i32* null, i32 4)
  store i64 0, i64* %20, align 8
  br label %67

67:                                               ; preds = %101, %51
  %68 = load i64, i64* %20, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i64 @ldns_rr_list_rr_count(i32* %69)
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %67
  %73 = load i32*, i32** %13, align 8
  %74 = load i64, i64* %20, align 8
  %75 = call i32* @ldns_rr_list_rr(i32* %73, i64 %74)
  store i32* %75, i32** %21, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = call i32 @ldns_rr_owner(i32* %77)
  %79 = call i64 @ldns_rdf_compare(i32* %76, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %72
  %82 = load i32*, i32** %21, align 8
  %83 = call i64 @ldns_rr_get_type(i32* %82)
  store i64 %83, i64* %22, align 8
  %84 = load i64, i64* %27, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %27, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds [1024 x i64], [1024 x i64]* %26, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %22, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86, %81
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %27, align 8
  %96 = getelementptr inbounds [1024 x i64], [1024 x i64]* %26, i64 0, i64 %95
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %27, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %27, align 8
  br label %99

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %72
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %20, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %20, align 8
  br label %67

104:                                              ; preds = %67
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @rr_list_delegation_only(i32* %108, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %114 = load i64, i64* %27, align 8
  %115 = getelementptr inbounds [1024 x i64], [1024 x i64]* %26, i64 0, i64 %114
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %27, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %27, align 8
  br label %118

118:                                              ; preds = %112, %107, %104
  %119 = load i32*, i32** %12, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i64 @ldns_dname_compare(i32* %119, i32* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %125 = load i64, i64* %27, align 8
  %126 = getelementptr inbounds [1024 x i64], [1024 x i64]* %26, i64 0, i64 %125
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %27, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %27, align 8
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i32*, i32** %23, align 8
  %131 = getelementptr inbounds [1024 x i64], [1024 x i64]* %26, i64 0, i64 0
  %132 = load i64, i64* %27, align 8
  %133 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %134 = call i32 @ldns_dnssec_create_nsec_bitmap(i64* %131, i64 %132, i32 %133)
  %135 = call i32 @ldns_rr_push_rdf(i32* %130, i32 %134)
  %136 = load i32*, i32** %23, align 8
  store i32* %136, i32** %10, align 8
  br label %137

137:                                              ; preds = %129, %48, %40
  %138 = load i32*, i32** %10, align 8
  ret i32* %138
}

declare dso_local i32* @ldns_nsec3_hash_name(i32*, i32, i64, i32, i32*) #1

declare dso_local i64 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32* @ldns_rr_new_frm_type(i32) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32 @ldns_nsec3_add_param_rdfs(i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @ldns_rr_set_rdf(i32*, i32*, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rdf_compare(i32*, i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @rr_list_delegation_only(i32*, i32*) #1

declare dso_local i64 @ldns_dname_compare(i32*, i32*) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32) #1

declare dso_local i32 @ldns_dnssec_create_nsec_bitmap(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
