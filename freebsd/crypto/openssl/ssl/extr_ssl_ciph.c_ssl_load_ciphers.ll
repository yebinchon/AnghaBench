; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_load_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_load_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@disabled_enc_mask = common dso_local global i32 0, align 4
@ssl_cipher_table_cipher = common dso_local global %struct.TYPE_4__* null, align 8
@SSL_ENC_NUM_IDX = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i64 0, align 8
@ssl_cipher_methods = common dso_local global i32** null, align 8
@disabled_mac_mask = common dso_local global i32 0, align 4
@ssl_cipher_table_mac = common dso_local global %struct.TYPE_4__* null, align 8
@SSL_MD_NUM_IDX = common dso_local global i64 0, align 8
@ssl_digest_methods = common dso_local global i32** null, align 8
@ssl_mac_secret_size = common dso_local global i32* null, align 8
@SSL_MD_MD5_IDX = common dso_local global i64 0, align 8
@SSL_MD_SHA1_IDX = common dso_local global i64 0, align 8
@disabled_mkey_mask = common dso_local global i32 0, align 4
@disabled_auth_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gost-mac\00", align 1
@ssl_mac_pkey_id = common dso_local global i64* null, align 8
@SSL_MD_GOST89MAC_IDX = common dso_local global i64 0, align 8
@SSL_GOST89MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gost-mac-12\00", align 1
@SSL_MD_GOST89MAC12_IDX = common dso_local global i64 0, align 8
@SSL_GOST89MAC12 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"gost2001\00", align 1
@SSL_aGOST01 = common dso_local global i32 0, align 4
@SSL_aGOST12 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"gost2012_256\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gost2012_512\00", align 1
@SSL_kGOST = common dso_local global i32 0, align 4
@SSL_PSK = common dso_local global i32 0, align 4
@SSL_aDSS = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@SSL_kDHE = common dso_local global i32 0, align 4
@SSL_kDHEPSK = common dso_local global i32 0, align 4
@SSL_kECDHE = common dso_local global i32 0, align 4
@SSL_kECDHEPSK = common dso_local global i32 0, align 4
@SSL_kRSA = common dso_local global i32 0, align 4
@SSL_kRSAPSK = common dso_local global i32 0, align 4
@SSL_kSRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_load_ciphers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* @disabled_enc_mask, align 4
  %7 = call i32 (...) @ssl_sort_cipher_list()
  store i64 0, i64* %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssl_cipher_table_cipher, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  br label %9

9:                                                ; preds = %42, %0
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @SSL_ENC_NUM_IDX, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NID_undef, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32**, i32*** @ssl_cipher_methods, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  store i32* null, i32** %22, align 8
  br label %41

23:                                               ; preds = %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @EVP_get_cipherbynid(i64 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32**, i32*** @ssl_cipher_methods, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* %28, i32** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @disabled_enc_mask, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @disabled_enc_mask, align 4
  br label %40

40:                                               ; preds = %34, %23
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %2, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 1
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %3, align 8
  br label %9

47:                                               ; preds = %9
  store i32 0, i32* @disabled_mac_mask, align 4
  store i64 0, i64* %2, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssl_cipher_table_mac, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %3, align 8
  br label %49

49:                                               ; preds = %85, %47
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @SSL_MD_NUM_IDX, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32* @EVP_get_digestbynid(i64 %56)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32**, i32*** @ssl_digest_methods, align 8
  %60 = load i64, i64* %2, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  store i32* %58, i32** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @disabled_mac_mask, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @disabled_mac_mask, align 4
  br label %84

70:                                               ; preds = %53
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @EVP_MD_size(i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ossl_assert(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  store i32 0, i32* %1, align 4
  br label %184

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** @ssl_mac_secret_size, align 8
  %82 = load i64, i64* %2, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %64
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %2, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %2, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 1
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %3, align 8
  br label %49

90:                                               ; preds = %49
  %91 = load i32**, i32*** @ssl_digest_methods, align 8
  %92 = load i64, i64* @SSL_MD_MD5_IDX, align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @ossl_assert(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  store i32 0, i32* %1, align 4
  br label %184

100:                                              ; preds = %90
  %101 = load i32**, i32*** @ssl_digest_methods, align 8
  %102 = load i64, i64* @SSL_MD_SHA1_IDX, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @ossl_assert(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  store i32 0, i32* %1, align 4
  br label %184

110:                                              ; preds = %100
  store i32 0, i32* @disabled_mkey_mask, align 4
  store i32 0, i32* @disabled_auth_mask, align 4
  %111 = call i64 @get_optional_pkey_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %112 = load i64*, i64** @ssl_mac_pkey_id, align 8
  %113 = load i64, i64* @SSL_MD_GOST89MAC_IDX, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %111, i64* %114, align 8
  %115 = load i64*, i64** @ssl_mac_pkey_id, align 8
  %116 = load i64, i64* @SSL_MD_GOST89MAC_IDX, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i32*, i32** @ssl_mac_secret_size, align 8
  %122 = load i64, i64* @SSL_MD_GOST89MAC_IDX, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 32, i32* %123, align 4
  br label %128

124:                                              ; preds = %110
  %125 = load i32, i32* @SSL_GOST89MAC, align 4
  %126 = load i32, i32* @disabled_mac_mask, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* @disabled_mac_mask, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = call i64 @get_optional_pkey_id(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i64*, i64** @ssl_mac_pkey_id, align 8
  %131 = load i64, i64* @SSL_MD_GOST89MAC12_IDX, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64 %129, i64* %132, align 8
  %133 = load i64*, i64** @ssl_mac_pkey_id, align 8
  %134 = load i64, i64* @SSL_MD_GOST89MAC12_IDX, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load i32*, i32** @ssl_mac_secret_size, align 8
  %140 = load i64, i64* @SSL_MD_GOST89MAC12_IDX, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 32, i32* %141, align 4
  br label %146

142:                                              ; preds = %128
  %143 = load i32, i32* @SSL_GOST89MAC12, align 4
  %144 = load i32, i32* @disabled_mac_mask, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* @disabled_mac_mask, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = call i64 @get_optional_pkey_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @SSL_aGOST01, align 4
  %151 = load i32, i32* @SSL_aGOST12, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @disabled_auth_mask, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* @disabled_auth_mask, align 4
  br label %155

155:                                              ; preds = %149, %146
  %156 = call i64 @get_optional_pkey_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @SSL_aGOST12, align 4
  %160 = load i32, i32* @disabled_auth_mask, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* @disabled_auth_mask, align 4
  br label %162

162:                                              ; preds = %158, %155
  %163 = call i64 @get_optional_pkey_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* @SSL_aGOST12, align 4
  %167 = load i32, i32* @disabled_auth_mask, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* @disabled_auth_mask, align 4
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i32, i32* @disabled_auth_mask, align 4
  %171 = load i32, i32* @SSL_aGOST01, align 4
  %172 = load i32, i32* @SSL_aGOST12, align 4
  %173 = or i32 %171, %172
  %174 = and i32 %170, %173
  %175 = load i32, i32* @SSL_aGOST01, align 4
  %176 = load i32, i32* @SSL_aGOST12, align 4
  %177 = or i32 %175, %176
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = load i32, i32* @SSL_kGOST, align 4
  %181 = load i32, i32* @disabled_mkey_mask, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* @disabled_mkey_mask, align 4
  br label %183

183:                                              ; preds = %179, %169
  store i32 1, i32* %1, align 4
  br label %184

184:                                              ; preds = %183, %109, %99, %78
  %185 = load i32, i32* %1, align 4
  ret i32 %185
}

declare dso_local i32 @ssl_sort_cipher_list(...) #1

declare dso_local i32* @EVP_get_cipherbynid(i64) #1

declare dso_local i32* @EVP_get_digestbynid(i64) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i64 @get_optional_pkey_id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
