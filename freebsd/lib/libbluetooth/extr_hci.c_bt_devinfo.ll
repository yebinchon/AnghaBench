; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_devinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { %struct.ng_btsocket_hci_raw_node_state }
%struct.ng_btsocket_hci_raw_node_state = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_hci = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ng_btsocket_hci_raw_node_bdaddr = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_features = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_buffer = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_stat = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_link_policy_mask = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_packet_mask = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_role_switch = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.ng_btsocket_hci_raw_node_debug = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_STATE = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_BDADDR = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_FEATURES = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_BUFFER = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_STAT = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_LINK_POLICY_MASK = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_PACKET_MASK = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_devinfo(%struct.bt_devinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt_devinfo*, align 8
  %4 = alloca %union.anon, align 4
  %5 = alloca %struct.sockaddr_hci, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bt_devinfo* %0, %struct.bt_devinfo** %3, align 8
  %9 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %10 = icmp eq %struct.bt_devinfo* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %236

13:                                               ; preds = %1
  %14 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %15 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %14, i32 0, i32 22
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bt_devopen(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %236

21:                                               ; preds = %13
  store i32 -1, i32* %8, align 4
  store i32 4, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = bitcast %struct.sockaddr_hci* %5 to %struct.sockaddr*
  %24 = call i64 @getsockname(i32 %22, %struct.sockaddr* %23, i32* %6)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %232

27:                                               ; preds = %21
  %28 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %29 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %28, i32 0, i32 22
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlcpy(i32 %30, i32 %32, i32 4)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_STATE, align 4
  %36 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_state*
  %37 = call i64 @ioctl(i32 %34, i32 %35, %struct.ng_btsocket_hci_raw_node_state* %36, i32 88)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %232

40:                                               ; preds = %27
  %41 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_state*
  %42 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_state, %struct.ng_btsocket_hci_raw_node_state* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %45 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %44, i32 0, i32 21
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_BDADDR, align 4
  %48 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_bdaddr*
  %49 = bitcast %struct.ng_btsocket_hci_raw_node_bdaddr* %48 to %struct.ng_btsocket_hci_raw_node_state*
  %50 = call i64 @ioctl(i32 %46, i32 %47, %struct.ng_btsocket_hci_raw_node_state* %49, i32 88)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %232

53:                                               ; preds = %40
  %54 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %55 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %54, i32 0, i32 20
  %56 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_bdaddr*
  %57 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_bdaddr, %struct.ng_btsocket_hci_raw_node_bdaddr* %56, i32 0, i32 7
  %58 = call i32 @bdaddr_copy(i32* %55, i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_FEATURES, align 4
  %61 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_features*
  %62 = bitcast %struct.ng_btsocket_hci_raw_node_features* %61 to %struct.ng_btsocket_hci_raw_node_state*
  %63 = call i64 @ioctl(i32 %59, i32 %60, %struct.ng_btsocket_hci_raw_node_state* %62, i32 88)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %232

66:                                               ; preds = %53
  %67 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %68 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 4
  %70 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_features*
  %71 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_features, %struct.ng_btsocket_hci_raw_node_features* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %69, i32 %72, i32 4)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_BUFFER, align 4
  %76 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %77 = bitcast %struct.ng_btsocket_hci_raw_node_buffer* %76 to %struct.ng_btsocket_hci_raw_node_state*
  %78 = call i64 @ioctl(i32 %74, i32 %75, %struct.ng_btsocket_hci_raw_node_state* %77, i32 88)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %232

81:                                               ; preds = %66
  %82 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %83 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %87 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %86, i32 0, i32 18
  store i32 %85, i32* %87, align 4
  %88 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %89 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %93 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %92, i32 0, i32 17
  store i32 %91, i32* %93, align 4
  %94 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %95 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %99 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %98, i32 0, i32 16
  store i32 %97, i32* %99, align 4
  %100 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %101 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %105 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %104, i32 0, i32 15
  store i32 %103, i32* %105, align 4
  %106 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %107 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %111 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 4
  %112 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %113 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %117 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %116, i32 0, i32 13
  store i32 %115, i32* %117, align 4
  %118 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_buffer*
  %119 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %123 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_STAT, align 4
  %126 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %127 = bitcast %struct.ng_btsocket_hci_raw_node_stat* %126 to %struct.ng_btsocket_hci_raw_node_state*
  %128 = call i64 @ioctl(i32 %124, i32 %125, %struct.ng_btsocket_hci_raw_node_state* %127, i32 88)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %81
  br label %232

131:                                              ; preds = %81
  %132 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %133 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %137 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %136, i32 0, i32 11
  store i32 %135, i32* %137, align 4
  %138 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %139 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %143 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %142, i32 0, i32 10
  store i32 %141, i32* %143, align 4
  %144 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %145 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %149 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %148, i32 0, i32 9
  store i32 %147, i32* %149, align 4
  %150 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %151 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %155 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 4
  %156 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %157 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %161 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %163 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %167 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 4
  %168 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %169 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %173 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_stat*
  %175 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %179 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_LINK_POLICY_MASK, align 4
  %182 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_link_policy_mask*
  %183 = bitcast %struct.ng_btsocket_hci_raw_node_link_policy_mask* %182 to %struct.ng_btsocket_hci_raw_node_state*
  %184 = call i64 @ioctl(i32 %180, i32 %181, %struct.ng_btsocket_hci_raw_node_state* %183, i32 88)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %131
  br label %232

187:                                              ; preds = %131
  %188 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_link_policy_mask*
  %189 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_link_policy_mask, %struct.ng_btsocket_hci_raw_node_link_policy_mask* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %192 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_PACKET_MASK, align 4
  %195 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_packet_mask*
  %196 = bitcast %struct.ng_btsocket_hci_raw_node_packet_mask* %195 to %struct.ng_btsocket_hci_raw_node_state*
  %197 = call i64 @ioctl(i32 %193, i32 %194, %struct.ng_btsocket_hci_raw_node_state* %196, i32 88)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %232

200:                                              ; preds = %187
  %201 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_packet_mask*
  %202 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_packet_mask, %struct.ng_btsocket_hci_raw_node_packet_mask* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %205 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH, align 4
  %208 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_role_switch*
  %209 = bitcast %struct.ng_btsocket_hci_raw_node_role_switch* %208 to %struct.ng_btsocket_hci_raw_node_state*
  %210 = call i64 @ioctl(i32 %206, i32 %207, %struct.ng_btsocket_hci_raw_node_state* %209, i32 88)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  br label %232

213:                                              ; preds = %200
  %214 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_role_switch*
  %215 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_role_switch, %struct.ng_btsocket_hci_raw_node_role_switch* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %218 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_DEBUG, align 4
  %221 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_debug*
  %222 = bitcast %struct.ng_btsocket_hci_raw_node_debug* %221 to %struct.ng_btsocket_hci_raw_node_state*
  %223 = call i64 @ioctl(i32 %219, i32 %220, %struct.ng_btsocket_hci_raw_node_state* %222, i32 88)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %213
  br label %232

226:                                              ; preds = %213
  %227 = bitcast %union.anon* %4 to %struct.ng_btsocket_hci_raw_node_debug*
  %228 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_debug, %struct.ng_btsocket_hci_raw_node_debug* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.bt_devinfo*, %struct.bt_devinfo** %3, align 8
  %231 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %226, %225, %212, %199, %186, %130, %80, %65, %52, %39, %26
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @bt_devclose(i32 %233)
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %232, %20, %11
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @bt_devopen(i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_state*, i32) #1

declare dso_local i32 @bdaddr_copy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bt_devclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
