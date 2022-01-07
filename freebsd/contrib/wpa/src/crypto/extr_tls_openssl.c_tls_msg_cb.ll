; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_msg_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_msg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"OpenSSL: session ver=0x%x content_type=%d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"OpenSSL: Data\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"OpenSSL: %s ver=0x%x content_type=%d (%s/%s)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"OpenSSL: Message\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"OpenSSL: Heartbeat attack detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, i64, i32*, i8*)* @tls_msg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_msg_cb(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.tls_connection*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = bitcast i8* %18 to %struct.tls_connection*
  store %struct.tls_connection* %19, %struct.tls_connection** %15, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %16, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %7
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @MSG_MSGDUMP, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @wpa_hexdump_key(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %30, i64 %31)
  br label %76

33:                                               ; preds = %7
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @openssl_content_type(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @openssl_handshake_type(i32 %43, i8* %44, i64 %45)
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %39, i32 %40, i32 %42, i32 %46)
  %48 = load i32, i32* @MSG_MSGDUMP, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 24
  br i1 %53, label %54, label %76

54:                                               ; preds = %33
  %55 = load i64, i64* %12, align 8
  %56 = icmp uge i64 %55, 3
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32*, i32** %16, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i64 @WPA_GET_BE16(i32* %64)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = add i64 %66, 3
  %68 = load i64, i64* %12, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* @MSG_ERROR, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.tls_connection*, %struct.tls_connection** %15, align 8
  %74 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %62
  br label %76

76:                                               ; preds = %24, %75, %57, %54, %33
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i64) #1

declare dso_local i32 @openssl_content_type(i32) #1

declare dso_local i32 @openssl_handshake_type(i32, i8*, i64) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
