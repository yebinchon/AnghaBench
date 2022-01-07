; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_eth_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_eth_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_msghdr = type { i64, i32, i32 }
%struct.sockaddr_dl = type { i32, i64, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@AF_ROUTE = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@RTM_IFINFO = common dso_local global i64 0, align 8
@RTA_IFP = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DLPI_PHYSADDR_MAX = common dso_local global i32 0, align 4
@DLPI_SUCCESS = common dso_local global i32 0, align 4
@DL_CURR_PHYS_ADDR = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @eth_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_get(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.if_msghdr*, align 8
  %7 = alloca %struct.sockaddr_dl*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [6 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %15 = load i32, i32* @CTL_NET, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @AF_ROUTE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* @AF_LINK, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @NET_RT_IFLIST, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %25 = call i64 @sysctl(i32* %24, i32 6, i32* null, i64* %10, i32* null, i32 0)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %116

28:                                               ; preds = %2
  %29 = load i64, i64* %10, align 8
  %30 = call i32* @os_malloc(i64 %29)
  store i32* %30, i32** %9, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %116

33:                                               ; preds = %28
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @sysctl(i32* %34, i32 6, i32* %35, i64* %10, i32* null, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @os_free(i32* %39)
  store i32 -1, i32* %3, align 4
  br label %116

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %98, %41
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = icmp ult i32* %44, %47
  br i1 %48, label %49, label %105

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast i32* %50 to %struct.if_msghdr*
  store %struct.if_msghdr* %51, %struct.if_msghdr** %6, align 8
  %52 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %53 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %52, i64 1
  %54 = bitcast %struct.if_msghdr* %53 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %54, %struct.sockaddr_dl** %7, align 8
  %55 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %56 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RTM_IFINFO, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %49
  %61 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %62 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RTA_IFP, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %49
  br label %98

68:                                               ; preds = %60
  %69 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %70 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @AF_LINK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %76 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %81 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %85 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @os_memcmp(i32 %82, i8* %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79, %74, %68
  br label %98

90:                                               ; preds = %79
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %93 = call i32* @LLADDR(%struct.sockaddr_dl* %92)
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %95 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @os_memcpy(i32* %91, i32* %93, i32 %96)
  br label %105

98:                                               ; preds = %89, %67
  %99 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %100 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  br label %43

105:                                              ; preds = %90, %43
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @os_free(i32* %106)
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = icmp uge i32* %108, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @ESRCH, align 4
  store i32 %114, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %116

115:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %113, %38, %32, %27
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @os_memcmp(i32, i8*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
