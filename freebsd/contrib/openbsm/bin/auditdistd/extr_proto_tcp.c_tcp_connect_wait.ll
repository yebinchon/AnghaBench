; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_connect_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_connect_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i64, i32, i64 }
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
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @PJDLOG_ASSERT(i32 %38)
  %40 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @PJDLOG_ASSERT(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @PJDLOG_ASSERT(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %75, %2
  %54 = call i32 @FD_ZERO(i32* %8)
  %55 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @FD_SET(i64 %57, i32* %8)
  %59 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @select(i64 %62, i32* null, i32* %8, i32* null, %struct.timeval* %7)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %67, i32* %10, align 4
  br label %114

68:                                               ; preds = %53
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* @errno, align 4
  %73 = load i32, i32* @EINTR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %53

76:                                               ; preds = %71
  %77 = load i32, i32* @errno, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @LOG_DEBUG, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @pjdlog_common(i32 %78, i32 1, i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %114

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp sgt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @PJDLOG_ASSERT(i32 %85)
  %87 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @FD_ISSET(i64 %89, i32* %8)
  %91 = call i32 @PJDLOG_ASSERT(i32 %90)
  store i32 4, i32* %9, align 4
  %92 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @SOL_SOCKET, align 4
  %96 = load i32, i32* @SO_ERROR, align 4
  %97 = call i32 @getsockopt(i64 %94, i32 %95, i32 %96, i32* %10, i32* %9)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %104

99:                                               ; preds = %82
  %100 = load i32, i32* @errno, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @LOG_DEBUG, align 4
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @pjdlog_common(i32 %101, i32 1, i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %114

104:                                              ; preds = %82
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* @LOG_DEBUG, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @pjdlog_common(i32 %108, i32 1, i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %114

111:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  %112 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %113 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %107, %99, %76, %66
  %115 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @F_GETFL, align 4
  %119 = call i32 (i64, i32, ...) @fcntl(i64 %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @errno, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i32, i32* @LOG_DEBUG, align 4
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @pjdlog_common(i32 %128, i32 1, i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %155

132:                                              ; preds = %114
  %133 = load i32, i32* @O_NONBLOCK, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @F_SETFL, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i64, i32, ...) @fcntl(i64 %139, i32 %140, i32 %141)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %153

144:                                              ; preds = %132
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @errno, align 4
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i32, i32* @LOG_DEBUG, align 4
  %151 = load i32, i32* @errno, align 4
  %152 = call i32 @pjdlog_common(i32 %150, i32 1, i32 %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %132
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %127
  %156 = load i32, i32* %3, align 4
  ret i32 %156
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
