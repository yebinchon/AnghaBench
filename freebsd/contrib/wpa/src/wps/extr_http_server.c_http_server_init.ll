; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_server = type { void (i8*, %struct.http_request*)*, i64, i32, i8* }
%struct.http_request = type opaque
%struct.in_addr = type { i32 }
%struct.http_request.0 = type opaque
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"HTTP: setsockopt(SO_REUSEADDR) failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"HTTP: Failed to bind server port %d: %s\00", align 1
@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@http_server_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"HTTP: Started server on %s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.http_server* @http_server_init(%struct.in_addr* %0, i32 %1, void (i8*, %struct.http_request.0*)* %2, i8* %3) #0 {
  %5 = alloca %struct.http_server*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, %struct.http_request.0*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.http_server*, align 8
  %12 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*, %struct.http_request.0*)* %2, void (i8*, %struct.http_request.0*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 1, i32* %12, align 4
  %13 = call %struct.http_server* @os_zalloc(i32 32)
  store %struct.http_server* %13, %struct.http_server** %11, align 8
  %14 = load %struct.http_server*, %struct.http_server** %11, align 8
  %15 = icmp eq %struct.http_server* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.http_server* null, %struct.http_server** %5, align 8
  br label %150

17:                                               ; preds = %4
  %18 = load void (i8*, %struct.http_request.0*)*, void (i8*, %struct.http_request.0*)** %8, align 8
  %19 = bitcast void (i8*, %struct.http_request.0*)* %18 to void (i8*, %struct.http_request*)*
  %20 = load %struct.http_server*, %struct.http_server** %11, align 8
  %21 = getelementptr inbounds %struct.http_server, %struct.http_server* %20, i32 0, i32 0
  store void (i8*, %struct.http_request*)* %19, void (i8*, %struct.http_request*)** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.http_server*, %struct.http_server** %11, align 8
  %24 = getelementptr inbounds %struct.http_server, %struct.http_server* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @AF_INET, align 4
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = call i64 @socket(i32 %25, i32 %26, i32 0)
  %28 = load %struct.http_server*, %struct.http_server** %11, align 8
  %29 = getelementptr inbounds %struct.http_server, %struct.http_server* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.http_server*, %struct.http_server** %11, align 8
  %31 = getelementptr inbounds %struct.http_server, %struct.http_server* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  br label %147

35:                                               ; preds = %17
  %36 = load %struct.http_server*, %struct.http_server** %11, align 8
  %37 = getelementptr inbounds %struct.http_server, %struct.http_server* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_REUSEADDR, align 4
  %41 = call i64 @setsockopt(i64 %38, i32 %39, i32 %40, i32* %12, i32 4)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i64, i64* @errno, align 8
  %46 = call i32 @strerror(i64 %45)
  %47 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.http_server*, %struct.http_server** %11, align 8
  %50 = getelementptr inbounds %struct.http_server, %struct.http_server* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @F_SETFL, align 4
  %53 = load i32, i32* @O_NONBLOCK, align 4
  %54 = call i64 @fcntl(i64 %51, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %147

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.http_server*, %struct.http_server** %11, align 8
  %62 = getelementptr inbounds %struct.http_server, %struct.http_server* %61, i32 0, i32 2
  store i32 49152, i32* %62, align 8
  br label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.http_server*, %struct.http_server** %11, align 8
  %66 = getelementptr inbounds %struct.http_server, %struct.http_server* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = call i32 @os_memset(%struct.sockaddr_in* %10, i32 0, i32 12)
  %69 = load i32, i32* @AF_INET, align 4
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %103, %67
  %77 = load %struct.http_server*, %struct.http_server** %11, align 8
  %78 = getelementptr inbounds %struct.http_server, %struct.http_server* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @htons(i32 %79)
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.http_server*, %struct.http_server** %11, align 8
  %83 = getelementptr inbounds %struct.http_server, %struct.http_server* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %86 = call i64 @bind(i64 %84, %struct.sockaddr* %85, i32 12)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %112

89:                                               ; preds = %76
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EADDRINUSE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.http_server*, %struct.http_server** %11, align 8
  %95 = getelementptr inbounds %struct.http_server, %struct.http_server* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = icmp eq i32 %97, 65535
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %93
  br label %147

103:                                              ; preds = %99
  br label %76

104:                                              ; preds = %89
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load %struct.http_server*, %struct.http_server** %11, align 8
  %107 = getelementptr inbounds %struct.http_server, %struct.http_server* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @errno, align 8
  %110 = call i32 @strerror(i64 %109)
  %111 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %110)
  br label %147

112:                                              ; preds = %88
  %113 = load %struct.http_server*, %struct.http_server** %11, align 8
  %114 = getelementptr inbounds %struct.http_server, %struct.http_server* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @listen(i64 %115, i32 10)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %112
  %119 = load %struct.http_server*, %struct.http_server** %11, align 8
  %120 = getelementptr inbounds %struct.http_server, %struct.http_server* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @F_SETFL, align 4
  %123 = load i32, i32* @O_NONBLOCK, align 4
  %124 = call i64 @fcntl(i64 %121, i32 %122, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %118
  %127 = load %struct.http_server*, %struct.http_server** %11, align 8
  %128 = getelementptr inbounds %struct.http_server, %struct.http_server* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @EVENT_TYPE_READ, align 4
  %131 = load i32, i32* @http_server_cb, align 4
  %132 = load %struct.http_server*, %struct.http_server** %11, align 8
  %133 = call i64 @eloop_register_sock(i64 %129, i32 %130, i32 %131, %struct.http_server* %132, i32* null)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126, %118, %112
  br label %147

136:                                              ; preds = %126
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %139 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @inet_ntoa(i32 %140)
  %142 = load %struct.http_server*, %struct.http_server** %11, align 8
  %143 = getelementptr inbounds %struct.http_server, %struct.http_server* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %144)
  %146 = load %struct.http_server*, %struct.http_server** %11, align 8
  store %struct.http_server* %146, %struct.http_server** %5, align 8
  br label %150

147:                                              ; preds = %135, %104, %102, %56, %34
  %148 = load %struct.http_server*, %struct.http_server** %11, align 8
  %149 = call i32 @http_server_deinit(%struct.http_server* %148)
  store %struct.http_server* null, %struct.http_server** %5, align 8
  br label %150

150:                                              ; preds = %147, %136, %16
  %151 = load %struct.http_server*, %struct.http_server** %5, align 8
  ret %struct.http_server* %151
}

declare dso_local %struct.http_server* @os_zalloc(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @fcntl(i64, i32, i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i64, i32) #1

declare dso_local i64 @eloop_register_sock(i64, i32, i32, %struct.http_server*, i32*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @http_server_deinit(%struct.http_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
