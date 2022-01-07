; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32, i32*, %struct.sockaddr_in, %struct.http_server* }
%struct.sockaddr_in = type { i32 }
%struct.http_server = type { i64 }

@HTTP_SERVER_MAX_CONNECTIONS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"HTTP: Too many concurrent requests\00", align 1
@http_request_cb = common dso_local global i32 0, align 4
@HTTP_SERVER_MAX_REQ_LEN = common dso_local global i32 0, align 4
@HTTP_SERVER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.http_request* (%struct.http_server*, i32, %struct.sockaddr_in*)* @http_request_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.http_request* @http_request_init(%struct.http_server* %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca %struct.http_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.http_request*, align 8
  store %struct.http_server* %0, %struct.http_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %9 = load %struct.http_server*, %struct.http_server** %5, align 8
  %10 = getelementptr inbounds %struct.http_server, %struct.http_server* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HTTP_SERVER_MAX_CONNECTIONS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.http_request* null, %struct.http_request** %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = call %struct.http_request* @os_zalloc(i32 32)
  store %struct.http_request* %18, %struct.http_request** %8, align 8
  %19 = load %struct.http_request*, %struct.http_request** %8, align 8
  %20 = icmp eq %struct.http_request* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %struct.http_request* null, %struct.http_request** %4, align 8
  br label %53

22:                                               ; preds = %17
  %23 = load %struct.http_server*, %struct.http_server** %5, align 8
  %24 = load %struct.http_request*, %struct.http_request** %8, align 8
  %25 = getelementptr inbounds %struct.http_request, %struct.http_request* %24, i32 0, i32 3
  store %struct.http_server* %23, %struct.http_server** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.http_request*, %struct.http_request** %8, align 8
  %28 = getelementptr inbounds %struct.http_request, %struct.http_request* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.http_request*, %struct.http_request** %8, align 8
  %30 = getelementptr inbounds %struct.http_request, %struct.http_request* %29, i32 0, i32 2
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %32 = bitcast %struct.sockaddr_in* %30 to i8*
  %33 = bitcast %struct.sockaddr_in* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.http_request*, %struct.http_request** %8, align 8
  %35 = getelementptr inbounds %struct.http_request, %struct.http_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @http_request_cb, align 4
  %38 = load %struct.http_request*, %struct.http_request** %8, align 8
  %39 = load i32, i32* @HTTP_SERVER_MAX_REQ_LEN, align 4
  %40 = load i32, i32* @HTTP_SERVER_TIMEOUT, align 4
  %41 = call i32* @httpread_create(i32 %36, i32 %37, %struct.http_request* %38, i32 %39, i32 %40)
  %42 = load %struct.http_request*, %struct.http_request** %8, align 8
  %43 = getelementptr inbounds %struct.http_request, %struct.http_request* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.http_request*, %struct.http_request** %8, align 8
  %45 = getelementptr inbounds %struct.http_request, %struct.http_request* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %22
  %49 = load %struct.http_request*, %struct.http_request** %8, align 8
  %50 = call i32 @http_request_deinit(%struct.http_request* %49)
  store %struct.http_request* null, %struct.http_request** %4, align 8
  br label %53

51:                                               ; preds = %22
  %52 = load %struct.http_request*, %struct.http_request** %8, align 8
  store %struct.http_request* %52, %struct.http_request** %4, align 8
  br label %53

53:                                               ; preds = %51, %48, %21, %14
  %54 = load %struct.http_request*, %struct.http_request** %4, align 8
  ret %struct.http_request* %54
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.http_request* @os_zalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @httpread_create(i32, i32, %struct.http_request*, i32, i32) #1

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
