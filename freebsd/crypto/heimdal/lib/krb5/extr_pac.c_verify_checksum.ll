; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_verify_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_verify_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PAC_INFO_BUFFER = type { i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i64 }

@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PAC checksum missing checksum\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Checksum type %d not keyed\00", align 1
@CKSUMTYPE_HMAC_MD5 = common dso_local global i64 0, align 8
@KRB5_KU_OTHER_CKSUM = common dso_local global i32 0, align 4
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"PAC integrity check failed for hmac-md5 checksum\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.PAC_INFO_BUFFER*, %struct.TYPE_10__*, i8*, i64, i32*)* @verify_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_checksum(i32 %0, %struct.PAC_INFO_BUFFER* %1, %struct.TYPE_10__* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.PAC_INFO_BUFFER*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.PAC_INFO_BUFFER* %1, %struct.PAC_INFO_BUFFER** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = call i32 @memset(%struct.TYPE_11__* %17, i32 0, i32 24)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.PAC_INFO_BUFFER*, %struct.PAC_INFO_BUFFER** %9, align 8
  %26 = getelementptr inbounds %struct.PAC_INFO_BUFFER, %struct.PAC_INFO_BUFFER* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load %struct.PAC_INFO_BUFFER*, %struct.PAC_INFO_BUFFER** %9, align 8
  %31 = getelementptr inbounds %struct.PAC_INFO_BUFFER, %struct.PAC_INFO_BUFFER* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32* @krb5_storage_from_mem(i8* %29, i64 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @krb5_enomem(i32 %37)
  store i32 %38, i32* %7, align 4
  br label %177

39:                                               ; preds = %6
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %42 = call i32 @krb5_storage_set_flags(i32* %40, i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @krb5_ret_uint32(i32* %44, i64* %15)
  %46 = load i32, i32* @out, align 4
  %47 = call i32 @CHECK(i32 %43, i32 %45, i32 %46)
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.PAC_INFO_BUFFER*, %struct.PAC_INFO_BUFFER** %9, align 8
  %51 = getelementptr inbounds %struct.PAC_INFO_BUFFER, %struct.PAC_INFO_BUFFER* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* @SEEK_CUR, align 4
  %55 = call i64 @krb5_storage_seek(i32* %53, i32 0, i32 %54)
  %56 = sub nsw i64 %52, %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32* @malloc(i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @krb5_enomem(i32 %70)
  store i32 %71, i32* %16, align 4
  br label %159

72:                                               ; preds = %39
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @krb5_storage_read(i32* %73, i32* %76, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %89, i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %159

92:                                               ; preds = %72
  %93 = load i32, i32* %8, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @krb5_checksum_is_keyed(i32 %93, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %16, align 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %100, i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  br label %159

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CKSUMTYPE_HMAC_MD5, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = call i32 @memset(%struct.TYPE_11__* %18, i32 0, i32 24)
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* @KRB5_KU_OTHER_CKSUM, align 4
  %117 = call i32 @HMAC_MD5_any_checksum(i32 %112, i32* %113, i8* %114, i64 %115, i32 %116, %struct.TYPE_11__* %18)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %123 = call i64 @krb5_data_ct_cmp(%struct.TYPE_12__* %121, %struct.TYPE_12__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120, %110
  %126 = load i32, i32* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 4
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i8* @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %127, i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %125, %120
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %133 = call i32 @krb5_data_free(%struct.TYPE_12__* %132)
  br label %151

134:                                              ; preds = %105
  store i32* null, i32** %19, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @krb5_crypto_init(i32 %135, i32* %136, i32 0, i32** %19)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %159

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* @KRB5_KU_OTHER_CKSUM, align 4
  %145 = load i8*, i8** %11, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @krb5_verify_checksum(i32 %142, i32* %143, i32 %144, i8* %145, i64 %146, %struct.TYPE_11__* %17)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %19, align 8
  %150 = call i32 @krb5_crypto_destroy(i32 %148, i32* %149)
  br label %151

151:                                              ; preds = %141, %131
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @free(i32* %154)
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @krb5_storage_free(i32* %156)
  %158 = load i32, i32* %16, align 4
  store i32 %158, i32* %7, align 4
  br label %177

159:                                              ; preds = %140, %98, %87, %69
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @free(i32* %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i32*, i32** %14, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @krb5_storage_free(i32* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %175, %151, %36
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i64) #1

declare dso_local i32 @krb5_enomem(i32) #1

declare dso_local i32 @krb5_storage_set_flags(i32*, i32) #1

declare dso_local i32 @CHECK(i32, i32, i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i64 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @krb5_storage_read(i32*, i32*, i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, ...) #1

declare dso_local i32 @krb5_checksum_is_keyed(i32, i64) #1

declare dso_local i32 @HMAC_MD5_any_checksum(i32, i32*, i8*, i64, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @krb5_data_ct_cmp(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i8* @N_(i8*, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_12__*) #1

declare dso_local i32 @krb5_crypto_init(i32, i32*, i32, i32**) #1

declare dso_local i32 @krb5_verify_checksum(i32, i32*, i32, i8*, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
