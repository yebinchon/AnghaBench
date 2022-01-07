; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32, %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@TCP_SIDE_CLIENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fcntl(F_GETFL) failed\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"fcntl(F_SETFL, O_NONBLOCK) failed\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"connect() failed\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fcntl(F_SETFL, ~O_NONBLOCK) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**)* @tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_connect(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.tcp_ctx*, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %17, %4
  %24 = phi i1 [ true, %4 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @PJDLOG_ASSERT(i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @PJDLOG_ASSERT(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, -1
  %33 = zext i1 %32 to i32
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @TCP_SIDE_CLIENT, align 4
  %37 = call i32 @tcp_setup_new(i8* %35, i32 %36, %struct.tcp_ctx** %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %154

42:                                               ; preds = %23
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @tcp_addr(i8* %46, i32 0, %struct.sockaddr_storage* %11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %150

51:                                               ; preds = %45
  %52 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %56 = call i32 @sockaddr_len(%struct.sockaddr_storage* %11)
  %57 = call i32 @bind(i32 %54, %struct.sockaddr* %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %12, align 4
  br label %150

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %64 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @F_GETFL, align 4
  %67 = call i32 (i32, i32, ...) @fcntl(i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* @errno, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* @LOG_DEBUG, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @pjdlog_common(i32 %72, i32 1, i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %150

75:                                               ; preds = %62
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  %79 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %80 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @F_SETFL, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (i32, i32, ...) @fcntl(i32 %81, i32 %82, i32 %83)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load i32, i32* @errno, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* @LOG_DEBUG, align 4
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 @pjdlog_common(i32 %88, i32 1, i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %150

91:                                               ; preds = %75
  %92 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %93 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %95, i32 0, i32 1
  %97 = bitcast %struct.sockaddr_storage* %96 to %struct.sockaddr*
  %98 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %99 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %98, i32 0, i32 1
  %100 = call i32 @sockaddr_len(%struct.sockaddr_storage* %99)
  %101 = call i32 @connect(i32 %94, %struct.sockaddr* %97, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %113

104:                                              ; preds = %91
  %105 = load i32, i32* @errno, align 4
  %106 = load i32, i32* @EINPROGRESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @errno, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @LOG_DEBUG, align 4
  %111 = load i32, i32* @errno, align 4
  %112 = call i32 @pjdlog_common(i32 %110, i32 1, i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %150

113:                                              ; preds = %104, %91
  %114 = load i32, i32* %8, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @tcp_connect_wait(%struct.tcp_ctx* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %150

126:                                              ; preds = %119
  br label %145

127:                                              ; preds = %116
  %128 = load i32, i32* @O_NONBLOCK, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %13, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %13, align 4
  %132 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %133 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @F_SETFL, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 (i32, i32, ...) @fcntl(i32 %134, i32 %135, i32 %136)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %144

139:                                              ; preds = %127
  %140 = load i32, i32* @errno, align 4
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @LOG_DEBUG, align 4
  %142 = load i32, i32* @errno, align 4
  %143 = call i32 @pjdlog_common(i32 %141, i32 1, i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %150

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %126
  br label %146

146:                                              ; preds = %145, %113
  %147 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %148 = bitcast %struct.tcp_ctx* %147 to i8*
  %149 = load i8**, i8*** %9, align 8
  store i8* %148, i8** %149, align 8
  store i32 0, i32* %5, align 4
  br label %154

150:                                              ; preds = %139, %125, %108, %86, %70, %59, %50
  %151 = load %struct.tcp_ctx*, %struct.tcp_ctx** %10, align 8
  %152 = call i32 @tcp_close(%struct.tcp_ctx* %151)
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %146, %40
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @tcp_setup_new(i8*, i32, %struct.tcp_ctx**) #1

declare dso_local i32 @tcp_addr(i8*, i32, %struct.sockaddr_storage*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sockaddr_len(%struct.sockaddr_storage*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @tcp_connect_wait(%struct.tcp_ctx*, i32) #1

declare dso_local i32 @tcp_close(%struct.tcp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
