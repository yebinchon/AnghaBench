; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_recv_dgram.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_recv_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, i64, i32*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i64, i8* }

@.str = private unnamed_addr constant [41 x i8] c"I have been requested to read zero bytes\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Can't read more than %u bytes with sock_recv_dgram\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"recv(): \00", align 1
@MSG_TRUNC = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_recv_dgram(i32 %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca %struct.iovec, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 @SOCK_DEBUG_MESSAGE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %56

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %26, %23
  store i32 -1, i32* %6, align 4
  br label %56

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  store %struct.iovec* %14, %struct.iovec** %39, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @recvmsg(i32 %41, %struct.msghdr* %13, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EINTR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -3, i32* %6, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @sock_geterror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %52)
  store i32 -1, i32* %6, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %50, %49, %31, %17
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @SOCK_DEBUG_MESSAGE(i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @sock_geterror(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
