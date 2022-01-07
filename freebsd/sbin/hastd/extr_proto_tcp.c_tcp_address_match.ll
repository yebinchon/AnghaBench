; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_address_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_address_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i32 }
%struct.sockaddr_storage = type { i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@TCP_CTX_MAGIC = common dso_local global i64 0, align 8
@PROTO_TCP_DEFAULT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @tcp_address_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_address_match(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_ctx*, align 8
  %7 = alloca %struct.sockaddr_storage, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.tcp_ctx*
  store %struct.tcp_ctx* %15, %struct.tcp_ctx** %6, align 8
  %16 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %17 = icmp ne %struct.tcp_ctx* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_CTX_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @PJDLOG_ASSERT(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @PROTO_TCP_DEFAULT_PORT, align 4
  %29 = call i64 @tcp_addr(i8* %27, i32 %28, %struct.sockaddr_storage* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

32:                                               ; preds = %2
  store i32 16, i32* %9, align 4
  %33 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %37 = call i32 @getpeername(i32 %35, %struct.sockaddr* %36, i32* %9)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %77

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  store i32 0, i32* %3, align 4
  br label %77

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %76 [
    i32 129, label %56
    i32 128, label %66
  ]

56:                                               ; preds = %53
  %57 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %57, %struct.sockaddr_in** %10, align 8
  %58 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %58, %struct.sockaddr_in** %11, align 8
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 0
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = call i32 @memcmp(i32* %60, i32* %62, i32 4)
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %77

66:                                               ; preds = %53
  %67 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %67, %struct.sockaddr_in6** %12, align 8
  %68 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %68, %struct.sockaddr_in6** %13, align 8
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = call i32 @memcmp(i32* %70, i32* %72, i32 4)
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %66, %56, %52, %39, %31
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @tcp_addr(i8*, i32, %struct.sockaddr_storage*) #1

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
