; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@TLS_VERIFY_DATA_LEN = common dso_local global i32 0, align 4
@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Send Finished\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"TLSv1: Failed to generate verify_data\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"TLSv1: verify_data (server)\00", align 1
@TLS_HANDSHAKE_TYPE_FINISHED = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to create a record\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_BREAK_VERIFY_DATA = common dso_local global i32 0, align 4
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_finished(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
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
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
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
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %29 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @MD5_MAC_LEN, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %33 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %39 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @crypto_hash_finish(i32* %41, i32* %25, i64* %11)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37, %3
  %45 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %46 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %47 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %48 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %45, i32 %46, i32 %47)
  %49 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %50 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %53 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @crypto_hash_finish(i32* %55, i32* null, i64* null)
  %57 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %58 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %182

60:                                               ; preds = %37
  %61 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %62 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @SHA1_MAC_LEN, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %67 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %60
  %72 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %73 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @MD5_MAC_LEN, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %25, i64 %77
  %79 = call i64 @crypto_hash_finish(i32* %75, i32* %78, i64* %11)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71, %60
  %82 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %83 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %86 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %87 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %88 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %85, i32 %86, i32 %87)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %182

89:                                               ; preds = %71
  %90 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %91 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @MD5_MAC_LEN, align 4
  %94 = load i32, i32* @SHA1_MAC_LEN, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %98 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %102 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TLS_MASTER_SECRET_LEN, align 4
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i32, i32* %20, i64 1
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %109 = call i64 @tls_prf(i64 %100, i32 %103, i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %25, i64 %105, i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %89
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 @wpa_printf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %115 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %116 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %117 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %114, i32 %115, i32 %116)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %182

118:                                              ; preds = %89
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = getelementptr inbounds i32, i32* %20, i64 1
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %123 = call i32 @wpa_hexdump_key(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %121, i32 %122)
  store i32* %20, i32** %9, align 8
  store i32* %20, i32** %8, align 8
  %124 = load i32, i32* @TLS_HANDSHAKE_TYPE_FINISHED, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %129 = call i32 @WPA_PUT_BE24(i32* %127, i32 %128)
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32* %131, i32** %8, align 8
  %132 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %8, align 8
  %136 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %137 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %136, i32 0, i32 2
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = ptrtoint i32* %139 to i64
  %142 = ptrtoint i32* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @tls_verify_hash_add(%struct.TYPE_4__* %137, i32* %138, i32 %145)
  %147 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %148 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %147, i32 0, i32 1
  %149 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %150 = load i32**, i32*** %6, align 8
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32**, i32*** %6, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = ptrtoint i32* %152 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = load i32*, i32** %9, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = call i64 @tlsv1_record_send(%struct.TYPE_3__* %148, i32 %149, i32* %151, i32 %159, i32* %160, i32 %167, i64* %10)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %118
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 @wpa_printf(i32 %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %173 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %174 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %175 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %176 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %173, i32 %174, i32 %175)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %182

177:                                              ; preds = %118
  %178 = load i64, i64* %10, align 8
  %179 = load i32**, i32*** %6, align 8
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 %178
  store i32* %181, i32** %179, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %182

182:                                              ; preds = %177, %170, %111, %81, %44
  %183 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*) #2

declare dso_local i64 @crypto_hash_finish(i32*, i32*, i64*) #2

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #2

declare dso_local i64 @tls_prf(i64, i32, i32, i8*, i32*, i64, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

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
