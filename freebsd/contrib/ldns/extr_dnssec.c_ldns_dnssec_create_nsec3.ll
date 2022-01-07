; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_create_nsec3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_dnssec_create_nsec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_dnssec_create_nsec3(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [65536 x i64], align 16
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i64 0, i64* %20, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %8
  store i32* null, i32** %9, align 8
  br label %159

27:                                               ; preds = %8
  %28 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %29 = call i32* @ldns_rr_new_frm_type(i32 %28)
  store i32* %29, i32** %18, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = call i32 @ldns_dnssec_name_name(%struct.TYPE_8__* %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32*, i32** %17, align 8
  %37 = call i32 @ldns_nsec3_hash_name(i32 %32, i32 %33, i32 %34, i32 %35, i32* %36)
  %38 = call i32 @ldns_rr_set_owner(i32* %30, i32 %37)
  %39 = load i32*, i32** %18, align 8
  %40 = call i32 @ldns_rr_owner(i32* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @ldns_dname_cat(i32 %40, i32* %41)
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %22, align 8
  %44 = load i64, i64* @LDNS_STATUS_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i32*, i32** %18, align 8
  %48 = call i32 @ldns_rr_free(i32* %47)
  store i32* null, i32** %9, align 8
  br label %159

49:                                               ; preds = %27
  %50 = load i32*, i32** %18, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @ldns_nsec3_add_param_rdfs(i32* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %61 = call i64 @ldns_dnssec_rrsets_contains_type(%struct.TYPE_7__* %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %49
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %68 = call i64 @ldns_dnssec_rrsets_contains_type(%struct.TYPE_7__* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %63, %49
  %72 = phi i1 [ false, %49 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %23, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %21, align 8
  br label %77

77:                                               ; preds = %112, %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = load i32, i32* %23, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %104, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %89, %80
  %96 = load i32, i32* %23, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98, %89, %83
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %20, align 8
  %109 = getelementptr inbounds [65536 x i64], [65536 x i64]* %19, i64 0, i64 %108
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %20, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %20, align 8
  br label %112

112:                                              ; preds = %104, %98, %95
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %21, align 8
  br label %77

116:                                              ; preds = %77
  %117 = load i64, i64* %20, align 8
  %118 = icmp ugt i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load i64, i64* %20, align 8
  %121 = icmp eq i64 %120, 1
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = getelementptr inbounds [65536 x i64], [65536 x i64]* %19, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %122, %119
  %128 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %129 = load i64, i64* %20, align 8
  %130 = getelementptr inbounds [65536 x i64], [65536 x i64]* %19, i64 0, i64 %129
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %20, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %20, align 8
  br label %133

133:                                              ; preds = %127, %122, %116
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %135 = icmp ne %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32*, i32** %18, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32* @ldns_rdf_clone(i64 %145)
  %147 = call i32 @ldns_rr_set_rdf(i32* %142, i32* %146, i32 4)
  br label %151

148:                                              ; preds = %136, %133
  %149 = load i32*, i32** %18, align 8
  %150 = call i32 @ldns_rr_set_rdf(i32* %149, i32* null, i32 4)
  br label %151

151:                                              ; preds = %148, %141
  %152 = load i32*, i32** %18, align 8
  %153 = getelementptr inbounds [65536 x i64], [65536 x i64]* %19, i64 0, i64 0
  %154 = load i64, i64* %20, align 8
  %155 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %156 = call i32 @ldns_dnssec_create_nsec_bitmap(i64* %153, i64 %154, i32 %155)
  %157 = call i32 @ldns_rr_push_rdf(i32* %152, i32 %156)
  %158 = load i32*, i32** %18, align 8
  store i32* %158, i32** %9, align 8
  br label %159

159:                                              ; preds = %151, %46, %26
  %160 = load i32*, i32** %9, align 8
  ret i32* %160
}

declare dso_local i32* @ldns_rr_new_frm_type(i32) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32) #1

declare dso_local i32 @ldns_nsec3_hash_name(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ldns_dnssec_name_name(%struct.TYPE_8__*) #1

declare dso_local i64 @ldns_dname_cat(i32, i32*) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32 @ldns_nsec3_add_param_rdfs(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ldns_dnssec_rrsets_contains_type(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @ldns_rr_set_rdf(i32*, i32*, i32) #1

declare dso_local i32* @ldns_rdf_clone(i64) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32) #1

declare dso_local i32 @ldns_dnssec_create_nsec_bitmap(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
