; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)*, i32, i32, i32 (%struct.TYPE_13__*, i32, i32, i8*, i32)*, i32 }

@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_EXT_FLAG_RECEIVED = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_F_CUSTOM_EXT_ADD = common dso_local global i32 0, align 4
@SSL_R_CALLBACK_FAILED = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EXT_FLAG_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @custom_ext_add(%struct.TYPE_13__* %0, i32 %1, i32* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %14, align 8
  store i64 0, i64* %16, align 8
  br label %25

25:                                               ; preds = %189, %6
  %26 = load i64, i64* %16, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %192

31:                                               ; preds = %25
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i64, i64* %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %35
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %15, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @should_add_extension(%struct.TYPE_13__* %37, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %189

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %49 = load i32, i32* @SSL_EXT_TLS1_3_SERVER_HELLO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %47, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %46
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SSL_EXT_FLAG_RECEIVED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %189

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)** %75, align 8
  %77 = icmp eq i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %189

79:                                               ; preds = %73, %68
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)* %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i8**, i64*, i32*, i64, i32*, i32)** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %87(%struct.TYPE_13__* %88, i32 %91, i32 %92, i8** %18, i64* %19, i32* %93, i64 %94, i32* %17, i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %84
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* @SSL_F_CUSTOM_EXT_ADD, align 4
  %105 = load i32, i32* @SSL_R_CALLBACK_FAILED, align 4
  %106 = call i32 @SSLfatal(%struct.TYPE_13__* %102, i32 %103, i32 %104, i32 %105)
  store i32 0, i32* %7, align 4
  br label %193

107:                                              ; preds = %84
  %108 = load i32, i32* %20, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %189

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @WPACKET_put_bytes_u16(i32* %113, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %112
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @WPACKET_start_sub_packet_u16(i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i64, i64* %19, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32*, i32** %10, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = load i64, i64* %19, align 8
  %130 = call i32 @WPACKET_memcpy(i32* %127, i8* %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126, %123
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @WPACKET_close(i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132, %126, %119, %112
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %139 = load i32, i32* @SSL_F_CUSTOM_EXT_ADD, align 4
  %140 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %141 = call i32 @SSLfatal(%struct.TYPE_13__* %137, i32 %138, i32 %139, i32 %140)
  store i32 0, i32* %7, align 4
  br label %193

142:                                              ; preds = %132
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SSL_EXT_FLAG_SENT, align 4
  %152 = and i32 %150, %151
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @ossl_assert(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %147
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %160 = load i32, i32* @SSL_F_CUSTOM_EXT_ADD, align 4
  %161 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %162 = call i32 @SSLfatal(%struct.TYPE_13__* %158, i32 %159, i32 %160, i32 %161)
  store i32 0, i32* %7, align 4
  br label %193

163:                                              ; preds = %147
  %164 = load i32, i32* @SSL_EXT_FLAG_SENT, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %142
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = load i32 (%struct.TYPE_13__*, i32, i32, i8*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i8*, i32)** %171, align 8
  %173 = icmp ne i32 (%struct.TYPE_13__*, i32, i32, i8*, i32)* %172, null
  br i1 %173, label %174, label %188

174:                                              ; preds = %169
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  %177 = load i32 (%struct.TYPE_13__*, i32, i32, i8*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i8*, i32)** %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i8*, i8** %18, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %177(%struct.TYPE_13__* %178, i32 %181, i32 %182, i8* %183, i32 %186)
  br label %188

188:                                              ; preds = %174, %169
  br label %189

189:                                              ; preds = %188, %110, %78, %66, %45
  %190 = load i64, i64* %16, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %16, align 8
  br label %25

192:                                              ; preds = %25
  store i32 1, i32* %7, align 4
  br label %193

193:                                              ; preds = %192, %157, %136, %101
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i32 @should_add_extension(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
