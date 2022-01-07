; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@TLS_VERIFY_DATA_LEN = common dso_local global i32 0, align 4
@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TLSv1: Send Finished\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"TLSv1: Failed to generate verify_data\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"TLSv1: verify_data (client)\00", align 1
@TLS_HANDSHAKE_TYPE_FINISHED = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to create a record\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_finished(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %17 = add nsw i32 4, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @MD5_MAC_LEN, align 4
  %22 = load i32, i32* @SHA1_MAC_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @MD5_MAC_LEN, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %31 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %3
  %36 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %37 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @crypto_hash_finish(i32* %39, i32* %25, i64* %11)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35, %3
  %43 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %44 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %45 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %46 = call i32 @tls_alert(%struct.tlsv1_client* %43, i32 %44, i32 %45)
  %47 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %48 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %51 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @crypto_hash_finish(i32* %53, i32* null, i64* null)
  %55 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %56 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %180

58:                                               ; preds = %35
  %59 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %60 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @SHA1_MAC_LEN, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %65 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %58
  %70 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %71 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @MD5_MAC_LEN, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %25, i64 %75
  %77 = call i64 @crypto_hash_finish(i32* %73, i32* %76, i64* %11)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69, %58
  %80 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %84 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %85 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %86 = call i32 @tls_alert(%struct.tlsv1_client* %83, i32 %84, i32 %85)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %180

87:                                               ; preds = %69
  %88 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %89 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @MD5_MAC_LEN, align 4
  %92 = load i32, i32* @SHA1_MAC_LEN, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %11, align 8
  %95 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %96 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %100 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TLS_MASTER_SECRET_LEN, align 4
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i32, i32* %20, i64 1
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %107 = call i64 @tls_prf(i64 %98, i32 %101, i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %25, i64 %103, i32* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %87
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 @wpa_printf(i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %113 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %114 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %115 = call i32 @tls_alert(%struct.tlsv1_client* %112, i32 %113, i32 %114)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %180

116:                                              ; preds = %87
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = getelementptr inbounds i32, i32* %20, i64 1
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %121 = call i32 @wpa_hexdump_key(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %119, i32 %120)
  store i32* %20, i32** %9, align 8
  store i32* %20, i32** %8, align 8
  %122 = load i32, i32* @TLS_HANDSHAKE_TYPE_FINISHED, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %127 = call i32 @WPA_PUT_BE24(i32* %125, i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32* %129, i32** %8, align 8
  %130 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %8, align 8
  %134 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %135 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %134, i32 0, i32 1
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 @tls_verify_hash_add(%struct.TYPE_4__* %135, i32* %136, i32 %143)
  %145 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %146 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %145, i32 0, i32 0
  %147 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %148 = load i32**, i32*** %6, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32**, i32*** %6, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = ptrtoint i32* %150 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = load i32*, i32** %9, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = ptrtoint i32* %159 to i64
  %162 = ptrtoint i32* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = call i64 @tlsv1_record_send(%struct.TYPE_3__* %146, i32 %147, i32* %149, i32 %157, i32* %158, i32 %165, i64* %10)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %116
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = call i32 @wpa_printf(i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %172 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %173 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %174 = call i32 @tls_alert(%struct.tlsv1_client* %171, i32 %172, i32 %173)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %180

175:                                              ; preds = %116
  %176 = load i64, i64* %10, align 8
  %177 = load i32**, i32*** %6, align 8
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 %176
  store i32* %179, i32** %177, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %180

180:                                              ; preds = %175, %168, %109, %79, %42
  %181 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @crypto_hash_finish(i32*, i32*, i64*) #2

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #2

declare dso_local i64 @tls_prf(i64, i32, i32, i8*, i32*, i64, i32*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #2

declare dso_local i32 @tls_verify_hash_add(%struct.TYPE_4__*, i32*, i32) #2

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_3__*, i32, i32*, i32, i32*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
