; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_init_sockets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_init_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i64, i32 }
%struct.ifreq = type { i32, i32, i32, i32 }
%struct.sockaddr_ll = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"socket[PF_PACKET,SOCK_RAW]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@handle_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not register read socket\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%sap\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"hostap: AP interface name truncated\00", align 1
@SIOCGIFINDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"ioctl(SIOCGIFINDEX): %s\00", align 1
@AF_PACKET = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Opening raw packet socket for ifindex %d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostap_driver_data*, i32*)* @hostap_init_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_init_sockets(%struct.hostap_driver_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostap_driver_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca %struct.sockaddr_ll, align 4
  store %struct.hostap_driver_data* %0, %struct.hostap_driver_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @PF_PACKET, align 4
  %9 = load i32, i32* @SOCK_RAW, align 4
  %10 = load i32, i32* @ETH_P_ALL, align 4
  %11 = call i32 @htons(i32 %10)
  %12 = call i64 @socket(i32 %8, i32 %9, i32 %11)
  %13 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %14 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %16 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %3, align 4
  br label %97

24:                                               ; preds = %2
  %25 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %26 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @handle_read, align 4
  %29 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %30 = call i64 @eloop_register_read_sock(i64 %27, i32 %28, %struct.hostap_driver_data* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @MSG_ERROR, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %97

35:                                               ; preds = %24
  %36 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %37 = call i32 @memset(%struct.sockaddr_ll* %36, i32 0, i32 16)
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %41 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @os_snprintf(i32 %39, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = icmp sge i32 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %97

48:                                               ; preds = %35
  %49 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %50 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @SIOCGIFINDEX, align 4
  %53 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %54 = call i64 @ioctl(i64 %51, i32 %52, %struct.sockaddr_ll* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* @MSG_ERROR, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  store i32 -1, i32* %3, align 4
  br label %97

61:                                               ; preds = %48
  %62 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %63 = call i64 @hostap_set_iface_flags(%struct.hostap_driver_data* %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %97

66:                                               ; preds = %61
  %67 = call i32 @memset(%struct.sockaddr_ll* %7, i32 0, i32 16)
  %68 = load i32, i32* @AF_PACKET, align 4
  %69 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %78 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = bitcast %struct.sockaddr_ll* %7 to %struct.sockaddr*
  %81 = call i64 @bind(i64 %79, %struct.sockaddr* %80, i32 16)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %66
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 -1, i32* %3, align 4
  br label %97

88:                                               ; preds = %66
  %89 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %90 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %93 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @linux_get_ifhwaddr(i64 %91, i32 %94, i32* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %88, %83, %65, %56, %45, %32, %19
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @eloop_register_read_sock(i64, i32, %struct.hostap_driver_data*, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_ll*, i32, i32) #1

declare dso_local i32 @os_snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @ioctl(i64, i32, %struct.sockaddr_ll*) #1

declare dso_local i64 @hostap_set_iface_flags(%struct.hostap_driver_data*, i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @linux_get_ifhwaddr(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
