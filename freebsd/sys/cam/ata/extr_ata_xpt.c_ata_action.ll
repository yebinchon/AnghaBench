; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.cam_ed*, i32 }
%struct.cam_ed = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@CAM_DEV_IDENTIFY_DATA_VALID = common dso_local global i32 0, align 4
@ATA_PROTO_MASK = common dso_local global i32 0, align 4
@ATA_PROTO_CFA = common dso_local global i32 0, align 4
@ATA_PROTO_ATAPI_16 = common dso_local global i32 0, align 4
@ATA_PROTO_ATAPI_12 = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @ata_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_action(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %2, align 8
  %6 = load %union.ccb*, %union.ccb** %2, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_10__*
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %117 [
    i32 128, label %10
    i32 132, label %19
    i32 130, label %19
    i32 131, label %28
    i32 133, label %45
    i32 129, label %49
    i32 134, label %114
  ]

10:                                               ; preds = %1
  %11 = load %union.ccb*, %union.ccb** %2, align 8
  %12 = bitcast %union.ccb* %11 to i32*
  %13 = load %union.ccb*, %union.ccb** %2, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_10__*
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @ata_set_transfer_settings(i32* %12, %struct.TYPE_11__* %16, i32 %17)
  br label %120

19:                                               ; preds = %1, %1
  %20 = load %union.ccb*, %union.ccb** %2, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_10__*
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %union.ccb*, %union.ccb** %2, align 8
  %27 = call i32 @ata_scan_bus(i32 %25, %union.ccb* %26)
  br label %120

28:                                               ; preds = %1
  %29 = load %union.ccb*, %union.ccb** %2, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_10__*
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %union.ccb*, %union.ccb** %2, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %union.ccb*, %union.ccb** %2, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %union.ccb*, %union.ccb** %2, align 8
  %44 = call i32 @ata_scan_lun(i32 %34, %struct.TYPE_11__* %38, i32 %42, %union.ccb* %43)
  br label %120

45:                                               ; preds = %1
  %46 = load %union.ccb*, %union.ccb** %2, align 8
  %47 = bitcast %union.ccb* %46 to i32*
  %48 = call i32 @ata_get_transfer_settings(i32* %47)
  br label %120

49:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %50 = load %union.ccb*, %union.ccb** %2, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_10__*
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.cam_ed*, %struct.cam_ed** %54, align 8
  store %struct.cam_ed* %55, %struct.cam_ed** %3, align 8
  %56 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %57 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PROTO_SCSI, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %49
  %62 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %63 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CAM_DEV_IDENTIFY_DATA_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %61
  %69 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %70 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATA_PROTO_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %76 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATA_PROTO_CFA, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %95

82:                                               ; preds = %68
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ATA_PROTO_ATAPI_16, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @ATA_PROTO_ATAPI_12, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 12, i32 0
  br label %93

93:                                               ; preds = %87, %86
  %94 = phi i32 [ 16, %86 ], [ %92, %87 ]
  br label %95

95:                                               ; preds = %93, %81
  %96 = phi i32 [ 0, %81 ], [ %94, %93 ]
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %61, %49
  %98 = load %union.ccb*, %union.ccb** %2, align 8
  %99 = bitcast %union.ccb* %98 to %struct.TYPE_9__*
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i32, i32* @CAM_REQ_INVALID, align 4
  %106 = load %union.ccb*, %union.ccb** %2, align 8
  %107 = bitcast %union.ccb* %106 to %struct.TYPE_10__*
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %union.ccb*, %union.ccb** %2, align 8
  %110 = call i32 @xpt_done(%union.ccb* %109)
  br label %120

111:                                              ; preds = %97
  %112 = load %union.ccb*, %union.ccb** %2, align 8
  %113 = call i32 @xpt_action_default(%union.ccb* %112)
  br label %120

114:                                              ; preds = %1
  %115 = load %union.ccb*, %union.ccb** %2, align 8
  %116 = call i32 @ata_dev_advinfo(%union.ccb* %115)
  br label %120

117:                                              ; preds = %1
  %118 = load %union.ccb*, %union.ccb** %2, align 8
  %119 = call i32 @xpt_action_default(%union.ccb* %118)
  br label %120

120:                                              ; preds = %117, %114, %111, %104, %45, %28, %19, %10
  ret void
}

declare dso_local i32 @ata_set_transfer_settings(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ata_scan_bus(i32, %union.ccb*) #1

declare dso_local i32 @ata_scan_lun(i32, %struct.TYPE_11__*, i32, %union.ccb*) #1

declare dso_local i32 @ata_get_transfer_settings(i32*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

declare dso_local i32 @ata_dev_advinfo(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
