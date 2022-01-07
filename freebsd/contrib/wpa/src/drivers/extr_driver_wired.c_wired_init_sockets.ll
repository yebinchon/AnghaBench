; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired.c_wired_init_sockets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired.c_wired_init_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_wired_data = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.ifreq = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr_ll = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.sockaddr_in = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"socket[PF_PACKET,SOCK_RAW]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@handle_read = common dso_local global i32 0, align 4
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
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"socket call failed for dhcp: %s\00", align 1
@handle_dhcp = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"setsockopt[SOL_SOCKET,SO_REUSEADDR]: %s\00", align 1
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"setsockopt[SOL_SOCKET,SO_BROADCAST]: %s\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@SO_BINDTODEVICE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"setsockopt[SOL_SOCKET,SO_BINDTODEVICE]: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_wired_data*, i32*)* @wired_init_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wired_init_sockets(%struct.wpa_driver_wired_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_driver_wired_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca %struct.sockaddr_ll, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_driver_wired_data* %0, %struct.wpa_driver_wired_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @PF_PACKET, align 4
  %11 = load i32, i32* @SOCK_RAW, align 4
  %12 = load i32, i32* @ETH_P_PAE, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = call i8* @socket(i32 %10, i32 %11, i32 %13)
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i64 @strerror(i32 %26)
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32 -1, i32* %3, align 4
  br label %247

29:                                               ; preds = %2
  %30 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @handle_read, align 4
  %35 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @eloop_register_read_sock(i64 %33, i32 %34, i32 %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %247

44:                                               ; preds = %29
  %45 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %46 = call i32 @os_memset(%struct.sockaddr_ll* %45, i32 0, i32 56)
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @os_strlcpy(i32 %48, i32 %52, i32 4)
  %54 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %55 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @SIOCGIFINDEX, align 4
  %59 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %60 = call i64 @ioctl(i64 %57, i32 %58, %struct.sockaddr_ll* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i64 @strerror(i32 %64)
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  store i32 -1, i32* %3, align 4
  br label %247

67:                                               ; preds = %44
  %68 = call i32 @os_memset(%struct.sockaddr_ll* %7, i32 0, i32 56)
  %69 = load i32, i32* @AF_PACKET, align 4
  %70 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 8
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = bitcast %struct.sockaddr_ll* %7 to %struct.sockaddr*
  %83 = call i32 @bind(i64 %81, %struct.sockaddr* %82, i32 56)
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = load i32, i32* @MSG_ERROR, align 4
  %87 = load i32, i32* @errno, align 4
  %88 = call i64 @strerror(i32 %87)
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %88)
  store i32 -1, i32* %3, align 4
  br label %247

90:                                               ; preds = %67
  %91 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %92 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @pae_group_addr, align 4
  %98 = call i64 @wired_multicast_membership(i64 %94, i64 %96, i32 %97, i32 1)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load i32, i32* @MSG_ERROR, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %247

103:                                              ; preds = %90
  %104 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %105 = call i32 @os_memset(%struct.sockaddr_ll* %104, i32 0, i32 56)
  %106 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @os_strlcpy(i32 %107, i32 %111, i32 4)
  %113 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %114 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @SIOCGIFHWADDR, align 4
  %118 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %119 = call i64 @ioctl(i64 %116, i32 %117, %struct.sockaddr_ll* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %103
  %122 = load i32, i32* @MSG_ERROR, align 4
  %123 = load i32, i32* @errno, align 4
  %124 = call i64 @strerror(i32 %123)
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %124)
  store i32 -1, i32* %3, align 4
  br label %247

126:                                              ; preds = %103
  %127 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ARPHRD_ETHER, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* @MSG_INFO, align 4
  %134 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %136)
  store i32 -1, i32* %3, align 4
  br label %247

138:                                              ; preds = %126
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ETH_ALEN, align 4
  %144 = call i32 @os_memcpy(i32* %139, i32 %142, i32 %143)
  %145 = load i32, i32* @PF_INET, align 4
  %146 = load i32, i32* @SOCK_DGRAM, align 4
  %147 = load i32, i32* @IPPROTO_UDP, align 4
  %148 = call i8* @socket(i32 %145, i32 %146, i32 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %151 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = icmp slt i64 %149, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %138
  %154 = load i32, i32* @MSG_ERROR, align 4
  %155 = load i32, i32* @errno, align 4
  %156 = call i64 @strerror(i32 %155)
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %156)
  store i32 -1, i32* %3, align 4
  br label %247

158:                                              ; preds = %138
  %159 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %160 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @handle_dhcp, align 4
  %163 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %164 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @eloop_register_read_sock(i64 %161, i32 %162, i32 %166, i32* null)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = load i32, i32* @MSG_INFO, align 4
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %247

172:                                              ; preds = %158
  %173 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_ll*
  %174 = call i32 @os_memset(%struct.sockaddr_ll* %173, i32 0, i32 56)
  %175 = load i32, i32* @AF_INET, align 4
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 5
  store i32 %175, i32* %176, align 4
  %177 = call i32 @htons(i32 67)
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 4
  store i32 %177, i32* %178, align 8
  %179 = load i32, i32* @INADDR_ANY, align 4
  %180 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %183 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* @SOL_SOCKET, align 4
  %186 = load i32, i32* @SO_REUSEADDR, align 4
  %187 = bitcast i32* %9 to i8*
  %188 = call i32 @setsockopt(i64 %184, i32 %185, i32 %186, i8* %187, i32 4)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %195

190:                                              ; preds = %172
  %191 = load i32, i32* @MSG_ERROR, align 4
  %192 = load i32, i32* @errno, align 4
  %193 = call i64 @strerror(i32 %192)
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %193)
  store i32 -1, i32* %3, align 4
  br label %247

195:                                              ; preds = %172
  %196 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %197 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @SOL_SOCKET, align 4
  %200 = load i32, i32* @SO_BROADCAST, align 4
  %201 = bitcast i32* %9 to i8*
  %202 = call i32 @setsockopt(i64 %198, i32 %199, i32 %200, i8* %201, i32 4)
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %209

204:                                              ; preds = %195
  %205 = load i32, i32* @MSG_ERROR, align 4
  %206 = load i32, i32* @errno, align 4
  %207 = call i64 @strerror(i32 %206)
  %208 = call i32 (i32, i8*, ...) @wpa_printf(i32 %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %207)
  store i32 -1, i32* %3, align 4
  br label %247

209:                                              ; preds = %195
  %210 = bitcast %struct.ifreq* %6 to %struct.sockaddr_ll*
  %211 = call i32 @os_memset(%struct.sockaddr_ll* %210, i32 0, i32 56)
  %212 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %216 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @IFNAMSIZ, align 4
  %220 = call i32 @os_strlcpy(i32 %214, i32 %218, i32 %219)
  %221 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %222 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @SOL_SOCKET, align 4
  %225 = load i32, i32* @SO_BINDTODEVICE, align 4
  %226 = bitcast %struct.ifreq* %6 to i8*
  %227 = call i32 @setsockopt(i64 %223, i32 %224, i32 %225, i8* %226, i32 56)
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %209
  %230 = load i32, i32* @MSG_ERROR, align 4
  %231 = load i32, i32* @errno, align 4
  %232 = call i64 @strerror(i32 %231)
  %233 = call i32 (i32, i8*, ...) @wpa_printf(i32 %230, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64 %232)
  store i32 -1, i32* %3, align 4
  br label %247

234:                                              ; preds = %209
  %235 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %4, align 8
  %236 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %239 = call i32 @bind(i64 %237, %struct.sockaddr* %238, i32 4)
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = load i32, i32* @MSG_ERROR, align 4
  %243 = load i32, i32* @errno, align 4
  %244 = call i64 @strerror(i32 %243)
  %245 = call i32 (i32, i8*, ...) @wpa_printf(i32 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %244)
  store i32 -1, i32* %3, align 4
  br label %247

246:                                              ; preds = %234
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %241, %229, %204, %190, %169, %153, %132, %121, %100, %85, %62, %41, %24
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i64 @eloop_register_read_sock(i64, i32, i32, i32*) #1

declare dso_local i32 @os_memset(%struct.sockaddr_ll*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i64, i32, %struct.sockaddr_ll*) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @wired_multicast_membership(i64, i64, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
