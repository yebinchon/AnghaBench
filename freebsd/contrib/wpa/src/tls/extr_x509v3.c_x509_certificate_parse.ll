; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_certificate_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i64, i32, i32, i64*, i32, i64*, i64* }
%struct.asn1_hdr = type { i64, i64, i32, i64* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"X509: Certificate did not start with a valid SEQUENCE - found class %d tag 0x%x\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"X509: Ignoring extra data after DER encoded certificate\00", align 1
@ASN1_TAG_BITSTRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"X509: Expected BITSTRING (signatureValue) - found class %d tag 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"X509: BITSTRING - %d unused bits\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"X509: Failed to allocate memory for signatureValue\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"X509: signature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.x509_certificate* @x509_certificate_parse(i64* %0, i64 %1) #0 {
  %3 = alloca %struct.x509_certificate*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.asn1_hdr, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.x509_certificate*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 48, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.x509_certificate* @os_zalloc(i32 %13)
  store %struct.x509_certificate* %14, %struct.x509_certificate** %10, align 8
  %15 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %16 = icmp eq %struct.x509_certificate* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

18:                                               ; preds = %2
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %20 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %19, i64 1
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @os_memcpy(%struct.x509_certificate* %20, i64* %21, i64 %22)
  %24 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %25 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %24, i64 1
  %26 = bitcast %struct.x509_certificate* %25 to i64*
  %27 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %28 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %27, i32 0, i32 5
  store i64* %26, i64** %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %31 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64*, i64** %4, align 8
  store i64* %32, i64** %7, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64* %35, i64** %8, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @asn1_get_next(i64* %36, i32 %38, %struct.asn1_hdr* %6)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %41, %18
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %56)
  %58 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %59 = call i32 @x509_certificate_free(%struct.x509_certificate* %58)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %7, align 8
  %63 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %8, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = ptrtoint i64* %66 to i64
  %69 = ptrtoint i64* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = icmp sgt i64 %65, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %75 = call i32 @x509_certificate_free(%struct.x509_certificate* %74)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %8, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = ptrtoint i64* %80 to i64
  %83 = ptrtoint i64* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 8
  %86 = icmp slt i64 %79, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %76
  %88 = load i32, i32* @MSG_MSGDUMP, align 4
  %89 = load i64*, i64** %7, align 8
  %90 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64*, i64** %8, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = ptrtoint i64* %94 to i64
  %101 = ptrtoint i64* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @wpa_hexdump(i32 %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64* %93, i32 %104)
  %106 = load i64*, i64** %7, align 8
  %107 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  store i64* %110, i64** %8, align 8
  br label %111

111:                                              ; preds = %87, %76
  %112 = load i64*, i64** %7, align 8
  store i64* %112, i64** %9, align 8
  %113 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %114 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %113, i32 0, i32 5
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = load i64*, i64** %4, align 8
  %118 = ptrtoint i64* %116 to i64
  %119 = ptrtoint i64* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 8
  %122 = getelementptr inbounds i64, i64* %115, i64 %121
  %123 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %124 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %123, i32 0, i32 6
  store i64* %122, i64** %124, align 8
  %125 = load i64*, i64** %7, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i64*, i64** %7, align 8
  %128 = ptrtoint i64* %126 to i64
  %129 = ptrtoint i64* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %134 = call i64 @x509_parse_tbs_certificate(i64* %125, i32 %132, %struct.x509_certificate* %133, i64** %7)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %111
  %137 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %138 = call i32 @x509_certificate_free(%struct.x509_certificate* %137)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

139:                                              ; preds = %111
  %140 = load i64*, i64** %7, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = ptrtoint i64* %140 to i64
  %143 = ptrtoint i64* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %148 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load i64*, i64** %7, align 8
  %150 = load i64*, i64** %8, align 8
  %151 = load i64*, i64** %7, align 8
  %152 = ptrtoint i64* %150 to i64
  %153 = ptrtoint i64* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %158 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %157, i32 0, i32 4
  %159 = call i64 @x509_parse_algorithm_identifier(i64* %149, i32 %156, i32* %158, i64** %7)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %139
  %162 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %163 = call i32 @x509_certificate_free(%struct.x509_certificate* %162)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

164:                                              ; preds = %139
  %165 = load i64*, i64** %7, align 8
  %166 = load i64*, i64** %8, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = ptrtoint i64* %166 to i64
  %169 = ptrtoint i64* %167 to i64
  %170 = sub i64 %168, %169
  %171 = sdiv exact i64 %170, 8
  %172 = trunc i64 %171 to i32
  %173 = call i64 @asn1_get_next(i64* %165, i32 %172, %struct.asn1_hdr* %6)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ASN1_TAG_BITSTRING, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %180, %175, %164
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %188, i64 %190)
  %192 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %193 = call i32 @x509_certificate_free(%struct.x509_certificate* %192)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

194:                                              ; preds = %180
  %195 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %200 = call i32 @x509_certificate_free(%struct.x509_certificate* %199)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %203 = load i64*, i64** %202, align 8
  store i64* %203, i64** %7, align 8
  %204 = load i64*, i64** %7, align 8
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = load i64*, i64** %7, align 8
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (i32, i8*, ...) @wpa_printf(i32 %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %210)
  %212 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %213 = call i32 @x509_certificate_free(%struct.x509_certificate* %212)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

214:                                              ; preds = %201
  %215 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %216 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %215, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  %218 = call i32 @os_free(i64* %217)
  %219 = load i64*, i64** %7, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 1
  %221 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  %224 = call i64* @os_memdup(i64* %220, i32 %223)
  %225 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %226 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %225, i32 0, i32 3
  store i64* %224, i64** %226, align 8
  %227 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %228 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %227, i32 0, i32 3
  %229 = load i64*, i64** %228, align 8
  %230 = icmp eq i64* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %214
  %232 = load i32, i32* @MSG_DEBUG, align 4
  %233 = call i32 (i32, i8*, ...) @wpa_printf(i32 %232, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %234 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %235 = call i32 @x509_certificate_free(%struct.x509_certificate* %234)
  store %struct.x509_certificate* null, %struct.x509_certificate** %3, align 8
  br label %251

236:                                              ; preds = %214
  %237 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %238, 1
  %240 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %241 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @MSG_MSGDUMP, align 4
  %243 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %244 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %243, i32 0, i32 3
  %245 = load i64*, i64** %244, align 8
  %246 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %247 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @wpa_hexdump(i32 %242, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64* %245, i32 %248)
  %250 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  store %struct.x509_certificate* %250, %struct.x509_certificate** %3, align 8
  br label %251

251:                                              ; preds = %236, %231, %207, %198, %185, %161, %136, %73, %51, %17
  %252 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  ret %struct.x509_certificate* %252
}

declare dso_local %struct.x509_certificate* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(%struct.x509_certificate*, i64*, i64) #1

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @x509_certificate_free(%struct.x509_certificate*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i64 @x509_parse_tbs_certificate(i64*, i32, %struct.x509_certificate*, i64**) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i64*, i32, i32*, i64**) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64* @os_memdup(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
