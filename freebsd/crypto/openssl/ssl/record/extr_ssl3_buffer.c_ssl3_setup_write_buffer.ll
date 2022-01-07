; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_buffer.c_ssl3_setup_write_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_buffer.c_ssl3_setup_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i8*, i64 }

@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_OVERHEAD = common dso_local global i64 0, align 8
@SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS = common dso_local global i32 0, align 4
@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_F_SSL3_SETUP_WRITE_BUFFER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL3_ALIGN_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_setup_write_buffer(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i64 @SSL_IS_DTLS(%struct.TYPE_13__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_13__* %32)
  %34 = load i64, i64* @SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = call i64 @ssl_allow_compression(%struct.TYPE_13__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_OVERHEAD, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* @SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = call %struct.TYPE_12__* @RECORD_LAYER_get_wbuf(%struct.TYPE_11__* %65)
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %122, %63
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %67
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %73
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %13, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @OPENSSL_free(i8* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i8* null, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %79, %71
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i64, i64* %7, align 8
  %99 = call i8* @OPENSSL_malloc(i64 %98)
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %109 = load i32, i32* @SSL_F_SSL3_SETUP_WRITE_BUFFER, align 4
  %110 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %111 = call i32 @SSLfatal(%struct.TYPE_13__* %107, i32 %108, i32 %109, i32 %110)
  store i32 0, i32* %4, align 4
  br label %126

112:                                              ; preds = %97
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = call i32 @memset(%struct.TYPE_12__* %113, i32 0, i32 16)
  %115 = load i8*, i8** %8, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %112, %92
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %12, align 8
  br label %67

125:                                              ; preds = %67
  store i32 1, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %102
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_13__*) #1

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_13__*) #1

declare dso_local i64 @ssl_allow_compression(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @RECORD_LAYER_get_wbuf(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
