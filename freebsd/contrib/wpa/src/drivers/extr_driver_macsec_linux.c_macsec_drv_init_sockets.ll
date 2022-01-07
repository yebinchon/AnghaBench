; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_linux.c_macsec_drv_init_sockets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_linux.c_macsec_drv_init_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_drv_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.ifreq = type { i64, i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sockaddr_ll = type { i64, i64, %struct.TYPE_4__, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"socket[PF_PACKET,SOCK_RAW]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@macsec_drv_handle_read = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not register read socket\00", align 1
@SIOCGIFINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"ioctl(SIOCGIFINDEX): %s\00", align 1
@AF_PACKET = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Opening raw packet socket for ifindex %d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@pae_group_addr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"wired: Failed to add multicast group membership\00", align 1
@SIOCGIFHWADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"ioctl(SIOCGIFHWADDR): %s\00", align 1
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid HW-addr family 0x%04x\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macsec_drv_data*, i32*)* @macsec_drv_init_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_drv_init_sockets(%struct.macsec_drv_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macsec_drv_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca %struct.sockaddr_ll, align 8
  store %struct.macsec_drv_data* %0, %struct.macsec_drv_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @PF_PACKET, align 4
  %9 = load i32, i32* @SOCK_RAW, align 4
  %10 = load i32, i32* @ETH_P_PAE, align 4
  %11 = call i32 @htons(i32 %10)
  %12 = call i64 @socket(i32 %8, i32 %9, i32 %11)
  %13 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %14 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %17 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i64 @strerror(i32 %23)
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  store i32 -1, i32* %3, align 4
  br label %142

26:                                               ; preds = %2
  %27 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %28 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @macsec_drv_handle_read, align 4
  %32 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %33 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @eloop_register_read_sock(i64 %30, i32 %31, i32 %35, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %142

41:                                               ; preds = %26
  %42 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %43 = call i32 @os_memset(%struct.sockaddr_ll* %42, i32 0, i32 40)
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %47 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @os_strlcpy(i32 %45, i32 %49, i32 4)
  %51 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %52 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @SIOCGIFINDEX, align 4
  %56 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %57 = call i64 @ioctl(i64 %54, i32 %55, %struct.sockaddr_ll* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = load i32, i32* @MSG_ERROR, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i64 @strerror(i32 %61)
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  store i32 -1, i32* %3, align 4
  br label %142

64:                                               ; preds = %41
  %65 = call i32 @os_memset(%struct.sockaddr_ll* %7, i32 0, i32 40)
  %66 = load i32, i32* @AF_PACKET, align 4
  %67 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 4
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %76 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = bitcast %struct.sockaddr_ll* %7 to %struct.sockaddr*
  %80 = call i64 @bind(i64 %78, %struct.sockaddr* %79, i32 40)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load i32, i32* @MSG_ERROR, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = call i64 @strerror(i32 %84)
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %85)
  store i32 -1, i32* %3, align 4
  br label %142

87:                                               ; preds = %64
  %88 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %89 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @pae_group_addr, align 4
  %95 = call i64 @wired_multicast_membership(i64 %91, i64 %93, i32 %94, i32 1)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %142

100:                                              ; preds = %87
  %101 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %102 = call i32 @os_memset(%struct.sockaddr_ll* %101, i32 0, i32 40)
  %103 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %106 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @os_strlcpy(i32 %104, i32 %108, i32 4)
  %110 = load %struct.macsec_drv_data*, %struct.macsec_drv_data** %4, align 8
  %111 = getelementptr inbounds %struct.macsec_drv_data, %struct.macsec_drv_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @SIOCGIFHWADDR, align 4
  %115 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %116 = call i64 @ioctl(i64 %113, i32 %114, %struct.sockaddr_ll* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %100
  %119 = load i32, i32* @MSG_ERROR, align 4
  %120 = load i32, i32* @errno, align 4
  %121 = call i64 @strerror(i32 %120)
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %121)
  store i32 -1, i32* %3, align 4
  br label %142

123:                                              ; preds = %100
  %124 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ARPHRD_ETHER, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* @MSG_INFO, align 4
  %131 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %133)
  store i32 -1, i32* %3, align 4
  br label %142

135:                                              ; preds = %123
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ETH_ALEN, align 4
  %141 = call i32 @os_memcpy(i32* %136, i32 %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %135, %129, %118, %97, %82, %59, %38, %21
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i64 @eloop_register_read_sock(i64, i32, i32, i32*) #1

declare dso_local i32 @os_memset(%struct.sockaddr_ll*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i64, i32, %struct.sockaddr_ll*) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @wired_multicast_membership(i64, i64, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
