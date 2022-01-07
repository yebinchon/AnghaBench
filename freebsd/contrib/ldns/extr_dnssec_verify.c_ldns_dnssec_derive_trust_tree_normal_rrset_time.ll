; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_normal_rrset_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_normal_rrset_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32* }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_dnssec_derive_trust_tree_normal_rrset_time(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @ldns_rr_list_clone(i32 %19)
  store i32* %20, i32** %11, align 8
  store i32* null, i32** %15, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ldns_rr_rrsig_keytag(i32* %21)
  %23 = call i64 @ldns_rdf2native_int16(i32 %22)
  store i64 %23, i64* %14, align 8
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %156, %4
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @ldns_rr_list_rr_count(i32* %30)
  %32 = icmp ult i64 %25, %31
  br i1 %32, label %33, label %159

33:                                               ; preds = %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32* @ldns_rr_list_rr(i32* %38, i64 %39)
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i64 @ldns_rr_get_type(i32* %41)
  %43 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %155

45:                                               ; preds = %33
  %46 = load i32*, i32** %13, align 8
  %47 = call i64 @ldns_calc_keytag(i32* %46)
  %48 = load i64, i64* %14, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %154

50:                                               ; preds = %45
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %153

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @ldns_rr_list_rr_count(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %153

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @ldns_rr_list_rr(i32* %59, i64 0)
  %61 = call i64 @ldns_rr_get_type(i32* %60)
  %62 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %11, align 8
  %66 = call i32* @ldns_rr_list_rr(i32* %65, i64 0)
  %67 = call i64 @ldns_rr_get_type(i32* %66)
  %68 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %64, %57
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @ldns_rr_list_sort(i32* %71)
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp eq i32* %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @ldns_rr_list_pop_rrset(i32* %78)
  store i32* %79, i32** %15, align 8
  br label %80

80:                                               ; preds = %97, %70
  %81 = load i32*, i32** %15, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = call i64 @ldns_rr_list_rr_count(i32* %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32*, i32** %15, align 8
  %89 = call i32* @ldns_rr_list_rr(i32* %88, i64 0)
  %90 = call i32 @ldns_rr_owner(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ldns_rr_owner(i32* %91)
  %93 = call i64 @ldns_dname_compare(i32 %90, i32 %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %87, %83, %80
  %96 = phi i1 [ false, %83 ], [ false, %80 ], [ %94, %87 ]
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @ldns_rr_list_deep_free(i32* %98)
  %100 = load i32*, i32** %11, align 8
  %101 = call i32* @ldns_rr_list_pop_rrset(i32* %100)
  store i32* %101, i32** %15, align 8
  br label %80

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %64
  %104 = load i32*, i32** %15, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @ldns_verify_rrsig_time(i32* %104, i32* %105, i32* %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = icmp ne i32* %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @ldns_rr_list_deep_free(i32* %116)
  store i32* null, i32** %15, align 8
  br label %118

118:                                              ; preds = %115, %111, %103
  store i64 0, i64* %9, align 8
  br label %119

119:                                              ; preds = %138, %118
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load i32*, i32** %13, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %129, i64 %130
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %126, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %160

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %9, align 8
  br label %119

141:                                              ; preds = %119
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call %struct.TYPE_11__* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_13__* %144, i32* %145, i32 %146)
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %12, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @ldns_dnssec_trust_tree_add_parent(%struct.TYPE_11__* %148, %struct.TYPE_11__* %149, i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %141, %53, %50
  br label %154

154:                                              ; preds = %153, %45
  br label %155

155:                                              ; preds = %154, %33
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %24

159:                                              ; preds = %24
  br label %160

160:                                              ; preds = %159, %136
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @ldns_rr_list_deep_free(i32* %161)
  ret void
}

declare dso_local i32* @ldns_rr_list_clone(i32) #1

declare dso_local i64 @ldns_rdf2native_int16(i32) #1

declare dso_local i32 @ldns_rr_rrsig_keytag(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_calc_keytag(i32*) #1

declare dso_local i32 @ldns_rr_list_sort(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ldns_rr_list_pop_rrset(i32*) #1

declare dso_local i64 @ldns_dname_compare(i32, i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @ldns_verify_rrsig_time(i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_trust_tree_add_parent(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
