; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired_common.c_wired_multicast_membership.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired_common.c_wired_multicast_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_mreq = type { i32, i32, i32, i32 }

@PACKET_MR_MULTICAST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@PACKET_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"setsockopt: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wired_multicast_membership(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.packet_mreq, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %45

14:                                               ; preds = %4
  %15 = call i32 @os_memset(%struct.packet_mreq* %10, i32 0, i32 16)
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.packet_mreq, %struct.packet_mreq* %10, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @PACKET_MR_MULTICAST, align 4
  %19 = getelementptr inbounds %struct.packet_mreq, %struct.packet_mreq* %10, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = getelementptr inbounds %struct.packet_mreq, %struct.packet_mreq* %10, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.packet_mreq, %struct.packet_mreq* %10, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @os_memcpy(i32 %23, i32* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SOL_PACKET, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = load i32, i32* @PACKET_ADD_MEMBERSHIP, align 4
  br label %35

33:                                               ; preds = %14
  %34 = load i32, i32* @PACKET_DROP_MEMBERSHIP, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i64 @setsockopt(i32 %27, i32 %28, i32 %36, %struct.packet_mreq* %10, i32 16)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %5, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %39, %13
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @os_memset(%struct.packet_mreq*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.packet_mreq*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
