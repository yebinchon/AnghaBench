; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired_common.c_driver_wired_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired_common.c_driver_wired_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@SIOCADDMULTI = common dso_local global i32 0, align 4
@SIOCDELMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ioctl[SIOC{ADD/DEL}MULTI]: %s\00", align 1
@AF_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @driver_wired_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_wired_multi(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PF_INET, align 4
  %11 = load i32, i32* @SOCK_DGRAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = call i32 @os_memset(%struct.ifreq* %8, i32 0, i32 32)
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @IFNAMSIZ, align 4
  %26 = call i32 @os_strlcpy(i32 %23, i8* %24, i32 %25)
  %27 = load i8*, i8** @AF_UNSPEC, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @os_memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* @SIOCADDMULTI, align 4
  br label %43

41:                                               ; preds = %20
  %42 = load i32, i32* @SIOCDELMULTI, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = ptrtoint %struct.ifreq* %8 to i32
  %46 = call i64 @ioctl(i32 %36, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @MSG_ERROR, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @close(i32 %53)
  store i32 -1, i32* %4, align 4
  br label %58

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @close(i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %48, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
