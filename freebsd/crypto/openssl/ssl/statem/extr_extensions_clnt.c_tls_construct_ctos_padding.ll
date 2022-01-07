; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_padding.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@SSL_OP_TLSEXT_PADDING = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_PADDING = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i64 0, align 8
@PSK_PRE_BINDER_OVERHEAD = common dso_local global i64 0, align 8
@F5_WORKAROUND_MIN_MSG_LEN = common dso_local global i64 0, align 8
@F5_WORKAROUND_MAX_MSG_LEN = common dso_local global i64 0, align 8
@TLSEXT_TYPE_padding = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_padding(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SSL_OP_TLSEXT_PADDING, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %22, i32* %6, align 4
  br label %124

23:                                               ; preds = %5
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @WPACKET_get_total_written(i32* %24, i64* %13)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %30 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PADDING, align 4
  %31 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %32 = call i32 @SSLfatal(%struct.TYPE_10__* %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %33, i32* %6, align 4
  br label %124

34:                                               ; preds = %23
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TLS1_3_VERSION, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %83

57:                                               ; preds = %50
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @ssl_md(i32 %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %57
  %69 = load i64, i64* @PSK_PRE_BINDER_OVERHEAD, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %69, %75
  %77 = load i32*, i32** %14, align 8
  %78 = call i64 @EVP_MD_size(i32* %77)
  %79 = add nsw i64 %76, %78
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %68, %57
  br label %83

83:                                               ; preds = %82, %50, %42, %34
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @F5_WORKAROUND_MIN_MSG_LEN, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @F5_WORKAROUND_MAX_MSG_LEN, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %87
  %92 = load i64, i64* @F5_WORKAROUND_MAX_MSG_LEN, align 8
  %93 = load i64, i64* %13, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ugt i64 %95, 4
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i64, i64* %13, align 8
  %99 = sub i64 %98, 4
  store i64 %99, i64* %13, align 8
  br label %101

100:                                              ; preds = %91
  store i64 1, i64* %13, align 8
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* @TLSEXT_TYPE_padding, align 4
  %104 = call i32 @WPACKET_put_bytes_u16(i32* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32*, i32** %8, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @WPACKET_sub_allocate_bytes_u16(i32* %107, i64 %108, i8** %12)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %114 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PADDING, align 4
  %115 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %116 = call i32 @SSLfatal(%struct.TYPE_10__* %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %117, i32* %6, align 4
  br label %124

118:                                              ; preds = %106
  %119 = load i8*, i8** %12, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @memset(i8* %119, i32 0, i64 %120)
  br label %122

122:                                              ; preds = %118, %87, %83
  %123 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %111, %27, %21
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32* @ssl_md(i32) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u16(i32*, i64, i8**) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
