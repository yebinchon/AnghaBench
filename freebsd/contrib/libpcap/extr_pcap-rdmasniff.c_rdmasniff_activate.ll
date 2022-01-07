; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i64, i32, %struct.TYPE_10__, i32, i8*, %struct.pcap_rdmasniff* }
%struct.TYPE_10__ = type { i32 }
%struct.pcap_rdmasniff = type { i8*, i64, i64, %struct.TYPE_12__*, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ibv_qp_init_attr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ibv_qp_attr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i64, i64 }
%struct.ibv_flow_attr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i64, i64 }
%struct.ibv_port_attr = type { i64 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to open device %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to alloc PD for device %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to create comp channel for device %s\00", align 1
@RDMASNIFF_NUM_RECEIVES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to create CQ for device %s\00", align 1
@IBV_QPT_RAW_PACKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to create QP for device %s\00", align 1
@IBV_QPS_INIT = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QP_PORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to modify QP to INIT for device %s\00", align 1
@IBV_QPS_RTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to modify QP to RTR for device %s\00", align 1
@IBV_FLOW_ATTR_SNIFFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to create flow for device %s\00", align 1
@RDMASNIFF_RECEIVE_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Failed to allocate receive buffer for device %s\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Failed to allocate oneshot buffer for device %s\00", align 1
@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to register MR for device %s\00", align 1
@IBV_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@DLT_INFINIBAND = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@rdmasniff_read = common dso_local global i32 0, align 4
@rdmasniff_stats = common dso_local global i32 0, align 4
@rdmasniff_cleanup = common dso_local global i32 0, align 4
@install_bpf_program = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@pcap_setnonblock_fd = common dso_local global i32 0, align 4
@rdmasniff_oneshot = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @rdmasniff_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdmasniff_activate(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.pcap_rdmasniff*, align 8
  %5 = alloca %struct.ibv_qp_init_attr, align 8
  %6 = alloca %struct.ibv_qp_attr, align 8
  %7 = alloca %struct.ibv_flow_attr, align 8
  %8 = alloca %struct.ibv_port_attr, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 17
  %12 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %11, align 8
  store %struct.pcap_rdmasniff* %12, %struct.pcap_rdmasniff** %4, align 8
  %13 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %14 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ibv_open_device(i32 %15)
  %17 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %18 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %20 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 14
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pcap_snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %376

33:                                               ; preds = %1
  %34 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %35 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @ibv_alloc_pd(i64 %36)
  %38 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %39 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %41 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %33
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 14
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pcap_snprintf(i32 %47, i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %376

54:                                               ; preds = %33
  %55 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %56 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.TYPE_12__* @ibv_create_comp_channel(i64 %57)
  %59 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %60 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %59, i32 0, i32 3
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %60, align 8
  %61 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %62 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %61, i32 0, i32 3
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 14
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pcap_snprintf(i32 %68, i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %376

75:                                               ; preds = %54
  %76 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %77 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @RDMASNIFF_NUM_RECEIVES, align 4
  %80 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %81 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = call i64 @ibv_create_cq(i64 %78, i32 %79, i32* null, %struct.TYPE_12__* %82, i32 0)
  %84 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %85 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %87 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %75
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 14
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pcap_snprintf(i32 %93, i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %376

100:                                              ; preds = %75
  %101 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %102 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ibv_req_notify_cq(i64 %103, i32 0)
  %105 = call i32 @memset(%struct.ibv_qp_init_attr* %5, i32 0, i32 48)
  %106 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %107 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %5, i32 0, i32 7
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %5, i32 0, i32 8
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* @RDMASNIFF_NUM_RECEIVES, align 4
  %112 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %5, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %5, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* @IBV_QPT_RAW_PACKET, align 4
  %117 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %5, i32 0, i32 5
  store i32 %116, i32* %117, align 4
  %118 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %119 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @ibv_create_qp(i64 %120, %struct.ibv_qp_init_attr* %5)
  %122 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %123 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  %124 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %125 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %100
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 15
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 14
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @pcap_snprintf(i32 %131, i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %376

138:                                              ; preds = %100
  %139 = bitcast %struct.ibv_qp_attr* %6 to %struct.ibv_qp_init_attr*
  %140 = call i32 @memset(%struct.ibv_qp_init_attr* %139, i32 0, i32 48)
  %141 = load i32, i32* @IBV_QPS_INIT, align 4
  %142 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 3
  store i32 %141, i32* %142, align 4
  %143 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %144 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 4
  store i32 %145, i32* %146, align 8
  %147 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %148 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = bitcast %struct.ibv_qp_attr* %6 to %struct.ibv_qp_init_attr*
  %151 = load i32, i32* @IBV_QP_STATE, align 4
  %152 = load i32, i32* @IBV_QP_PORT, align 4
  %153 = or i32 %151, %152
  %154 = call i64 @ibv_modify_qp(i64 %149, %struct.ibv_qp_init_attr* %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %138
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 15
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 14
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @pcap_snprintf(i32 %159, i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %376

166:                                              ; preds = %138
  %167 = bitcast %struct.ibv_qp_attr* %6 to %struct.ibv_qp_init_attr*
  %168 = call i32 @memset(%struct.ibv_qp_init_attr* %167, i32 0, i32 48)
  %169 = load i32, i32* @IBV_QPS_RTR, align 4
  %170 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 3
  store i32 %169, i32* %170, align 4
  %171 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %172 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = bitcast %struct.ibv_qp_attr* %6 to %struct.ibv_qp_init_attr*
  %175 = load i32, i32* @IBV_QP_STATE, align 4
  %176 = call i64 @ibv_modify_qp(i64 %173, %struct.ibv_qp_init_attr* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %166
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 15
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 14
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @pcap_snprintf(i32 %181, i32 %182, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %376

188:                                              ; preds = %166
  %189 = bitcast %struct.ibv_flow_attr* %7 to %struct.ibv_qp_init_attr*
  %190 = call i32 @memset(%struct.ibv_qp_init_attr* %189, i32 0, i32 48)
  %191 = load i32, i32* @IBV_FLOW_ATTR_SNIFFER, align 4
  %192 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %7, i32 0, i32 2
  store i32 %191, i32* %192, align 8
  %193 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %7, i32 0, i32 0
  store i32 48, i32* %193, align 8
  %194 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %195 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.ibv_flow_attr, %struct.ibv_flow_attr* %7, i32 0, i32 1
  store i32 %196, i32* %197, align 4
  %198 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %199 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = bitcast %struct.ibv_flow_attr* %7 to %struct.ibv_qp_init_attr*
  %202 = call i64 @ibv_create_flow(i64 %200, %struct.ibv_qp_init_attr* %201)
  %203 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %204 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %203, i32 0, i32 6
  store i64 %202, i64* %204, align 8
  %205 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %206 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %188
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 15
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 14
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @pcap_snprintf(i32 %212, i32 %213, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %217)
  br label %376

219:                                              ; preds = %188
  %220 = load i32, i32* @RDMASNIFF_NUM_RECEIVES, align 4
  %221 = load i32, i32* @RDMASNIFF_RECEIVE_SIZE, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @malloc(i32 %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 16
  store i8* %228, i8** %230, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 16
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %245, label %235

235:                                              ; preds = %219
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 15
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 14
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @pcap_snprintf(i32 %238, i32 %239, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %243)
  br label %376

245:                                              ; preds = %219
  %246 = load i32, i32* @RDMASNIFF_RECEIVE_SIZE, align 4
  %247 = call i8* @malloc(i32 %246)
  %248 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %249 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %248, i32 0, i32 0
  store i8* %247, i8** %249, align 8
  %250 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %251 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %264, label %254

254:                                              ; preds = %245
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 15
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 14
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @pcap_snprintf(i32 %257, i32 %258, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %262)
  br label %376

264:                                              ; preds = %245
  %265 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %266 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 16
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %275 = call i64 @ibv_reg_mr(i64 %267, i8* %270, i32 %273, i32 %274)
  %276 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %277 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %276, i32 0, i32 7
  store i64 %275, i64* %277, align 8
  %278 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %279 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %264
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 15
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 14
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @pcap_snprintf(i32 %285, i32 %286, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %290)
  br label %376

292:                                              ; preds = %264
  store i32 0, i32* %9, align 4
  br label %293

293:                                              ; preds = %301, %292
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* @RDMASNIFF_NUM_RECEIVES, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @rdmasniff_post_recv(%struct.TYPE_11__* %298, i32 %299)
  br label %301

301:                                              ; preds = %297
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %293

304:                                              ; preds = %293
  %305 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %306 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %309 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %308, i32 0, i32 8
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @ibv_query_port(i64 %307, i32 %310, %struct.ibv_port_attr* %8)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %304
  %314 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %8, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @IBV_LINK_LAYER_INFINIBAND, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i32, i32* @DLT_INFINIBAND, align 4
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 13
  store i32 %319, i32* %321, align 8
  br label %326

322:                                              ; preds = %313, %304
  %323 = load i32, i32* @DLT_EN10MB, align 4
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 13
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %322, %318
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp sle i32 %329, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %326
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @RDMASNIFF_RECEIVE_SIZE, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %331, %326
  %338 = load i32, i32* @RDMASNIFF_RECEIVE_SIZE, align 4
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  br label %341

341:                                              ; preds = %337, %331
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 12
  store i64 0, i64* %343, align 8
  %344 = load i32, i32* @rdmasniff_read, align 4
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 11
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* @rdmasniff_stats, align 4
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 10
  store i32 %347, i32* %349, align 8
  %350 = load i32, i32* @rdmasniff_cleanup, align 4
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 9
  store i32 %350, i32* %352, align 4
  %353 = load i32, i32* @install_bpf_program, align 4
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 8
  store i32 %353, i32* %355, align 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 7
  store i32* null, i32** %357, align 8
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 6
  store i32* null, i32** %359, align 8
  %360 = load i32, i32* @pcap_getnonblock_fd, align 4
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 5
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* @pcap_setnonblock_fd, align 4
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 4
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* @rdmasniff_oneshot, align 4
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 3
  store i32 %366, i32* %368, align 4
  %369 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %370 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %369, i32 0, i32 3
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 2
  store i32 %373, i32* %375, align 8
  store i32 0, i32* %2, align 4
  br label %458

376:                                              ; preds = %282, %254, %235, %209, %178, %156, %128, %90, %65, %44, %23
  %377 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %378 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %377, i32 0, i32 7
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %376
  %382 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %383 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %382, i32 0, i32 7
  %384 = load i64, i64* %383, align 8
  %385 = call i32 @ibv_dereg_mr(i64 %384)
  br label %386

386:                                              ; preds = %381, %376
  %387 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %388 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %387, i32 0, i32 6
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %393 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %392, i32 0, i32 6
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @ibv_destroy_flow(i64 %394)
  br label %396

396:                                              ; preds = %391, %386
  %397 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %398 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %397, i32 0, i32 5
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %396
  %402 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %403 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %402, i32 0, i32 5
  %404 = load i64, i64* %403, align 8
  %405 = call i32 @ibv_destroy_qp(i64 %404)
  br label %406

406:                                              ; preds = %401, %396
  %407 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %408 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %407, i32 0, i32 4
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %406
  %412 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %413 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = call i32 @ibv_destroy_cq(i64 %414)
  br label %416

416:                                              ; preds = %411, %406
  %417 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %418 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %417, i32 0, i32 3
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %418, align 8
  %420 = icmp ne %struct.TYPE_12__* %419, null
  br i1 %420, label %421, label %426

421:                                              ; preds = %416
  %422 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %423 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %422, i32 0, i32 3
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %423, align 8
  %425 = call i32 @ibv_destroy_comp_channel(%struct.TYPE_12__* %424)
  br label %426

426:                                              ; preds = %421, %416
  %427 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %428 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %426
  %432 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %433 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @ibv_dealloc_pd(i64 %434)
  br label %436

436:                                              ; preds = %431, %426
  %437 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %438 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %436
  %442 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %443 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = call i32 @ibv_close_device(i64 %444)
  br label %446

446:                                              ; preds = %441, %436
  %447 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %448 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = icmp ne i8* %449, null
  br i1 %450, label %451, label %456

451:                                              ; preds = %446
  %452 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %4, align 8
  %453 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %452, i32 0, i32 0
  %454 = load i8*, i8** %453, align 8
  %455 = call i32 @free(i8* %454)
  br label %456

456:                                              ; preds = %451, %446
  %457 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %457, i32* %2, align 4
  br label %458

458:                                              ; preds = %456, %341
  %459 = load i32, i32* %2, align 4
  ret i32 %459
}

declare dso_local i64 @ibv_open_device(i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @ibv_alloc_pd(i64) #1

declare dso_local %struct.TYPE_12__* @ibv_create_comp_channel(i64) #1

declare dso_local i64 @ibv_create_cq(i64, i32, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ibv_req_notify_cq(i64, i32) #1

declare dso_local i32 @memset(%struct.ibv_qp_init_attr*, i32, i32) #1

declare dso_local i64 @ibv_create_qp(i64, %struct.ibv_qp_init_attr*) #1

declare dso_local i64 @ibv_modify_qp(i64, %struct.ibv_qp_init_attr*, i32) #1

declare dso_local i64 @ibv_create_flow(i64, %struct.ibv_qp_init_attr*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @ibv_reg_mr(i64, i8*, i32, i32) #1

declare dso_local i32 @rdmasniff_post_recv(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ibv_query_port(i64, i32, %struct.ibv_port_attr*) #1

declare dso_local i32 @ibv_dereg_mr(i64) #1

declare dso_local i32 @ibv_destroy_flow(i64) #1

declare dso_local i32 @ibv_destroy_qp(i64) #1

declare dso_local i32 @ibv_destroy_cq(i64) #1

declare dso_local i32 @ibv_destroy_comp_channel(%struct.TYPE_12__*) #1

declare dso_local i32 @ibv_dealloc_pd(i64) #1

declare dso_local i32 @ibv_close_device(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
