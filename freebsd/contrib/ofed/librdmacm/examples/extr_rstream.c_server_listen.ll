; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_server_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_server_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_addrinfo = type { i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32 }

@use_rgai = common dso_local global i64 0, align 8
@RAI_PASSIVE = common dso_local global i32 0, align 4
@rai_hints = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@src_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@ai_hints = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@lrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rsocket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"rsetsockopt SO_REUSEADDR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rbind\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rlisten\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @server_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_listen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rdma_addrinfo* null, %struct.rdma_addrinfo** %2, align 8
  %6 = load i64, i64* @use_rgai, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @RAI_PASSIVE, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rai_hints, i32 0, i32 0), align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rai_hints, i32 0, i32 0), align 4
  %12 = load i32, i32* @src_addr, align 4
  %13 = load i32, i32* @port, align 4
  %14 = call i32 @rdma_getaddrinfo(i32 %12, i32 %13, %struct.TYPE_5__* @rai_hints, %struct.rdma_addrinfo** %2)
  store i32 %14, i32* %5, align 4
  br label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @AI_PASSIVE, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ai_hints, i32 0, i32 0), align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ai_hints, i32 0, i32 0), align 4
  %19 = load i32, i32* @src_addr, align 4
  %20 = load i32, i32* @port, align 4
  %21 = call i32 @getaddrinfo(i32 %19, i32 %20, %struct.TYPE_6__* @ai_hints, %struct.addrinfo** %3)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %15, %8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @gai_strerror(i32 %26)
  %28 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %1, align 4
  br label %114

30:                                               ; preds = %22
  %31 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %32 = icmp ne %struct.rdma_addrinfo* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %35 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i32 @rs_socket(i32 %36, i32 %37, i32 0)
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SOCK_STREAM, align 4
  %44 = call i32 @rs_socket(i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i32 [ %38, %33 ], [ %44, %39 ]
  store i32 %46, i32* @lrs, align 4
  %47 = load i32, i32* @lrs, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @lrs, align 4
  store i32 %51, i32* %5, align 4
  br label %103

52:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  %53 = load i32, i32* @lrs, align 4
  %54 = load i32, i32* @SOL_SOCKET, align 4
  %55 = load i32, i32* @SO_REUSEADDR, align 4
  %56 = call i32 @rs_setsockopt(i32 %53, i32 %54, i32 %55, i32* %4, i32 4)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %96

61:                                               ; preds = %52
  %62 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %63 = icmp ne %struct.rdma_addrinfo* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* @lrs, align 4
  %66 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %67 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %70 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rs_bind(i32 %65, i32 %68, i32 %71)
  br label %82

73:                                               ; preds = %61
  %74 = load i32, i32* @lrs, align 4
  %75 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rs_bind(i32 %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %73, %64
  %83 = phi i32 [ %72, %64 ], [ %81, %73 ]
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %96

88:                                               ; preds = %82
  %89 = load i32, i32* @lrs, align 4
  %90 = call i32 @rs_listen(i32 %89, i32 1)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  br label %96

96:                                               ; preds = %95, %86, %59
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @lrs, align 4
  %101 = call i32 @rs_close(i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %49
  %104 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %105 = icmp ne %struct.rdma_addrinfo* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %108 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %107)
  br label %112

109:                                              ; preds = %103
  %110 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %1, align 4
  br label %114

114:                                              ; preds = %112, %25
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32 @rdma_getaddrinfo(i32, i32, %struct.TYPE_5__*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @getaddrinfo(i32, i32, %struct.TYPE_6__*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rs_socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rs_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rs_bind(i32, i32, i32) #1

declare dso_local i32 @rs_listen(i32, i32) #1

declare dso_local i32 @rs_close(i32) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
