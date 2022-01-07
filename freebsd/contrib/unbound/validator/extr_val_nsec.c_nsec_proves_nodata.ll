; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_proves_nodata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_proves_nodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.query_info = type { i64, i32* }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec_proves_nodata(%struct.ub_packed_rrset_key* %0, %struct.query_info* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = load i32**, i32*** %7, align 8
  %15 = call i32 @log_assert(i32** %14)
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %17 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.query_info*, %struct.query_info** %6, align 8
  %21 = getelementptr inbounds %struct.query_info, %struct.query_info* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @query_dname_compare(i32* %19, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %139

25:                                               ; preds = %3
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %27 = call i32 @nsec_get_next(%struct.ub_packed_rrset_key* %26, i32** %8, i64* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %190

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.query_info*, %struct.query_info** %6, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @dname_strict_subdomain_c(i32* %31, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.query_info*, %struct.query_info** %6, align 8
  %43 = getelementptr inbounds %struct.query_info, %struct.query_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @dname_canonical_compare(i32* %41, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %190

48:                                               ; preds = %37, %30
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %50 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @dname_is_wild(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %48
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = call i32 @dname_remove_label(i32** %10, i64* %11)
  %65 = load %struct.query_info*, %struct.query_info** %6, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @dname_strict_subdomain_c(i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %55
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %73 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %74 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %190

77:                                               ; preds = %71
  %78 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %79 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %80 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %84 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %85 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %190

88:                                               ; preds = %82, %77
  %89 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %90 = load %struct.query_info*, %struct.query_info** %6, align 8
  %91 = getelementptr inbounds %struct.query_info, %struct.query_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %89, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %190

96:                                               ; preds = %88
  %97 = load i32*, i32** %10, align 8
  %98 = load i32**, i32*** %7, align 8
  store i32* %97, i32** %98, align 8
  store i32 1, i32* %4, align 4
  br label %190

99:                                               ; preds = %55
  br label %138

100:                                              ; preds = %48
  br label %101

101:                                              ; preds = %135, %100
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %103 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i64 @dname_canonical_compare(i32* %105, i32* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %101
  %110 = load %struct.query_info*, %struct.query_info** %6, align 8
  %111 = getelementptr inbounds %struct.query_info, %struct.query_info* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call i64 @dname_subdomain_c(i32* %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %137

117:                                              ; preds = %109
  %118 = load i32*, i32** %8, align 8
  %119 = call i64 @dname_is_wild(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i64, i64* %9, align 8
  store i64 %122, i64* %12, align 8
  %123 = load i32*, i32** %8, align 8
  store i32* %123, i32** %13, align 8
  %124 = call i32 @dname_remove_label(i32** %13, i64* %12)
  %125 = load %struct.query_info*, %struct.query_info** %6, align 8
  %126 = getelementptr inbounds %struct.query_info, %struct.query_info* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = call i64 @dname_strict_subdomain_c(i32* %127, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i32*, i32** %13, align 8
  %133 = load i32**, i32*** %7, align 8
  store i32* %132, i32** %133, align 8
  store i32 1, i32* %4, align 4
  br label %190

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %117
  %136 = call i32 @dname_remove_label(i32** %8, i64* %9)
  br label %101

137:                                              ; preds = %116, %101
  br label %138

138:                                              ; preds = %137, %99
  store i32 0, i32* %4, align 4
  br label %190

139:                                              ; preds = %3
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %141 = load %struct.query_info*, %struct.query_info** %6, align 8
  %142 = getelementptr inbounds %struct.query_info, %struct.query_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %140, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %190

147:                                              ; preds = %139
  %148 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %149 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %150 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %190

153:                                              ; preds = %147
  %154 = load %struct.query_info*, %struct.query_info** %6, align 8
  %155 = getelementptr inbounds %struct.query_info, %struct.query_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %161 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %162 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %160, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %166 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %167 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %165, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %190

170:                                              ; preds = %164, %159, %153
  %171 = load %struct.query_info*, %struct.query_info** %6, align 8
  %172 = getelementptr inbounds %struct.query_info, %struct.query_info* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %178 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %179 = call i64 @nsec_has_type(%struct.ub_packed_rrset_key* %177, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.query_info*, %struct.query_info** %6, align 8
  %183 = getelementptr inbounds %struct.query_info, %struct.query_info* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @dname_is_root(i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %190

188:                                              ; preds = %181, %176, %170
  br label %189

189:                                              ; preds = %188
  store i32 1, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %187, %169, %152, %146, %138, %131, %96, %95, %87, %76, %47, %29
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @log_assert(i32**) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i32 @nsec_get_next(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i64 @dname_strict_subdomain_c(i32*, i32*) #1

declare dso_local i64 @dname_canonical_compare(i32*, i32*) #1

declare dso_local i64 @dname_is_wild(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i64 @nsec_has_type(%struct.ub_packed_rrset_key*, i64) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @dname_is_root(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
