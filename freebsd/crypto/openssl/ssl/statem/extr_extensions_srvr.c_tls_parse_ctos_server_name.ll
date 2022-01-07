; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_server_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_server_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__*, i64 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_SERVER_NAME = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@TLSEXT_MAXLEN_host_name = common dso_local global i64 0, align 8
@SSL_AD_UNRECOGNIZED_NAME = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_server_name(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @PACKET_as_length_prefixed_2(i32* %15, i32* %13)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = call i64 @PACKET_remaining(i32* %13)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %24 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SERVER_NAME, align 4
  %25 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %26 = call i32 @SSLfatal(%struct.TYPE_11__* %22, i32 %23, i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %146

27:                                               ; preds = %18
  %28 = call i32 @PACKET_get_1(i32* %13, i32* %12)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = call i32 @PACKET_as_length_prefixed_2(i32* %13, i32* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %30, %27
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %40 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SERVER_NAME, align 4
  %41 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_11__* %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %6, align 4
  br label %146

43:                                               ; preds = %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i64 @SSL_IS_TLS13(%struct.TYPE_11__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %48, %43
  %53 = call i64 @PACKET_remaining(i32* %14)
  %54 = load i64, i64* @TLSEXT_MAXLEN_host_name, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = load i32, i32* @SSL_AD_UNRECOGNIZED_NAME, align 4
  %59 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SERVER_NAME, align 4
  %60 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %61 = call i32 @SSLfatal(%struct.TYPE_11__* %57, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %6, align 4
  br label %146

62:                                               ; preds = %52
  %63 = call i64 @PACKET_contains_zero_byte(i32* %14)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = load i32, i32* @SSL_AD_UNRECOGNIZED_NAME, align 4
  %68 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SERVER_NAME, align 4
  %69 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_11__* %66, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %146

71:                                               ; preds = %62
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @OPENSSL_free(i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = call i32 @PACKET_strndup(i32* %14, i32** %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %71
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %88 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_SERVER_NAME, align 4
  %89 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %90 = call i32 @SSLfatal(%struct.TYPE_11__* %86, i32 %87, i32 %88, i32 %89)
  store i32 0, i32* %6, align 4
  br label %146

91:                                               ; preds = %71
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %48
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %145

99:                                               ; preds = %94
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %123

107:                                              ; preds = %99
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @strlen(i32* %119)
  %121 = call i64 @PACKET_equal(i32* %14, i32* %113, i32 %120)
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %107, %99
  %124 = phi i1 [ false, %99 ], [ %122, %107 ]
  %125 = zext i1 %124 to i32
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %123
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %132, %123
  br label %145

145:                                              ; preds = %144, %94
  store i32 1, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %85, %65, %56, %37, %21
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_11__*) #1

declare dso_local i64 @PACKET_contains_zero_byte(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @PACKET_strndup(i32*, i32**) #1

declare dso_local i64 @PACKET_equal(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
