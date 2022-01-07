; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@TCP_SIDE_CLIENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @tcp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_client(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.tcp_ctx*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @TCP_SIDE_CLIENT, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @tcp_setup_new(i8* %11, i32 %12, i8** %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.tcp_ctx*
  store %struct.tcp_ctx* %22, %struct.tcp_ctx** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @tcp_addr(i8* %27, i32 0, %struct.sockaddr_storage* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %33 = call i32 @tcp_close(%struct.tcp_ctx* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %26
  %36 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %40 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bind(i32 %38, %struct.sockaddr* %39, i32 %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %47 = call i32 @tcp_close(%struct.tcp_ctx* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %44, %31, %25, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @tcp_setup_new(i8*, i32, i8**) #1

declare dso_local i32 @tcp_addr(i8*, i32, %struct.sockaddr_storage*) #1

declare dso_local i32 @tcp_close(%struct.tcp_ctx*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
