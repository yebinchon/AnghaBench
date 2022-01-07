; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_client_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32 }
%struct.pollfd = type { i32, i8* }

@use_rgai = common dso_local global i64 0, align 8
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@rai_hints = common dso_local global i32 0, align 4
@ai_hints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@rs = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"rsocket\00", align 1
@errno = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rconnect\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"rpoll\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"async rconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.pollfd, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_addrinfo* null, %struct.rdma_addrinfo** %2, align 8
  %8 = load i64, i64* @use_rgai, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @dst_addr, align 4
  %12 = load i32, i32* @port, align 4
  %13 = call i32 @rdma_getaddrinfo(i32 %11, i32 %12, i32* @rai_hints, %struct.rdma_addrinfo** %2)
  br label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @dst_addr, align 4
  %16 = load i32, i32* @port, align 4
  %17 = call i32 @getaddrinfo(i32 %15, i32 %16, i32* @ai_hints, %struct.addrinfo** %3)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @gai_strerror(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %1, align 4
  br label %135

27:                                               ; preds = %18
  %28 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %29 = icmp ne %struct.rdma_addrinfo* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %32 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SOCK_STREAM, align 4
  %35 = call i8* @rsocket(i32 %33, i32 %34, i32 0)
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = call i8* @rsocket(i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i8* [ %35, %30 ], [ %41, %36 ]
  store i8* %43, i8** @rs, align 8
  %44 = load i8*, i8** @rs, align 8
  %45 = icmp ult i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @rs, align 8
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %42
  %51 = load i8*, i8** @rs, align 8
  %52 = call i32 @set_options(i8* %51)
  %53 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %54 = icmp ne %struct.rdma_addrinfo* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i8*, i8** @rs, align 8
  %57 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %58 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %61 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rconnect(i8* %56, i32 %59, i32 %62)
  br label %73

64:                                               ; preds = %50
  %65 = load i8*, i8** @rs, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rconnect(i8* %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %64, %55
  %74 = phi i32 [ %63, %55 ], [ %72, %64 ]
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @errno, align 4
  %79 = load i32, i32* @EINPROGRESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %117

83:                                               ; preds = %77, %73
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load i32, i32* @errno, align 4
  %88 = load i32, i32* @EINPROGRESS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i8*, i8** @rs, align 8
  %92 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @POLLOUT, align 4
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* @poll_timeout, align 4
  %96 = call i32 @do_poll(%struct.pollfd* %4, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %117

101:                                              ; preds = %90
  store i32 4, i32* %7, align 4
  %102 = load i8*, i8** @rs, align 8
  %103 = load i32, i32* @SOL_SOCKET, align 4
  %104 = load i32, i32* @SO_ERROR, align 4
  %105 = call i32 @rgetsockopt(i8* %102, i32 %103, i32 %104, i32* %6, i32* %7)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %117

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  store i32 -1, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* @errno, align 4
  %114 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %86, %83
  br label %117

117:                                              ; preds = %116, %108, %99, %81
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** @rs, align 8
  %122 = call i32 @rclose(i8* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %46
  %125 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %126 = icmp ne %struct.rdma_addrinfo* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %129 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %128)
  br label %133

130:                                              ; preds = %124
  %131 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %132 = call i32 @freeaddrinfo(%struct.addrinfo* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %1, align 4
  br label %135

135:                                              ; preds = %133, %22
  %136 = load i32, i32* %1, align 4
  ret i32 %136
}

declare dso_local i32 @rdma_getaddrinfo(i32, i32, i32*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @getaddrinfo(i32, i32, i32*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i8* @rsocket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @set_options(i8*) #1

declare dso_local i32 @rconnect(i8*, i32, i32) #1

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @rgetsockopt(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rclose(i8*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
