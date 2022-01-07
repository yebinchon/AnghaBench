; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_address_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_address_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i32 }
%struct.sockaddr_storage = type { i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@TCP_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"tcp:port\00", align 1
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
  %28 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @atoi(i32 %28)
  %30 = call i64 @tcp_addr(i8* %27, i32 %29, %struct.sockaddr_storage* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

33:                                               ; preds = %2
  store i32 16, i32* %9, align 4
  %34 = load %struct.tcp_ctx*, %struct.tcp_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %38 = call i64 @getpeername(i32 %36, %struct.sockaddr* %37, i32* %9)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %72

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %72

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %71 [
    i32 129, label %51
    i32 128, label %61
  ]

51:                                               ; preds = %48
  %52 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %52, %struct.sockaddr_in** %10, align 8
  %53 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %53, %struct.sockaddr_in** %11, align 8
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 0
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = call i32 @memcmp(i32* %55, i32* %57, i32 4)
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %48
  %62 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %62, %struct.sockaddr_in6** %12, align 8
  %63 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %63, %struct.sockaddr_in6** %13, align 8
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 0
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 0
  %68 = call i32 @memcmp(i32* %65, i32* %67, i32 4)
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %61, %51, %47, %40, %32
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @tcp_addr(i8*, i32, %struct.sockaddr_storage*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @proto_get(i8*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
