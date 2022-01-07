; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devenum.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_devinfo = type { i8* }
%struct.ng_btsocket_hci_raw_node_list_names = type { i32, %struct.nodeinfo* }
%struct.nodeinfo = type { i32 }
%struct.sockaddr_hci = type { i32, i8*, i32 }
%struct.sockaddr = type { i32 }

@HCI_DEVMAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_HCI = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_LIST_NAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_devenum(i64 (i32, %struct.bt_devinfo*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64 (i32, %struct.bt_devinfo*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ng_btsocket_hci_raw_node_list_names, align 8
  %7 = alloca %struct.bt_devinfo, align 8
  %8 = alloca %struct.sockaddr_hci, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 (i32, %struct.bt_devinfo*, i8*)* %0, i64 (i32, %struct.bt_devinfo*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @HCI_DEVMAX, align 4
  %13 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @calloc(i32 %15, i32 4)
  %17 = inttoptr i64 %16 to %struct.nodeinfo*
  %18 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  store %struct.nodeinfo* %17, %struct.nodeinfo** %18, align 8
  %19 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  %20 = load %struct.nodeinfo*, %struct.nodeinfo** %19, align 8
  %21 = icmp eq %struct.nodeinfo* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %128

24:                                               ; preds = %2
  %25 = call i32 @memset(%struct.sockaddr_hci* %8, i32 0, i32 24)
  %26 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %8, i32 0, i32 0
  store i32 24, i32* %26, align 8
  %27 = load i32, i32* @AF_BLUETOOTH, align 4
  %28 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %8, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 120, i8* %31, align 1
  %32 = load i32, i32* @PF_BLUETOOTH, align 4
  %33 = load i32, i32* @SOCK_RAW, align 4
  %34 = load i32, i32* @BLUETOOTH_PROTO_HCI, align 4
  %35 = call i32 @socket(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  %40 = load %struct.nodeinfo*, %struct.nodeinfo** %39, align 8
  %41 = call i32 @free(%struct.nodeinfo* %40)
  store i32 -1, i32* %3, align 4
  br label %128

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  %44 = bitcast %struct.sockaddr_hci* %8 to %struct.sockaddr*
  %45 = call i64 @bind(i32 %43, %struct.sockaddr* %44, i32 24)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = bitcast %struct.sockaddr_hci* %8 to %struct.sockaddr*
  %50 = call i64 @connect(i32 %48, %struct.sockaddr* %49, i32 24)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SIOC_HCI_RAW_NODE_LIST_NAMES, align 4
  %55 = call i64 @ioctl(i32 %53, i32 %54, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 16)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %47, %42
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  %61 = load %struct.nodeinfo*, %struct.nodeinfo** %60, align 8
  %62 = call i32 @free(%struct.nodeinfo* %61)
  store i32 -1, i32* %3, align 4
  br label %128

63:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %118, %63
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %121

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.bt_devinfo, %struct.bt_devinfo* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  %73 = load %struct.nodeinfo*, %struct.nodeinfo** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %73, i64 %75
  %77 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strlcpy(i8* %71, i32 %78, i32 8)
  %80 = call i64 @bt_devinfo(%struct.bt_devinfo* %7)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %118

83:                                               ; preds = %69
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load i64 (i32, %struct.bt_devinfo*, i8*)*, i64 (i32, %struct.bt_devinfo*, i8*)** %4, align 8
  %87 = icmp eq i64 (i32, %struct.bt_devinfo*, i8*)* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %118

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %8, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  %93 = load %struct.nodeinfo*, %struct.nodeinfo** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %93, i64 %95
  %97 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strlcpy(i8* %91, i32 %98, i32 8)
  %100 = load i32, i32* %9, align 4
  %101 = bitcast %struct.sockaddr_hci* %8 to %struct.sockaddr*
  %102 = call i64 @bind(i32 %100, %struct.sockaddr* %101, i32 24)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %9, align 4
  %106 = bitcast %struct.sockaddr_hci* %8 to %struct.sockaddr*
  %107 = call i64 @connect(i32 %105, %struct.sockaddr* %106, i32 24)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %89
  br label %118

110:                                              ; preds = %104
  %111 = load i64 (i32, %struct.bt_devinfo*, i8*)*, i64 (i32, %struct.bt_devinfo*, i8*)** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = call i64 %111(i32 %112, %struct.bt_devinfo* %7, i8* %113)
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %121

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %109, %88, %82
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %64

121:                                              ; preds = %116, %64
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @close(i32 %122)
  %124 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %6, i32 0, i32 1
  %125 = load %struct.nodeinfo*, %struct.nodeinfo** %124, align 8
  %126 = call i32 @free(%struct.nodeinfo* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %57, %38, %22
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_hci*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @free(%struct.nodeinfo*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_list_names*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i64 @bt_devinfo(%struct.bt_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
