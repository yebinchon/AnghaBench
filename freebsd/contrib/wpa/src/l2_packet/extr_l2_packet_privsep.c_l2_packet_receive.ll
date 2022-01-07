; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_l2_packet_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_l2_packet_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i32, i32 (i32, i32*, i32*, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_un = type { i64, i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"l2_packet_receive - recvfrom: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"L2: Too show packet received\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"L2: Received message from unexpected source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @l2_packet_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_packet_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca [2300 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_un, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.l2_packet_data*
  store %struct.l2_packet_data* %13, %struct.l2_packet_data** %7, align 8
  store i32 16, i32* %11, align 4
  %14 = call i32 @os_memset(%struct.sockaddr_un* %10, i32 0, i32 16)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [2300 x i32], [2300 x i32]* %8, i64 0, i64 0
  %17 = bitcast %struct.sockaddr_un* %10 to %struct.sockaddr*
  %18 = call i32 @recvfrom(i32 %15, i32* %16, i32 9200, i32 0, %struct.sockaddr* %17, i32* %11)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %66

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %66

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_UNIX, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %42 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @os_strncmp(i32 %40, i32 %44, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38, %33
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %66

50:                                               ; preds = %38
  %51 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %52 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %51, i32 0, i32 1
  %53 = load i32 (i32, i32*, i32*, i32)*, i32 (i32, i32*, i32*, i32)** %52, align 8
  %54 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %55 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [2300 x i32], [2300 x i32]* %8, i64 0, i64 0
  %58 = getelementptr inbounds [2300 x i32], [2300 x i32]* %8, i64 0, i64 0
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 %53(i32 %56, i32* %57, i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %50, %47, %30, %21
  ret void
}

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @os_strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
