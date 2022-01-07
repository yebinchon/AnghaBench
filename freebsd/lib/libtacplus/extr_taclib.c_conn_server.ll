; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_conn_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_conn_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i64, i32, %struct.tac_server* }
%struct.tac_server = type { i32, i32 }
%struct.timeval = type { i64, i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot create socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot set non-blocking mode on socket: %s\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"connect: timed out\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"getpeername: %s\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"connect: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*)* @conn_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conn_server(%struct.tac_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca %struct.tac_server*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  %13 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %14 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %13, i32 0, i32 2
  %15 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %16 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %17 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %15, i64 %18
  store %struct.tac_server* %19, %struct.tac_server** %4, align 8
  %20 = load i32, i32* @PF_INET, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = load i32, i32* @IPPROTO_TCP, align 4
  %23 = call i32 @socket(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %25 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %2, align 4
  br label %156

32:                                               ; preds = %1
  %33 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %34 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @F_GETFL, align 4
  %37 = call i32 @fcntl(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %41 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @F_SETFL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @O_NONBLOCK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @fcntl(i32 %42, i32 %43, i32 %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %60

49:                                               ; preds = %39, %32
  %50 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %55 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @close(i32 %56)
  %58 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %59 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 8
  store i32 -1, i32* %2, align 4
  br label %156

60:                                               ; preds = %39
  %61 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %62 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tac_server*, %struct.tac_server** %4, align 8
  %65 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %64, i32 0, i32 1
  %66 = bitcast i32* %65 to %struct.sockaddr*
  %67 = call i64 @connect(i32 %63, %struct.sockaddr* %66, i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %156

70:                                               ; preds = %60
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @EINPROGRESS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %145

74:                                               ; preds = %70
  %75 = call i32 @FD_ZERO(i32* %6)
  %76 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %77 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @FD_SET(i32 %78, i32* %6)
  %80 = load %struct.tac_server*, %struct.tac_server** %4, align 8
  %81 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %86 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  %89 = call i32 @select(i32 %88, i32* null, i32* %6, i32* null, %struct.timeval* %7)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %103

92:                                               ; preds = %74
  %93 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %98 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @close(i32 %99)
  %101 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %102 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %101, i32 0, i32 1
  store i32 -1, i32* %102, align 8
  store i32 -1, i32* %2, align 4
  br label %156

103:                                              ; preds = %74
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %108 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %110 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @close(i32 %111)
  %113 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %114 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %113, i32 0, i32 1
  store i32 -1, i32* %114, align 8
  store i32 -1, i32* %2, align 4
  br label %156

115:                                              ; preds = %103
  store i32 4, i32* %11, align 4
  %116 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %117 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @getpeername(i32 %118, %struct.sockaddr* %9, i32* %11)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %156

122:                                              ; preds = %115
  %123 = load i32, i32* @errno, align 4
  %124 = load i32, i32* @ENOTCONN, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %128 = load i32, i32* @errno, align 4
  %129 = call i32 @strerror(i32 %128)
  %130 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %132 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @close(i32 %133)
  %135 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %136 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %135, i32 0, i32 1
  store i32 -1, i32* %136, align 8
  store i32 -1, i32* %2, align 4
  br label %156

137:                                              ; preds = %122
  store i32 4, i32* %10, align 4
  %138 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %139 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SOL_SOCKET, align 4
  %142 = load i32, i32* @SO_ERROR, align 4
  %143 = call i32 @getsockopt(i32 %140, i32 %141, i32 %142, i32* %12, i32* %10)
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* @errno, align 4
  br label %145

145:                                              ; preds = %137, %70
  %146 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @strerror(i32 %147)
  %149 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %151 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @close(i32 %152)
  %154 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %155 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %154, i32 0, i32 1
  store i32 -1, i32* %155, align 8
  store i32 -1, i32* %2, align 4
  br label %156

156:                                              ; preds = %145, %126, %121, %106, %92, %69, %49, %27
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @generr(%struct.tac_handle*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
