; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@rs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rsocket\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rconnect\00", align 1
@msg_op_login = common dso_local global i32 0, align 4
@g_msg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@CTRL_MSG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.addrinfo, align 4
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @memset(%struct.addrinfo* %2, i32 0, i32 20)
  %6 = load i32, i32* @SOCK_DGRAM, align 4
  %7 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @dst_addr, align 4
  %9 = load i32, i32* @port, align 4
  %10 = call i32 @getaddrinfo(i32 %8, i32 %9, %struct.addrinfo* %2, %struct.addrinfo** %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @gai_strerror(i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %1, align 4
  br label %64

18:                                               ; preds = %0
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rs_socket(i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* @rs, align 4
  %29 = load i32, i32* @rs, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @rs, align 4
  store i32 %33, i32* %4, align 4
  br label %60

34:                                               ; preds = %18
  %35 = load i32, i32* @rs, align 4
  %36 = call i32 @set_options(i32 %35)
  %37 = load i32, i32* @rs, align 4
  %38 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rs_connect(i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @rs, align 4
  %50 = call i32 @rs_close(i32 %49)
  br label %60

51:                                               ; preds = %34
  %52 = load i32, i32* @msg_op_login, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_msg, i32 0, i32 0), align 4
  %53 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %54 = call i32 @client_send_recv(%struct.TYPE_3__* @g_msg, i32 %53, i32 1000)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %47, %31
  %61 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %62 = call i32 @freeaddrinfo(%struct.addrinfo* %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %60, %13
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rs_socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @set_options(i32) #1

declare dso_local i32 @rs_connect(i32, i32, i32) #1

declare dso_local i32 @rs_close(i32) #1

declare dso_local i32 @client_send_recv(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
