; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_recvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, i32, i64, i32*, %struct.iovec*, i8* }
%struct.iovec = type { i8*, i64 }
%struct.sockaddr_nl = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i64, i32*)* @nl_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl_recvmsg(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca %struct.iovec, align 8
  %15 = alloca %struct.sockaddr_nl, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %19, align 8
  br label %21

21:                                               ; preds = %44, %6
  %22 = bitcast %struct.sockaddr_nl* %15 to i8*
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 6
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5
  store %struct.iovec* %14, %struct.iovec** %25, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @recvmsg(i32 %30, %struct.msghdr* %13, i32 0)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %21
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MSG_TRUNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  br label %21

45:                                               ; preds = %38
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %16, align 4
  ret i32 %54
}

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
