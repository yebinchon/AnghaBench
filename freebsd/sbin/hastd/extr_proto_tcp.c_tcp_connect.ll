; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sockaddr = type { i32 }

@TCP_CTX_MAGIC = common dso_local global i64 0, align 8
@TCP_SIDE_CLIENT = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@F_GETFL = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fcntl(F_GETFL) failed\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"fcntl(F_SETFL, O_NONBLOCK) failed\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"connect() failed\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fcntl(F_SETFL, ~O_NONBLOCK) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_connect(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tcp_ctx*
  store %struct.tcp_ctx* %10, %struct.tcp_ctx** %6, align 8
  %11 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %12 = icmp ne %struct.tcp_ctx* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_CTX_MAGIC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCP_SIDE_CLIENT, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_ASSERT(i32 %27)
  %29 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  %35 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_UNSPEC, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @PJDLOG_ASSERT(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = call i32 @PJDLOG_ASSERT(i32 %45)
  %47 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @F_GETFL, align 4
  %51 = call i32 (i64, i32, ...) @fcntl(i64 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load i32, i32* @LOG_DEBUG, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @pjdlog_common(i32 %55, i32 1, i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %3, align 4
  br label %133

59:                                               ; preds = %2
  %60 = load i32, i32* @O_NONBLOCK, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @F_SETFL, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i64, i32, ...) @fcntl(i64 %65, i32 %66, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load i32, i32* @LOG_DEBUG, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @pjdlog_common(i32 %71, i32 1, i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %3, align 4
  br label %133

75:                                               ; preds = %59
  %76 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %77 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %79, i32 0, i32 3
  %81 = bitcast %struct.TYPE_2__* %80 to %struct.sockaddr*
  %82 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @connect(i64 %78, %struct.sockaddr* %81, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %75
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %133

92:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %110

93:                                               ; preds = %75
  %94 = load i32, i32* @errno, align 4
  %95 = load i32, i32* @EINPROGRESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* @errno, align 4
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @LOG_DEBUG, align 4
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 @pjdlog_common(i32 %99, i32 1, i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %110

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %133

106:                                              ; preds = %102
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @tcp_connect_wait(i8* %107, i32 %108)
  store i32 %109, i32* %3, align 4
  br label %133

110:                                              ; preds = %97, %92
  %111 = load i32, i32* @O_NONBLOCK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @F_SETFL, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i64, i32, ...) @fcntl(i64 %117, i32 %118, i32 %119)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %131

122:                                              ; preds = %110
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @errno, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i32, i32* @LOG_DEBUG, align 4
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @pjdlog_common(i32 %128, i32 1, i32 %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %110
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %106, %105, %91, %70, %54
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @fcntl(i64, i32, ...) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @tcp_connect_wait(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
