; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_import_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_import_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum* }
%struct.bignum = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"RSA: Expected SEQUENCE (public key) - found class %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"RSA: Expected zero INTEGER in the beginning of private key; not found\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"RSA: Extra data in public key SEQUENCE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_rsa_key* @crypto_rsa_import_private_key(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_rsa_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_rsa_key*, align 8
  %7 = alloca %struct.bignum*, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call %struct.crypto_rsa_key* @os_zalloc(i32 72)
  store %struct.crypto_rsa_key* %11, %struct.crypto_rsa_key** %6, align 8
  %12 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %13 = icmp eq %struct.crypto_rsa_key* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %217

15:                                               ; preds = %2
  %16 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %17 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = call i8* (...) @bignum_init()
  %19 = bitcast i8* %18 to %struct.bignum*
  %20 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %21 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %20, i32 0, i32 8
  store %struct.bignum* %19, %struct.bignum** %21, align 8
  %22 = call i8* (...) @bignum_init()
  %23 = bitcast i8* %22 to %struct.bignum*
  %24 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %25 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %24, i32 0, i32 7
  store %struct.bignum* %23, %struct.bignum** %25, align 8
  %26 = call i8* (...) @bignum_init()
  %27 = bitcast i8* %26 to %struct.bignum*
  %28 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %28, i32 0, i32 6
  store %struct.bignum* %27, %struct.bignum** %29, align 8
  %30 = call i8* (...) @bignum_init()
  %31 = bitcast i8* %30 to %struct.bignum*
  %32 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %33 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %32, i32 0, i32 5
  store %struct.bignum* %31, %struct.bignum** %33, align 8
  %34 = call i8* (...) @bignum_init()
  %35 = bitcast i8* %34 to %struct.bignum*
  %36 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %37 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %36, i32 0, i32 4
  store %struct.bignum* %35, %struct.bignum** %37, align 8
  %38 = call i8* (...) @bignum_init()
  %39 = bitcast i8* %38 to %struct.bignum*
  %40 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %41 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %40, i32 0, i32 3
  store %struct.bignum* %39, %struct.bignum** %41, align 8
  %42 = call i8* (...) @bignum_init()
  %43 = bitcast i8* %42 to %struct.bignum*
  %44 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %45 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %44, i32 0, i32 2
  store %struct.bignum* %43, %struct.bignum** %45, align 8
  %46 = call i8* (...) @bignum_init()
  %47 = bitcast i8* %46 to %struct.bignum*
  %48 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %49 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %48, i32 0, i32 1
  store %struct.bignum* %47, %struct.bignum** %49, align 8
  %50 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %51 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %50, i32 0, i32 8
  %52 = load %struct.bignum*, %struct.bignum** %51, align 8
  %53 = icmp eq %struct.bignum* %52, null
  br i1 %53, label %89, label %54

54:                                               ; preds = %15
  %55 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %56 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %55, i32 0, i32 7
  %57 = load %struct.bignum*, %struct.bignum** %56, align 8
  %58 = icmp eq %struct.bignum* %57, null
  br i1 %58, label %89, label %59

59:                                               ; preds = %54
  %60 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %61 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %60, i32 0, i32 6
  %62 = load %struct.bignum*, %struct.bignum** %61, align 8
  %63 = icmp eq %struct.bignum* %62, null
  br i1 %63, label %89, label %64

64:                                               ; preds = %59
  %65 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %66 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %65, i32 0, i32 5
  %67 = load %struct.bignum*, %struct.bignum** %66, align 8
  %68 = icmp eq %struct.bignum* %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %64
  %70 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %71 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %70, i32 0, i32 4
  %72 = load %struct.bignum*, %struct.bignum** %71, align 8
  %73 = icmp eq %struct.bignum* %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %69
  %75 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %76 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %75, i32 0, i32 3
  %77 = load %struct.bignum*, %struct.bignum** %76, align 8
  %78 = icmp eq %struct.bignum* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %81 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %80, i32 0, i32 2
  %82 = load %struct.bignum*, %struct.bignum** %81, align 8
  %83 = icmp eq %struct.bignum* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %86 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %85, i32 0, i32 1
  %87 = load %struct.bignum*, %struct.bignum** %86, align 8
  %88 = icmp eq %struct.bignum* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %79, %74, %69, %64, %59, %54, %15
  %90 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %91 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %90)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %217

92:                                               ; preds = %84
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @asn1_get_next(i32* %93, i64 %94, %struct.asn1_hdr* %8)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %102, %97, %92
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %110, i64 %112)
  br label %214

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %9, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32* %121, i32** %10, align 8
  %122 = call i8* (...) @bignum_init()
  %123 = bitcast i8* %122 to %struct.bignum*
  store %struct.bignum* %123, %struct.bignum** %7, align 8
  %124 = load %struct.bignum*, %struct.bignum** %7, align 8
  %125 = icmp eq %struct.bignum* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %214

127:                                              ; preds = %114
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.bignum*, %struct.bignum** %7, align 8
  %131 = call i32* @crypto_rsa_parse_integer(i32* %128, i32* %129, %struct.bignum* %130)
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = load %struct.bignum*, %struct.bignum** %7, align 8
  %136 = call i64 @bignum_cmp_d(%struct.bignum* %135, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134, %127
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.bignum*, %struct.bignum** %7, align 8
  %142 = call i32 @bignum_deinit(%struct.bignum* %141)
  br label %214

143:                                              ; preds = %134
  %144 = load %struct.bignum*, %struct.bignum** %7, align 8
  %145 = call i32 @bignum_deinit(%struct.bignum* %144)
  %146 = load i32*, i32** %9, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %149 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %148, i32 0, i32 8
  %150 = load %struct.bignum*, %struct.bignum** %149, align 8
  %151 = call i32* @crypto_rsa_parse_integer(i32* %146, i32* %147, %struct.bignum* %150)
  store i32* %151, i32** %9, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %155 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %154, i32 0, i32 7
  %156 = load %struct.bignum*, %struct.bignum** %155, align 8
  %157 = call i32* @crypto_rsa_parse_integer(i32* %152, i32* %153, %struct.bignum* %156)
  store i32* %157, i32** %9, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %161 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %160, i32 0, i32 6
  %162 = load %struct.bignum*, %struct.bignum** %161, align 8
  %163 = call i32* @crypto_rsa_parse_integer(i32* %158, i32* %159, %struct.bignum* %162)
  store i32* %163, i32** %9, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %167 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %166, i32 0, i32 5
  %168 = load %struct.bignum*, %struct.bignum** %167, align 8
  %169 = call i32* @crypto_rsa_parse_integer(i32* %164, i32* %165, %struct.bignum* %168)
  store i32* %169, i32** %9, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %173 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %172, i32 0, i32 4
  %174 = load %struct.bignum*, %struct.bignum** %173, align 8
  %175 = call i32* @crypto_rsa_parse_integer(i32* %170, i32* %171, %struct.bignum* %174)
  store i32* %175, i32** %9, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %179 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %178, i32 0, i32 3
  %180 = load %struct.bignum*, %struct.bignum** %179, align 8
  %181 = call i32* @crypto_rsa_parse_integer(i32* %176, i32* %177, %struct.bignum* %180)
  store i32* %181, i32** %9, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %185 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %184, i32 0, i32 2
  %186 = load %struct.bignum*, %struct.bignum** %185, align 8
  %187 = call i32* @crypto_rsa_parse_integer(i32* %182, i32* %183, %struct.bignum* %186)
  store i32* %187, i32** %9, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = load i32*, i32** %10, align 8
  %190 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %191 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %190, i32 0, i32 1
  %192 = load %struct.bignum*, %struct.bignum** %191, align 8
  %193 = call i32* @crypto_rsa_parse_integer(i32* %188, i32* %189, %struct.bignum* %192)
  store i32* %193, i32** %9, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %143
  br label %214

197:                                              ; preds = %143
  %198 = load i32*, i32** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = icmp ne i32* %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = call i32 @wpa_hexdump(i32 %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %203, i32 %210)
  br label %214

212:                                              ; preds = %197
  %213 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  store %struct.crypto_rsa_key* %213, %struct.crypto_rsa_key** %3, align 8
  br label %217

214:                                              ; preds = %201, %196, %138, %126, %107
  %215 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %216 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %215)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %217

217:                                              ; preds = %214, %212, %89, %14
  %218 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %3, align 8
  ret %struct.crypto_rsa_key* %218
}

declare dso_local %struct.crypto_rsa_key* @os_zalloc(i32) #1

declare dso_local i8* @bignum_init(...) #1

declare dso_local i32 @crypto_rsa_free(%struct.crypto_rsa_key*) #1

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @crypto_rsa_parse_integer(i32*, i32*, %struct.bignum*) #1

declare dso_local i64 @bignum_cmp_d(%struct.bignum*, i32) #1

declare dso_local i32 @bignum_deinit(%struct.bignum*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
