; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_server_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.http_server = type { i32, %struct.http_request*, i32 }
%struct.http_request = type { %struct.http_request* }
%struct.sockaddr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"HTTP: Failed to accept new connection: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HTTP: Connection from %s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @http_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_server_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.http_server*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.http_request*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 8, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.http_server*
  store %struct.http_server* %13, %struct.http_server** %9, align 8
  %14 = load %struct.http_server*, %struct.http_server** %9, align 8
  %15 = getelementptr inbounds %struct.http_server, %struct.http_server* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %18 = call i32 @accept(i32 %16, %struct.sockaddr* %17, i32* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %56

26:                                               ; preds = %3
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @inet_ntoa(i32 %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohs(i32 %32)
  %34 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.http_server*, %struct.http_server** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.http_request* @http_request_init(%struct.http_server* %35, i32 %36, %struct.sockaddr_in* %7)
  store %struct.http_request* %37, %struct.http_request** %11, align 8
  %38 = load %struct.http_request*, %struct.http_request** %11, align 8
  %39 = icmp eq %struct.http_request* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @close(i32 %41)
  br label %56

43:                                               ; preds = %26
  %44 = load %struct.http_server*, %struct.http_server** %9, align 8
  %45 = getelementptr inbounds %struct.http_server, %struct.http_server* %44, i32 0, i32 1
  %46 = load %struct.http_request*, %struct.http_request** %45, align 8
  %47 = load %struct.http_request*, %struct.http_request** %11, align 8
  %48 = getelementptr inbounds %struct.http_request, %struct.http_request* %47, i32 0, i32 0
  store %struct.http_request* %46, %struct.http_request** %48, align 8
  %49 = load %struct.http_request*, %struct.http_request** %11, align 8
  %50 = load %struct.http_server*, %struct.http_server** %9, align 8
  %51 = getelementptr inbounds %struct.http_server, %struct.http_server* %50, i32 0, i32 1
  store %struct.http_request* %49, %struct.http_request** %51, align 8
  %52 = load %struct.http_server*, %struct.http_server** %9, align 8
  %53 = getelementptr inbounds %struct.http_server, %struct.http_server* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %43, %40, %21
  ret void
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.http_request* @http_request_init(%struct.http_server*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
