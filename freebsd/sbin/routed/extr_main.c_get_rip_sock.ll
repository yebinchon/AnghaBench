; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_get_rip_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_get_rip_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rip_sock = socket()\00", align 1
@RIP_PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"bind(rip_sock)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rip_sock\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_TTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"rip_sock setsockopt(IP_MULTICAST_TTL)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_rip_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rip_sock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @AF_INET, align 4
  %10 = load i32, i32* @SOCK_DGRAM, align 4
  %11 = call i32 @socket(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @BADERR(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = call i32 @memset(%struct.sockaddr_in* %6, i32 0, i32 16)
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @RIP_PORT, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %27 = call i64 @bind(i32 %25, %struct.sockaddr* %26, i32 16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EADDRINUSE, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BADERR(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -1, i32* %3, align 4
  br label %53

41:                                               ; preds = %15
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @fix_sock(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8 1, i8* %7, align 1
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IPPROTO_IP, align 4
  %46 = load i32, i32* @IP_MULTICAST_TTL, align 4
  %47 = call i64 @setsockopt(i32 %44, i32 %45, i32 %46, i8* %7, i32 1)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @DBGERR(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %38
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @BADERR(i32, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fix_sock(i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DBGERR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
