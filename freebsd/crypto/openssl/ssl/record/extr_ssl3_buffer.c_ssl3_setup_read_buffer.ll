; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_buffer.c_ssl3_setup_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_buffer.c_ssl3_setup_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i64, i64 }

@DTLS1_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_MAX_ENCRYPTED_OVERHEAD = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_OVERHEAD = common dso_local global i64 0, align 8
@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_F_SSL3_SETUP_READ_BUFFER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL3_ALIGN_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_setup_read_buffer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = call %struct.TYPE_8__* @RECORD_LAYER_get_rbuf(i32* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = call i64 @SSL_IS_DTLS(%struct.TYPE_9__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  store i64 %16, i64* %7, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %27 = load i64, i64* @SSL3_RT_MAX_ENCRYPTED_OVERHEAD, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call i64 @ssl_allow_compression(%struct.TYPE_9__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_OVERHEAD, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i64, i64* %5, align 8
  %52 = call i8* @OPENSSL_malloc(i64 %51)
  store i8* %52, i8** %4, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %57 = load i32, i32* @SSL_F_SSL3_SETUP_READ_BUFFER, align 4
  %58 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %59 = call i32 @SSLfatal(%struct.TYPE_9__* %55, i32 %56, i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %75

60:                                               ; preds = %50
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %20
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = call i32 @RECORD_LAYER_set_packet(i32* %69, i8* %73)
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %67, %54
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_8__* @RECORD_LAYER_get_rbuf(i32*) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_9__*) #1

declare dso_local i64 @ssl_allow_compression(%struct.TYPE_9__*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @RECORD_LAYER_set_packet(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
