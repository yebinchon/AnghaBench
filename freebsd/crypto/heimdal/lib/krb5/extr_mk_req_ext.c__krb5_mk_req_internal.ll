; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_mk_req_ext.c__krb5_mk_req_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_mk_req_ext.c__krb5_mk_req_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@AP_OPTS_USE_SUBKEY = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_CRC = common dso_local global i64 0, align 8
@CKSUMTYPE_RSA_MD4 = common dso_local global i32 0, align 4
@ETYPE_ARCFOUR_HMAC_MD5 = common dso_local global i64 0, align 8
@ETYPE_ARCFOUR_HMAC_MD5_56 = common dso_local global i64 0, align 8
@ETYPE_DES_CBC_MD4 = common dso_local global i64 0, align 8
@ETYPE_DES_CBC_MD5 = common dso_local global i64 0, align 8
@CKSUMTYPE_RSA_MD5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_mk_req_internal(i32 %0, %struct.TYPE_22__** %1, i32 %2, %struct.TYPE_20__* %3, %struct.TYPE_21__* %4, %struct.TYPE_20__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_20__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %11, align 8
  %25 = icmp ne %struct.TYPE_22__** %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %8
  %27 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %11, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = icmp eq %struct.TYPE_22__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %11, align 8
  %33 = call i64 @krb5_auth_con_init(i32 %31, %struct.TYPE_22__** %32)
  store i64 %33, i64* %18, align 8
  br label %35

34:                                               ; preds = %26
  store i64 0, i64* %18, align 8
  br label %35

35:                                               ; preds = %34, %30
  %36 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %11, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %22, align 8
  br label %41

38:                                               ; preds = %8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @krb5_auth_con_init(i32 %39, %struct.TYPE_22__** %22)
  store i64 %40, i64* %18, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %18, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* %18, align 8
  store i64 %45, i64* %9, align 8
  br label %217

46:                                               ; preds = %41
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @AP_OPTS_USE_SUBKEY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = call i64 @krb5_auth_con_generatelocalsubkey(i32 %57, %struct.TYPE_22__* %58, i32* %60)
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %18, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %208

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %51, %46
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  %71 = call i32 @krb5_free_keyblock(i32 %67, %struct.TYPE_23__* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = call i64 @krb5_copy_keyblock(i32 %72, i32* %74, %struct.TYPE_23__** %76)
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %18, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %208

81:                                               ; preds = %66
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %83 = icmp ne %struct.TYPE_20__* %82, null
  br i1 %83, label %84, label %169

84:                                               ; preds = %81
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ETYPE_DES_CBC_CRC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @CKSUMTYPE_RSA_MD4, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @krb5_create_checksum(i32 %93, i32* null, i32 0, i32 %94, i32 %97, i32 %100, i32* %20)
  store i64 %101, i64* %18, align 8
  br label %168

102:                                              ; preds = %84
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ETYPE_ARCFOUR_HMAC_MD5, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %134, label %110

110:                                              ; preds = %102
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ETYPE_ARCFOUR_HMAC_MD5_56, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ETYPE_DES_CBC_MD4, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ETYPE_DES_CBC_MD5, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %126, %118, %110, %102
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @krb5_create_checksum(i32 %135, i32* null, i32 0, i32 %136, i32 %139, i32 %142, i32* %20)
  store i64 %143, i64* %18, align 8
  br label %167

144:                                              ; preds = %126
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = call i64 @krb5_crypto_init(i32 %145, %struct.TYPE_23__* %148, i32 0, i32** %23)
  store i64 %149, i64* %18, align 8
  %150 = load i64, i64* %18, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %208

153:                                              ; preds = %144
  %154 = load i32, i32* %10, align 4
  %155 = load i32*, i32** %23, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @krb5_create_checksum(i32 %154, i32* %155, i32 %156, i32 0, i32 %159, i32 %162, i32* %20)
  store i64 %163, i64* %18, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32*, i32** %23, align 8
  %166 = call i32 @krb5_crypto_destroy(i32 %164, i32* %165)
  br label %167

167:                                              ; preds = %153, %134
  br label %168

168:                                              ; preds = %167, %92
  store i32* %20, i32** %21, align 8
  br label %170

169:                                              ; preds = %81
  store i32* null, i32** %21, align 8
  br label %170

170:                                              ; preds = %169, %168
  %171 = load i64, i64* %18, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %208

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %183 = load i32*, i32** %21, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i64 @_krb5_build_authenticator(i32 %175, %struct.TYPE_22__* %176, i64 %181, %struct.TYPE_21__* %182, i32* %183, %struct.TYPE_20__* %19, i32 %184)
  store i64 %185, i64* %18, align 8
  %186 = load i32*, i32** %21, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %174
  %189 = load i32*, i32** %21, align 8
  %190 = call i32 @free_Checksum(i32* %189)
  br label %191

191:                                              ; preds = %188, %174
  %192 = load i64, i64* %18, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %208

195:                                              ; preds = %191
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %205 = bitcast %struct.TYPE_20__* %19 to i64*
  %206 = load i64, i64* %205, align 4
  %207 = call i64 @krb5_build_ap_req(i32 %196, i64 %201, %struct.TYPE_21__* %202, i32 %203, i64 %206, %struct.TYPE_20__* %204)
  store i64 %207, i64* %18, align 8
  br label %208

208:                                              ; preds = %195, %194, %173, %152, %80, %64
  %209 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %11, align 8
  %210 = icmp eq %struct.TYPE_22__** %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %214 = call i32 @krb5_auth_con_free(i32 %212, %struct.TYPE_22__* %213)
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i64, i64* %18, align 8
  store i64 %216, i64* %9, align 8
  br label %217

217:                                              ; preds = %215, %44
  %218 = load i64, i64* %9, align 8
  ret i64 %218
}

declare dso_local i64 @krb5_auth_con_init(i32, %struct.TYPE_22__**) #1

declare dso_local i64 @krb5_auth_con_generatelocalsubkey(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @krb5_free_keyblock(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @krb5_copy_keyblock(i32, i32*, %struct.TYPE_23__**) #1

declare dso_local i64 @krb5_create_checksum(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @krb5_crypto_init(i32, %struct.TYPE_23__*, i32, i32**) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32*) #1

declare dso_local i64 @_krb5_build_authenticator(i32, %struct.TYPE_22__*, i64, %struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @free_Checksum(i32*) #1

declare dso_local i64 @krb5_build_ap_req(i32, i64, %struct.TYPE_21__*, i32, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @krb5_auth_con_free(i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
