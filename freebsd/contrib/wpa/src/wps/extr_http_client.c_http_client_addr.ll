; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32, i64, void (i8*, %struct.http_client*, i32)*, %struct.wpabuf*, i8*, %struct.sockaddr_in }
%struct.sockaddr_in = type { i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"HTTP: fnctl(O_NONBLOCK) failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"HTTP: Failed to connect: %s\00", align 1
@EVENT_TYPE_WRITE = common dso_local global i32 0, align 4
@http_client_tx_ready = common dso_local global i32 0, align 4
@HTTP_CLIENT_TIMEOUT_SEC = common dso_local global i32 0, align 4
@http_client_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.http_client* @http_client_addr(%struct.sockaddr_in* %0, %struct.wpabuf* %1, i64 %2, {}* %3, i8* %4) #0 {
  %6 = alloca %struct.http_client*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca {}*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.http_client*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %7, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %8, align 8
  store i64 %2, i64* %9, align 8
  store {}* %3, {}** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call %struct.http_client* @os_zalloc(i32 48)
  store %struct.http_client* %13, %struct.http_client** %12, align 8
  %14 = load %struct.http_client*, %struct.http_client** %12, align 8
  %15 = icmp eq %struct.http_client* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store %struct.http_client* null, %struct.http_client** %6, align 8
  br label %100

17:                                               ; preds = %5
  %18 = load %struct.http_client*, %struct.http_client** %12, align 8
  %19 = getelementptr inbounds %struct.http_client, %struct.http_client* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.http_client*, %struct.http_client** %12, align 8
  %21 = getelementptr inbounds %struct.http_client, %struct.http_client* %20, i32 0, i32 5
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %23 = bitcast %struct.sockaddr_in* %21 to i8*
  %24 = bitcast %struct.sockaddr_in* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.http_client*, %struct.http_client** %12, align 8
  %27 = getelementptr inbounds %struct.http_client, %struct.http_client* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load {}*, {}** %10, align 8
  %29 = bitcast {}* %28 to void (i8*, %struct.http_client*, i32)*
  %30 = load %struct.http_client*, %struct.http_client** %12, align 8
  %31 = getelementptr inbounds %struct.http_client, %struct.http_client* %30, i32 0, i32 2
  store void (i8*, %struct.http_client*, i32)* %29, void (i8*, %struct.http_client*, i32)** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.http_client*, %struct.http_client** %12, align 8
  %34 = getelementptr inbounds %struct.http_client, %struct.http_client* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @AF_INET, align 4
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = call i32 @socket(i32 %35, i32 %36, i32 0)
  %38 = load %struct.http_client*, %struct.http_client** %12, align 8
  %39 = getelementptr inbounds %struct.http_client, %struct.http_client* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.http_client*, %struct.http_client** %12, align 8
  %41 = getelementptr inbounds %struct.http_client, %struct.http_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %17
  br label %97

45:                                               ; preds = %17
  %46 = load %struct.http_client*, %struct.http_client** %12, align 8
  %47 = getelementptr inbounds %struct.http_client, %struct.http_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @F_SETFL, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = call i64 @fcntl(i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %97

58:                                               ; preds = %45
  %59 = load %struct.http_client*, %struct.http_client** %12, align 8
  %60 = getelementptr inbounds %struct.http_client, %struct.http_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %63 = bitcast %struct.sockaddr_in* %62 to %struct.sockaddr*
  %64 = call i64 @connect(i32 %61, %struct.sockaddr* %63, i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINPROGRESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i64, i64* @errno, align 8
  %73 = call i32 @strerror(i64 %72)
  %74 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %97

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.http_client*, %struct.http_client** %12, align 8
  %78 = getelementptr inbounds %struct.http_client, %struct.http_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EVENT_TYPE_WRITE, align 4
  %81 = load i32, i32* @http_client_tx_ready, align 4
  %82 = load %struct.http_client*, %struct.http_client** %12, align 8
  %83 = call i64 @eloop_register_sock(i32 %79, i32 %80, i32 %81, %struct.http_client* %82, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @HTTP_CLIENT_TIMEOUT_SEC, align 4
  %87 = load i32, i32* @http_client_timeout, align 4
  %88 = load %struct.http_client*, %struct.http_client** %12, align 8
  %89 = call i64 @eloop_register_timeout(i32 %86, i32 0, i32 %87, %struct.http_client* %88, i32* null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %76
  br label %97

92:                                               ; preds = %85
  %93 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %94 = load %struct.http_client*, %struct.http_client** %12, align 8
  %95 = getelementptr inbounds %struct.http_client, %struct.http_client* %94, i32 0, i32 3
  store %struct.wpabuf* %93, %struct.wpabuf** %95, align 8
  %96 = load %struct.http_client*, %struct.http_client** %12, align 8
  store %struct.http_client* %96, %struct.http_client** %6, align 8
  br label %100

97:                                               ; preds = %91, %70, %53, %44
  %98 = load %struct.http_client*, %struct.http_client** %12, align 8
  %99 = call i32 @http_client_free(%struct.http_client* %98)
  store %struct.http_client* null, %struct.http_client** %6, align 8
  br label %100

100:                                              ; preds = %97, %92, %16
  %101 = load %struct.http_client*, %struct.http_client** %6, align 8
  ret %struct.http_client* %101
}

declare dso_local %struct.http_client* @os_zalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @eloop_register_sock(i32, i32, i32, %struct.http_client*, i32*) #1

declare dso_local i64 @eloop_register_timeout(i32, i32, i32, %struct.http_client*, i32*) #1

declare dso_local i32 @http_client_free(%struct.http_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
