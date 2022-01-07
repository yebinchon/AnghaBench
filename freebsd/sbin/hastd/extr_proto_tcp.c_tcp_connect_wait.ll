; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_connect_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_connect_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i64, i64 }
%struct.timeval = type { i32, i64 }

@TCP_CTX_MAGIC = common dso_local global i64 0, align 8
@TCP_SIDE_CLIENT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"select() failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"getsockopt(SO_ERROR) failed\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"getsockopt(SO_ERROR) returned error\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"fcntl(F_GETFL) failed\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"fcntl(F_SETFL, ~O_NONBLOCK) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tcp_connect_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_connect_wait(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_ctx*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.tcp_ctx*
  store %struct.tcp_ctx* %14, %struct.tcp_ctx** %6, align 8
  %15 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %16 = icmp ne %struct.tcp_ctx* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @PJDLOG_ASSERT(i32 %17)
  %19 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCP_CTX_MAGIC, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TCP_SIDE_CLIENT, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @PJDLOG_ASSERT(i32 %31)
  %33 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @PJDLOG_ASSERT(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @PJDLOG_ASSERT(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %68, %2
  %47 = call i32 @FD_ZERO(i32* %8)
  %48 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @FD_SET(i64 %50, i32* %8)
  %52 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @select(i64 %55, i32* null, i32* %8, i32* null, %struct.timeval* %7)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %60, i32* %10, align 4
  br label %105

61:                                               ; preds = %46
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EINTR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %46

69:                                               ; preds = %64
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @LOG_DEBUG, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @pjdlog_common(i32 %71, i32 1, i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %105

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @PJDLOG_ASSERT(i32 %78)
  %80 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @FD_ISSET(i64 %82, i32* %8)
  %84 = call i32 @PJDLOG_ASSERT(i32 %83)
  store i32 4, i32* %9, align 4
  %85 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @SOL_SOCKET, align 4
  %89 = load i32, i32* @SO_ERROR, align 4
  %90 = call i32 @getsockopt(i64 %87, i32 %88, i32 %89, i32* %10, i32* %9)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %97

92:                                               ; preds = %75
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* @LOG_DEBUG, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @pjdlog_common(i32 %94, i32 1, i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %105

97:                                               ; preds = %75
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @LOG_DEBUG, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @pjdlog_common(i32 %101, i32 1, i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %105

104:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %100, %92, %69, %59
  %106 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %107 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @F_GETFL, align 4
  %110 = call i32 (i64, i32, ...) @fcntl(i64 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @errno, align 4
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* @LOG_DEBUG, align 4
  %120 = load i32, i32* @errno, align 4
  %121 = call i32 @pjdlog_common(i32 %119, i32 1, i32 %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %146

123:                                              ; preds = %105
  %124 = load i32, i32* @O_NONBLOCK, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %129 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @F_SETFL, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i64, i32, ...) @fcntl(i64 %130, i32 %131, i32 %132)
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %144

135:                                              ; preds = %123
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @errno, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, i32* @LOG_DEBUG, align 4
  %142 = load i32, i32* @errno, align 4
  %143 = call i32 @pjdlog_common(i32 %141, i32 1, i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %123
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %118
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

declare dso_local i32 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @getsockopt(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @fcntl(i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
