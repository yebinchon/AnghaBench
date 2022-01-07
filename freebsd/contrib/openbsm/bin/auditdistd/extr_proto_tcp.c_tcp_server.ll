; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@TCP_SIDE_SERVER_LISTEN = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @tcp_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_server(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tcp_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @TCP_SIDE_SERVER_LISTEN, align 4
  %11 = call i32 @tcp_setup_new(i8* %9, i32 %10, %struct.tcp_ctx** %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %17 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEADDR, align 4
  %22 = call i32 @setsockopt(i32 %19, i32 %20, i32 %21, i32* %8, i32 4)
  %23 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_UNSPEC, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @PJDLOG_ASSERT(i32 %29)
  %31 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %34, i32 0, i32 1
  %36 = bitcast %struct.TYPE_2__* %35 to %struct.sockaddr*
  %37 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %37, i32 0, i32 1
  %39 = call i32 @sockaddr_len(%struct.TYPE_2__* %38)
  %40 = call i32 @bind(i32 %33, %struct.sockaddr* %36, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %16
  %43 = load i32, i32* @errno, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %45 = call i32 @tcp_close(%struct.tcp_ctx* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %16
  %48 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @listen(i32 %50, i32 8)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %56 = call i32 @tcp_close(%struct.tcp_ctx* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %60 = bitcast %struct.tcp_ctx* %59 to i8*
  %61 = load i8**, i8*** %5, align 8
  store i8* %60, i8** %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %53, %42, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @tcp_setup_new(i8*, i32, %struct.tcp_ctx**) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sockaddr_len(%struct.TYPE_2__*) #1

declare dso_local i32 @tcp_close(%struct.tcp_ctx*) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
