; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_do_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_do_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }
%struct.ata_params = type { i32 }
%struct.ccb_pathinq = type { i64 }
%struct.ccb_getdev = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"couldn't get CPI\00", align 1
@PROTO_ATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"couldn't get CGD\00", align 1
@ATA_ATA_IDENTIFY = common dso_local global i64 0, align 8
@ATA_ATAPI_IDENTIFY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"can't calloc memory for identify\0A\00", align 1
@CAM_DIR_IN = common dso_local global i32 0, align 4
@AP_PROTO_PIO_IN = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid identify response detected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_do_identify(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, %struct.ata_params** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.ata_params**, align 8
  %12 = alloca %struct.ata_params*, align 8
  %13 = alloca %struct.ccb_pathinq, align 8
  %14 = alloca %struct.ccb_getdev, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.cam_device* %0, %struct.cam_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ccb* %3, %union.ccb** %10, align 8
  store %struct.ata_params** %4, %struct.ata_params*** %11, align 8
  %20 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %21 = call i64 @get_cpi(%struct.cam_device* %20, %struct.ccb_pathinq* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %120

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %13, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PROTO_ATA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %32 = call i64 @get_cgd(%struct.cam_device* %31, %struct.ccb_getdev* %14)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %120

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %14, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PROTO_ATA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @ATA_ATA_IDENTIFY, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @ATA_ATAPI_IDENTIFY, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  store i64 %46, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %50

47:                                               ; preds = %25
  %48 = load i64, i64* @ATA_ATA_IDENTIFY, align 8
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* @ATA_ATAPI_IDENTIFY, align 8
  store i64 %49, i64* %19, align 8
  br label %50

50:                                               ; preds = %47, %45
  %51 = call i64 @calloc(i32 1, i32 4)
  %52 = inttoptr i64 %51 to i64*
  store i64* %52, i64** %17, align 8
  %53 = load i64*, i64** %17, align 8
  %54 = icmp eq i64* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %120

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %83, %57
  %59 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %60 = load %union.ccb*, %union.ccb** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @CAM_DIR_IN, align 4
  %63 = load i32, i32* @AP_PROTO_PIO_IN, align 4
  %64 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %65 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %68 = load i64, i64* %18, align 8
  %69 = load i64*, i64** %17, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  br label %75

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 30000, %74 ]
  %77 = call i32 @ata_do_cmd(%struct.cam_device* %59, %union.ccb* %60, i32 %61, i32 %62, i32 %63, i32 %66, i32 %67, i64 %68, i32 0, i32 0, i32 0, i64* %69, i32 4, i32 %76, i32 0)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i64, i64* %19, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* %19, align 8
  store i64 %84, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %58

85:                                               ; preds = %80
  %86 = load i64*, i64** %17, align 8
  %87 = call i32 @free(i64* %86)
  store i32 1, i32* %6, align 4
  br label %120

88:                                               ; preds = %75
  %89 = load i64*, i64** %17, align 8
  %90 = bitcast i64* %89 to %struct.ata_params*
  store %struct.ata_params* %90, %struct.ata_params** %12, align 8
  %91 = load %struct.ata_params*, %struct.ata_params** %12, align 8
  %92 = call i32 @ata_param_fixup(%struct.ata_params* %91)
  store i32 1, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %106, %88
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 2
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i64*, i64** %17, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %104, %97
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %93

109:                                              ; preds = %93
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i64*, i64** %17, align 8
  %115 = call i32 @free(i64* %114)
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %6, align 4
  br label %120

117:                                              ; preds = %109
  %118 = load %struct.ata_params*, %struct.ata_params** %12, align 8
  %119 = load %struct.ata_params**, %struct.ata_params*** %11, align 8
  store %struct.ata_params* %118, %struct.ata_params** %119, align 8
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %112, %85, %55, %34, %23
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @get_cpi(%struct.cam_device*, %struct.ccb_pathinq*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @get_cgd(%struct.cam_device*, %struct.ccb_getdev*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @ata_param_fixup(%struct.ata_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
