; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_prepare_query_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_prepare_query_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_INT32 = common dso_local global i32 0, align 4
@LDNS_CD = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_resolver_prepare_query_pkt(i32** %0, i32* %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %15, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %152

27:                                               ; preds = %6
  %28 = call i32* (...) @ldns_rr_new()
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %32, i64* %7, align 8
  br label %237

33:                                               ; preds = %27
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @ldns_rdf_clone(i32* %34)
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @ldns_rr_free(i32* %39)
  %41 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %41, i64* %7, align 8
  br label %237

42:                                               ; preds = %33
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = call i32 @ldns_rr_set_owner(i32* %43, i32* %44)
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %48 = call i32 @ldns_rr_set_type(i32* %46, i32 %47)
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ldns_rr_set_class(i32* %49, i32 %50)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @ldns_rr_set_question(i32* %52, i32 0)
  %54 = call i64 @ldns_str2rdf_dname(i32** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* @LDNS_STATUS_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @ldns_rr_free(i32* %58)
  %60 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %60, i64* %7, align 8
  br label %237

61:                                               ; preds = %42
  %62 = load i32*, i32** %15, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @ldns_rr_push_rdf(i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %61
  %66 = call i64 @ldns_str2rdf_dname(i32** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %67 = load i64, i64* @LDNS_STATUS_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @ldns_rr_free(i32* %70)
  %72 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %72, i64* %7, align 8
  br label %237

73:                                               ; preds = %65
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = call i32 @ldns_rr_push_rdf(i32* %74, i32* %75)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @ldns_resolver_get_ixfr_serial(i32* %79)
  %81 = call i32* @ldns_native2rdf_int32(i32 %78, i32 %80)
  store i32* %81, i32** %19, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @ldns_rr_free(i32* %85)
  %87 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %87, i64* %7, align 8
  br label %237

88:                                               ; preds = %77
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = call i32 @ldns_rr_push_rdf(i32* %89, i32* %90)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %94 = call i32* @ldns_native2rdf_int32(i32 %93, i32 0)
  store i32* %94, i32** %20, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @ldns_rr_free(i32* %98)
  %100 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %100, i64* %7, align 8
  br label %237

101:                                              ; preds = %92
  %102 = load i32*, i32** %15, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @ldns_rr_push_rdf(i32* %102, i32* %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %107 = call i32* @ldns_native2rdf_int32(i32 %106, i32 0)
  store i32* %107, i32** %21, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @ldns_rr_free(i32* %111)
  %113 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %113, i64* %7, align 8
  br label %237

114:                                              ; preds = %105
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %21, align 8
  %117 = call i32 @ldns_rr_push_rdf(i32* %115, i32* %116)
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %120 = call i32* @ldns_native2rdf_int32(i32 %119, i32 0)
  store i32* %120, i32** %22, align 8
  %121 = load i32*, i32** %22, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @ldns_rr_free(i32* %124)
  %126 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %126, i64* %7, align 8
  br label %237

127:                                              ; preds = %118
  %128 = load i32*, i32** %15, align 8
  %129 = load i32*, i32** %22, align 8
  %130 = call i32 @ldns_rr_push_rdf(i32* %128, i32* %129)
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @LDNS_RDF_TYPE_INT32, align 4
  %133 = call i32* @ldns_native2rdf_int32(i32 %132, i32 0)
  store i32* %133, i32** %23, align 8
  %134 = load i32*, i32** %23, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @ldns_rr_free(i32* %137)
  %139 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %139, i64* %7, align 8
  br label %237

140:                                              ; preds = %131
  %141 = load i32*, i32** %15, align 8
  %142 = load i32*, i32** %23, align 8
  %143 = call i32 @ldns_rr_push_rdf(i32* %141, i32* %142)
  br label %144

144:                                              ; preds = %140
  %145 = load i32*, i32** %10, align 8
  %146 = call i32* @ldns_rdf_clone(i32* %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = call i32* @ldns_pkt_ixfr_request_new(i32* %146, i32 %147, i32 %148, i32* %149)
  %151 = load i32**, i32*** %8, align 8
  store i32* %150, i32** %151, align 8
  br label %160

152:                                              ; preds = %6
  %153 = load i32*, i32** %10, align 8
  %154 = call i32* @ldns_rdf_clone(i32* %153)
  %155 = load i64, i64* %11, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32* @ldns_pkt_query_new(i32* %154, i64 %155, i32 %156, i32 %157)
  %159 = load i32**, i32*** %8, align 8
  store i32* %158, i32** %159, align 8
  br label %160

160:                                              ; preds = %152, %144
  %161 = load i32**, i32*** %8, align 8
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @ldns_rr_free(i32* %165)
  %167 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %167, i64* %7, align 8
  br label %237

168:                                              ; preds = %160
  %169 = load i32*, i32** %9, align 8
  %170 = call i64 @ldns_resolver_dnssec(i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %168
  %173 = load i32*, i32** %9, align 8
  %174 = call i64 @ldns_resolver_edns_udp_size(i32* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @ldns_resolver_set_edns_udp_size(i32* %177, i32 4096)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32**, i32*** %8, align 8
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @ldns_pkt_set_edns_do(i32* %181, i32 1)
  %183 = load i32*, i32** %9, align 8
  %184 = call i64 @ldns_resolver_dnssec_cd(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @LDNS_CD, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186, %179
  %192 = load i32**, i32*** %8, align 8
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @ldns_pkt_set_cd(i32* %193, i32 1)
  br label %195

195:                                              ; preds = %191, %186
  br label %196

196:                                              ; preds = %195, %168
  %197 = load i32*, i32** %9, align 8
  %198 = call i64 @ldns_resolver_edns_udp_size(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32**, i32*** %8, align 8
  %202 = load i32*, i32** %201, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = call i64 @ldns_resolver_edns_udp_size(i32* %203)
  %205 = call i32 @ldns_pkt_set_edns_udp_size(i32* %202, i64 %204)
  br label %206

206:                                              ; preds = %200, %196
  %207 = call i32 @time(i32* null)
  %208 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 %207, i32* %208, align 8
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i64 0, i64* %209, align 8
  %210 = load i32**, i32*** %8, align 8
  %211 = load i32*, i32** %210, align 8
  %212 = bitcast %struct.timeval* %14 to { i64, i32 }*
  %213 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %212, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @ldns_pkt_set_timestamp(i32* %211, i64 %214, i32 %216)
  %218 = load i32*, i32** %9, align 8
  %219 = call i64 @ldns_resolver_debug(i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %206
  %222 = load i32, i32* @stdout, align 4
  %223 = load i32**, i32*** %8, align 8
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @ldns_pkt_print(i32 %222, i32* %224)
  br label %226

226:                                              ; preds = %221, %206
  %227 = load i32**, i32*** %8, align 8
  %228 = load i32*, i32** %227, align 8
  %229 = call i64 @ldns_pkt_id(i32* %228)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32**, i32*** %8, align 8
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @ldns_pkt_set_random_id(i32* %233)
  br label %235

235:                                              ; preds = %231, %226
  %236 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %236, i64* %7, align 8
  br label %237

237:                                              ; preds = %235, %164, %136, %123, %110, %97, %84, %69, %57, %38, %31
  %238 = load i64, i64* %7, align 8
  ret i64 %238
}

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_question(i32*, i32) #1

declare dso_local i64 @ldns_str2rdf_dname(i32**, i8*) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32*) #1

declare dso_local i32* @ldns_native2rdf_int32(i32, i32) #1

declare dso_local i32 @ldns_resolver_get_ixfr_serial(i32*) #1

declare dso_local i32* @ldns_pkt_ixfr_request_new(i32*, i32, i32, i32*) #1

declare dso_local i32* @ldns_pkt_query_new(i32*, i64, i32, i32) #1

declare dso_local i64 @ldns_resolver_dnssec(i32*) #1

declare dso_local i64 @ldns_resolver_edns_udp_size(i32*) #1

declare dso_local i32 @ldns_resolver_set_edns_udp_size(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_edns_do(i32*, i32) #1

declare dso_local i64 @ldns_resolver_dnssec_cd(i32*) #1

declare dso_local i32 @ldns_pkt_set_cd(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_edns_udp_size(i32*, i64) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ldns_pkt_set_timestamp(i32*, i64, i32) #1

declare dso_local i64 @ldns_resolver_debug(i32*) #1

declare dso_local i32 @ldns_pkt_print(i32, i32*) #1

declare dso_local i64 @ldns_pkt_id(i32*) #1

declare dso_local i32 @ldns_pkt_set_random_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
