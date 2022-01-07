; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rdf_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rdf_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rdf_scan(i32** %0, i64* %1, i8** %2, i64* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32** %0, i32*** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %238

20:                                               ; preds = %7
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %237 [
    i32 142, label %22
    i32 155, label %23
    i32 146, label %31
    i32 149, label %37
    i32 147, label %43
    i32 137, label %49
    i32 131, label %55
    i32 164, label %61
    i32 163, label %67
    i32 135, label %73
    i32 161, label %79
    i32 159, label %85
    i32 158, label %91
    i32 152, label %97
    i32 140, label %103
    i32 138, label %109
    i32 130, label %115
    i32 156, label %121
    i32 157, label %127
    i32 162, label %133
    i32 129, label %139
    i32 133, label %145
    i32 144, label %151
    i32 128, label %157
    i32 136, label %157
    i32 141, label %163
    i32 160, label %169
    i32 145, label %175
    i32 151, label %183
    i32 148, label %189
    i32 139, label %195
    i32 150, label %201
    i32 154, label %207
    i32 153, label %213
    i32 134, label %219
    i32 143, label %225
    i32 132, label %231
  ]

22:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %238

23:                                               ; preds = %20
  %24 = load i32**, i32*** %9, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = call i32 @sldns_wire2str_dname_scan(i32** %24, i64* %25, i8** %26, i64* %27, i32* %28, i64 %29)
  store i32 %30, i32* %8, align 4
  br label %238

31:                                               ; preds = %20
  %32 = load i32**, i32*** %9, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = call i32 @sldns_wire2str_int8_scan(i32** %32, i64* %33, i8** %34, i64* %35)
  store i32 %36, i32* %8, align 4
  br label %238

37:                                               ; preds = %20
  %38 = load i32**, i32*** %9, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = call i32 @sldns_wire2str_int16_scan(i32** %38, i64* %39, i8** %40, i64* %41)
  store i32 %42, i32* %8, align 4
  br label %238

43:                                               ; preds = %20
  %44 = load i32**, i32*** %9, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i8**, i8*** %11, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = call i32 @sldns_wire2str_int32_scan(i32** %44, i64* %45, i8** %46, i64* %47)
  store i32 %48, i32* %8, align 4
  br label %238

49:                                               ; preds = %20
  %50 = load i32**, i32*** %9, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = load i8**, i8*** %11, align 8
  %53 = load i64*, i64** %12, align 8
  %54 = call i32 @sldns_wire2str_period_scan(i32** %50, i64* %51, i8** %52, i64* %53)
  store i32 %54, i32* %8, align 4
  br label %238

55:                                               ; preds = %20
  %56 = load i32**, i32*** %9, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i8**, i8*** %11, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = call i32 @sldns_wire2str_tsigtime_scan(i32** %56, i64* %57, i8** %58, i64* %59)
  store i32 %60, i32* %8, align 4
  br label %238

61:                                               ; preds = %20
  %62 = load i32**, i32*** %9, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = load i8**, i8*** %11, align 8
  %65 = load i64*, i64** %12, align 8
  %66 = call i32 @sldns_wire2str_a_scan(i32** %62, i64* %63, i8** %64, i64* %65)
  store i32 %66, i32* %8, align 4
  br label %238

67:                                               ; preds = %20
  %68 = load i32**, i32*** %9, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = load i64*, i64** %12, align 8
  %72 = call i32 @sldns_wire2str_aaaa_scan(i32** %68, i64* %69, i8** %70, i64* %71)
  store i32 %72, i32* %8, align 4
  br label %238

73:                                               ; preds = %20
  %74 = load i32**, i32*** %9, align 8
  %75 = load i64*, i64** %10, align 8
  %76 = load i8**, i8*** %11, align 8
  %77 = load i64*, i64** %12, align 8
  %78 = call i32 @sldns_wire2str_str_scan(i32** %74, i64* %75, i8** %76, i64* %77)
  store i32 %78, i32* %8, align 4
  br label %238

79:                                               ; preds = %20
  %80 = load i32**, i32*** %9, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = load i8**, i8*** %11, align 8
  %83 = load i64*, i64** %12, align 8
  %84 = call i32 @sldns_wire2str_apl_scan(i32** %80, i64* %81, i8** %82, i64* %83)
  store i32 %84, i32* %8, align 4
  br label %238

85:                                               ; preds = %20
  %86 = load i32**, i32*** %9, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i8**, i8*** %11, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = call i32 @sldns_wire2str_b32_ext_scan(i32** %86, i64* %87, i8** %88, i64* %89)
  store i32 %90, i32* %8, align 4
  br label %238

91:                                               ; preds = %20
  %92 = load i32**, i32*** %9, align 8
  %93 = load i64*, i64** %10, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = call i32 @sldns_wire2str_b64_scan(i32** %92, i64* %93, i8** %94, i64* %95)
  store i32 %96, i32* %8, align 4
  br label %238

97:                                               ; preds = %20
  %98 = load i32**, i32*** %9, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i8**, i8*** %11, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = call i32 @sldns_wire2str_hex_scan(i32** %98, i64* %99, i8** %100, i64* %101)
  store i32 %102, i32* %8, align 4
  br label %238

103:                                              ; preds = %20
  %104 = load i32**, i32*** %9, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = load i8**, i8*** %11, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = call i32 @sldns_wire2str_nsec_scan(i32** %104, i64* %105, i8** %106, i64* %107)
  store i32 %108, i32* %8, align 4
  br label %238

109:                                              ; preds = %20
  %110 = load i32**, i32*** %9, align 8
  %111 = load i64*, i64** %10, align 8
  %112 = load i8**, i8*** %11, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = call i32 @sldns_wire2str_nsec3_salt_scan(i32** %110, i64* %111, i8** %112, i64* %113)
  store i32 %114, i32* %8, align 4
  br label %238

115:                                              ; preds = %20
  %116 = load i32**, i32*** %9, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = load i8**, i8*** %11, align 8
  %119 = load i64*, i64** %12, align 8
  %120 = call i32 @sldns_wire2str_type_scan(i32** %116, i64* %117, i8** %118, i64* %119)
  store i32 %120, i32* %8, align 4
  br label %238

121:                                              ; preds = %20
  %122 = load i32**, i32*** %9, align 8
  %123 = load i64*, i64** %10, align 8
  %124 = load i8**, i8*** %11, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = call i32 @sldns_wire2str_class_scan(i32** %122, i64* %123, i8** %124, i64* %125)
  store i32 %126, i32* %8, align 4
  br label %238

127:                                              ; preds = %20
  %128 = load i32**, i32*** %9, align 8
  %129 = load i64*, i64** %10, align 8
  %130 = load i8**, i8*** %11, align 8
  %131 = load i64*, i64** %12, align 8
  %132 = call i32 @sldns_wire2str_cert_alg_scan(i32** %128, i64* %129, i8** %130, i64* %131)
  store i32 %132, i32* %8, align 4
  br label %238

133:                                              ; preds = %20
  %134 = load i32**, i32*** %9, align 8
  %135 = load i64*, i64** %10, align 8
  %136 = load i8**, i8*** %11, align 8
  %137 = load i64*, i64** %12, align 8
  %138 = call i32 @sldns_wire2str_alg_scan(i32** %134, i64* %135, i8** %136, i64* %137)
  store i32 %138, i32* %8, align 4
  br label %238

139:                                              ; preds = %20
  %140 = load i32**, i32*** %9, align 8
  %141 = load i64*, i64** %10, align 8
  %142 = load i8**, i8*** %11, align 8
  %143 = load i64*, i64** %12, align 8
  %144 = call i32 @sldns_wire2str_unknown_scan(i32** %140, i64* %141, i8** %142, i64* %143)
  store i32 %144, i32* %8, align 4
  br label %238

145:                                              ; preds = %20
  %146 = load i32**, i32*** %9, align 8
  %147 = load i64*, i64** %10, align 8
  %148 = load i8**, i8*** %11, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = call i32 @sldns_wire2str_time_scan(i32** %146, i64* %147, i8** %148, i64* %149)
  store i32 %150, i32* %8, align 4
  br label %238

151:                                              ; preds = %20
  %152 = load i32**, i32*** %9, align 8
  %153 = load i64*, i64** %10, align 8
  %154 = load i8**, i8*** %11, align 8
  %155 = load i64*, i64** %12, align 8
  %156 = call i32 @sldns_wire2str_loc_scan(i32** %152, i64* %153, i8** %154, i64* %155)
  store i32 %156, i32* %8, align 4
  br label %238

157:                                              ; preds = %20, %20
  %158 = load i32**, i32*** %9, align 8
  %159 = load i64*, i64** %10, align 8
  %160 = load i8**, i8*** %11, align 8
  %161 = load i64*, i64** %12, align 8
  %162 = call i32 @sldns_wire2str_wks_scan(i32** %158, i64* %159, i8** %160, i64* %161)
  store i32 %162, i32* %8, align 4
  br label %238

163:                                              ; preds = %20
  %164 = load i32**, i32*** %9, align 8
  %165 = load i64*, i64** %10, align 8
  %166 = load i8**, i8*** %11, align 8
  %167 = load i64*, i64** %12, align 8
  %168 = call i32 @sldns_wire2str_nsap_scan(i32** %164, i64* %165, i8** %166, i64* %167)
  store i32 %168, i32* %8, align 4
  br label %238

169:                                              ; preds = %20
  %170 = load i32**, i32*** %9, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = load i8**, i8*** %11, align 8
  %173 = load i64*, i64** %12, align 8
  %174 = call i32 @sldns_wire2str_atma_scan(i32** %170, i64* %171, i8** %172, i64* %173)
  store i32 %174, i32* %8, align 4
  br label %238

175:                                              ; preds = %20
  %176 = load i32**, i32*** %9, align 8
  %177 = load i64*, i64** %10, align 8
  %178 = load i8**, i8*** %11, align 8
  %179 = load i64*, i64** %12, align 8
  %180 = load i32*, i32** %14, align 8
  %181 = load i64, i64* %15, align 8
  %182 = call i32 @sldns_wire2str_ipseckey_scan(i32** %176, i64* %177, i8** %178, i64* %179, i32* %180, i64 %181)
  store i32 %182, i32* %8, align 4
  br label %238

183:                                              ; preds = %20
  %184 = load i32**, i32*** %9, align 8
  %185 = load i64*, i64** %10, align 8
  %186 = load i8**, i8*** %11, align 8
  %187 = load i64*, i64** %12, align 8
  %188 = call i32 @sldns_wire2str_hip_scan(i32** %184, i64* %185, i8** %186, i64* %187)
  store i32 %188, i32* %8, align 4
  br label %238

189:                                              ; preds = %20
  %190 = load i32**, i32*** %9, align 8
  %191 = load i64*, i64** %10, align 8
  %192 = load i8**, i8*** %11, align 8
  %193 = load i64*, i64** %12, align 8
  %194 = call i32 @sldns_wire2str_int16_data_scan(i32** %190, i64* %191, i8** %192, i64* %193)
  store i32 %194, i32* %8, align 4
  br label %238

195:                                              ; preds = %20
  %196 = load i32**, i32*** %9, align 8
  %197 = load i64*, i64** %10, align 8
  %198 = load i8**, i8*** %11, align 8
  %199 = load i64*, i64** %12, align 8
  %200 = call i32 @sldns_wire2str_b32_ext_scan(i32** %196, i64* %197, i8** %198, i64* %199)
  store i32 %200, i32* %8, align 4
  br label %238

201:                                              ; preds = %20
  %202 = load i32**, i32*** %9, align 8
  %203 = load i64*, i64** %10, align 8
  %204 = load i8**, i8*** %11, align 8
  %205 = load i64*, i64** %12, align 8
  %206 = call i32 @sldns_wire2str_ilnp64_scan(i32** %202, i64* %203, i8** %204, i64* %205)
  store i32 %206, i32* %8, align 4
  br label %238

207:                                              ; preds = %20
  %208 = load i32**, i32*** %9, align 8
  %209 = load i64*, i64** %10, align 8
  %210 = load i8**, i8*** %11, align 8
  %211 = load i64*, i64** %12, align 8
  %212 = call i32 @sldns_wire2str_eui48_scan(i32** %208, i64* %209, i8** %210, i64* %211)
  store i32 %212, i32* %8, align 4
  br label %238

213:                                              ; preds = %20
  %214 = load i32**, i32*** %9, align 8
  %215 = load i64*, i64** %10, align 8
  %216 = load i8**, i8*** %11, align 8
  %217 = load i64*, i64** %12, align 8
  %218 = call i32 @sldns_wire2str_eui64_scan(i32** %214, i64* %215, i8** %216, i64* %217)
  store i32 %218, i32* %8, align 4
  br label %238

219:                                              ; preds = %20
  %220 = load i32**, i32*** %9, align 8
  %221 = load i64*, i64** %10, align 8
  %222 = load i8**, i8*** %11, align 8
  %223 = load i64*, i64** %12, align 8
  %224 = call i32 @sldns_wire2str_tag_scan(i32** %220, i64* %221, i8** %222, i64* %223)
  store i32 %224, i32* %8, align 4
  br label %238

225:                                              ; preds = %20
  %226 = load i32**, i32*** %9, align 8
  %227 = load i64*, i64** %10, align 8
  %228 = load i8**, i8*** %11, align 8
  %229 = load i64*, i64** %12, align 8
  %230 = call i32 @sldns_wire2str_long_str_scan(i32** %226, i64* %227, i8** %228, i64* %229)
  store i32 %230, i32* %8, align 4
  br label %238

231:                                              ; preds = %20
  %232 = load i32**, i32*** %9, align 8
  %233 = load i64*, i64** %10, align 8
  %234 = load i8**, i8*** %11, align 8
  %235 = load i64*, i64** %12, align 8
  %236 = call i32 @sldns_wire2str_tsigerror_scan(i32** %232, i64* %233, i8** %234, i64* %235)
  store i32 %236, i32* %8, align 4
  br label %238

237:                                              ; preds = %20
  store i32 -1, i32* %8, align 4
  br label %238

238:                                              ; preds = %237, %231, %225, %219, %213, %207, %201, %195, %189, %183, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %115, %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %23, %22, %19
  %239 = load i32, i32* %8, align 4
  ret i32 %239
}

declare dso_local i32 @sldns_wire2str_dname_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_int8_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_int16_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_int32_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_period_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_tsigtime_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_a_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_aaaa_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_str_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_apl_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_b32_ext_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_b64_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_hex_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_nsec_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_nsec3_salt_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_type_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_class_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_cert_alg_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_alg_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_unknown_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_time_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_loc_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_wks_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_nsap_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_atma_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_ipseckey_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_hip_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_int16_data_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_ilnp64_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_eui48_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_eui64_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_tag_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_long_str_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_tsigerror_scan(i32**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
