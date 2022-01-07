; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreaddvdstructure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdreaddvdstructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.dvd_struct = type { i32, i32, i32, i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_read_dvd_struct_data_layer_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvd_layer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.scsi_read_dvd_struct_data_physical = type { %struct.scsi_read_dvd_struct_data_layer_desc }
%struct.scsi_read_dvd_struct_data_copyright = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@cd_retry_count = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@cderror = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@SF_RETRY_UA = common dso_local global i32 0, align 4
@RDSD_BOOK_TYPE_MASK = common dso_local global i32 0, align 4
@RDSD_BOOK_TYPE_SHIFT = common dso_local global i32 0, align 4
@RDSD_BOOK_VERSION_MASK = common dso_local global i32 0, align 4
@RDSD_DISC_SIZE_MASK = common dso_local global i32 0, align 4
@RDSD_DISC_SIZE_SHIFT = common dso_local global i32 0, align 4
@RDSD_MAX_RATE_MASK = common dso_local global i32 0, align 4
@RDSD_NUM_LAYERS_MASK = common dso_local global i32 0, align 4
@RDSD_NUM_LAYERS_SHIFT = common dso_local global i32 0, align 4
@RDSD_TRACK_PATH_MASK = common dso_local global i32 0, align 4
@RDSD_TRACK_PATH_SHIFT = common dso_local global i32 0, align 4
@RDSD_LAYER_TYPE_MASK = common dso_local global i32 0, align 4
@RDSD_LIN_DENSITY_MASK = common dso_local global i32 0, align 4
@RDSD_LIN_DENSITY_SHIFT = common dso_local global i32 0, align 4
@RDSD_TRACK_DENSITY_MASK = common dso_local global i32 0, align 4
@RDSD_BCA_MASK = common dso_local global i32 0, align 4
@RDSD_BCA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.dvd_struct*)* @cdreaddvdstructure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdreaddvdstructure(%struct.cam_periph* %0, %struct.dvd_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.dvd_struct*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_read_dvd_struct_data_layer_desc*, align 8
  %12 = alloca %struct.dvd_layer*, align 8
  %13 = alloca %struct.scsi_read_dvd_struct_data_physical*, align 8
  %14 = alloca %struct.scsi_read_dvd_struct_data_copyright*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.dvd_struct* %1, %struct.dvd_struct** %5, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %16 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %39 [
    i32 134, label %18
    i32 142, label %19
    i32 139, label %20
    i32 144, label %21
    i32 136, label %22
    i32 143, label %23
    i32 132, label %25
    i32 138, label %26
    i32 140, label %27
    i32 135, label %28
    i32 129, label %29
    i32 131, label %30
    i32 130, label %32
    i32 133, label %34
    i32 128, label %35
    i32 141, label %36
    i32 137, label %38
  ]

18:                                               ; preds = %2
  store i32 32, i32* %10, align 4
  br label %41

19:                                               ; preds = %2
  store i32 8, i32* %10, align 4
  br label %41

20:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

21:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

22:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  store i32 %24, i32* %3, align 4
  br label %249

25:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

26:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

27:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

28:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

29:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  store i32 %31, i32* %3, align 4
  br label %249

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* %3, align 4
  br label %249

34:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

35:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  br label %41

36:                                               ; preds = %2
  %37 = load i32, i32* @ENODEV, align 4
  store i32 %37, i32* %3, align 4
  br label %249

38:                                               ; preds = %2
  store i32 65535, i32* %10, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %249

41:                                               ; preds = %38, %35, %34, %29, %28, %27, %26, %25, %22, %21, %20, %19, %18
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @M_DEVBUF, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i32* @malloc(i32 %45, i32 %46, i32 %49)
  store i32* %50, i32** %7, align 8
  br label %52

51:                                               ; preds = %41
  store i32* null, i32** %7, align 8
  br label %52

52:                                               ; preds = %51, %44
  %53 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %54 = call i32 @cam_periph_lock(%struct.cam_periph* %53)
  %55 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %56 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %57 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %55, i32 %56)
  store %union.ccb* %57, %union.ccb** %6, align 8
  %58 = load %union.ccb*, %union.ccb** %6, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_2__*
  %60 = load i32, i32* @cd_retry_count, align 4
  %61 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %64 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %67 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %70 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SSD_FULL_SIZE, align 4
  %75 = call i32 @scsi_read_dvd_structure(%struct.TYPE_2__* %59, i32 %60, i32* null, i32 %61, i64 %62, i32 %65, i32 %68, i32 %71, i32* %72, i32 %73, i32 %74, i32 50000)
  %76 = load %union.ccb*, %union.ccb** %6, align 8
  %77 = load i32, i32* @cderror, align 4
  %78 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %79 = load i32, i32* @SF_RETRY_UA, align 4
  %80 = call i32 @cdrunccb(%union.ccb* %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %52
  br label %236

84:                                               ; preds = %52
  %85 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %86 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %213 [
    i32 134, label %88
    i32 142, label %198
  ]

88:                                               ; preds = %84
  %89 = load i32*, i32** %7, align 8
  %90 = bitcast i32* %89 to %struct.scsi_read_dvd_struct_data_physical*
  store %struct.scsi_read_dvd_struct_data_physical* %90, %struct.scsi_read_dvd_struct_data_physical** %13, align 8
  %91 = load %struct.scsi_read_dvd_struct_data_physical*, %struct.scsi_read_dvd_struct_data_physical** %13, align 8
  %92 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_physical, %struct.scsi_read_dvd_struct_data_physical* %91, i32 0, i32 0
  store %struct.scsi_read_dvd_struct_data_layer_desc* %92, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %93 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %94 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %93, i32 0, i32 1
  %95 = bitcast i32* %94 to %struct.dvd_layer*
  store %struct.dvd_layer* %95, %struct.dvd_layer** %12, align 8
  %96 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %97 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %96, i32 0, i32 0
  store i32 32, i32* %97, align 4
  %98 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %99 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RDSD_BOOK_TYPE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @RDSD_BOOK_TYPE_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %106 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %108 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RDSD_BOOK_VERSION_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %113 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %115 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RDSD_DISC_SIZE_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @RDSD_DISC_SIZE_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %122 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %124 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RDSD_MAX_RATE_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %129 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %131 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RDSD_NUM_LAYERS_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @RDSD_NUM_LAYERS_SHIFT, align 4
  %136 = ashr i32 %134, %135
  %137 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %138 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %140 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RDSD_TRACK_PATH_MASK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @RDSD_TRACK_PATH_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %147 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %149 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RDSD_LAYER_TYPE_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %154 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %156 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RDSD_LIN_DENSITY_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @RDSD_LIN_DENSITY_SHIFT, align 4
  %161 = ashr i32 %159, %160
  %162 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %163 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %165 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @RDSD_TRACK_DENSITY_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %170 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 8
  %171 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %172 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RDSD_BCA_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* @RDSD_BCA_SHIFT, align 4
  %177 = ashr i32 %175, %176
  %178 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %179 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 4
  %180 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %181 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @scsi_3btoul(i32 %182)
  %184 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %185 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %184, i32 0, i32 12
  store i8* %183, i8** %185, align 8
  %186 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %187 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @scsi_3btoul(i32 %188)
  %190 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %191 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %190, i32 0, i32 11
  store i8* %189, i8** %191, align 8
  %192 = load %struct.scsi_read_dvd_struct_data_layer_desc*, %struct.scsi_read_dvd_struct_data_layer_desc** %11, align 8
  %193 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_layer_desc, %struct.scsi_read_dvd_struct_data_layer_desc* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @scsi_3btoul(i32 %194)
  %196 = load %struct.dvd_layer*, %struct.dvd_layer** %12, align 8
  %197 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %196, i32 0, i32 10
  store i8* %195, i8** %197, align 8
  br label %235

198:                                              ; preds = %84
  %199 = load i32*, i32** %7, align 8
  %200 = bitcast i32* %199 to %struct.scsi_read_dvd_struct_data_copyright*
  store %struct.scsi_read_dvd_struct_data_copyright* %200, %struct.scsi_read_dvd_struct_data_copyright** %14, align 8
  %201 = load %struct.scsi_read_dvd_struct_data_copyright*, %struct.scsi_read_dvd_struct_data_copyright** %14, align 8
  %202 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_copyright, %struct.scsi_read_dvd_struct_data_copyright* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %205 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.scsi_read_dvd_struct_data_copyright*, %struct.scsi_read_dvd_struct_data_copyright** %14, align 8
  %207 = getelementptr inbounds %struct.scsi_read_dvd_struct_data_copyright, %struct.scsi_read_dvd_struct_data_copyright* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %210 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %212 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %211, i32 0, i32 0
  store i32 0, i32* %212, align 4
  br label %235

213:                                              ; preds = %84
  %214 = load i32, i32* %10, align 4
  %215 = load %union.ccb*, %union.ccb** %6, align 8
  %216 = bitcast %union.ccb* %215 to %struct.TYPE_2__*
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %214, %218
  %220 = sext i32 %219 to i64
  %221 = sub i64 %220, 4
  %222 = trunc i64 %221 to i32
  %223 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %224 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  %227 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %228 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %231 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @min(i32 4, i32 %232)
  %234 = call i32 @bcopy(i32* %226, i32 %229, i32 %233)
  br label %235

235:                                              ; preds = %213, %198, %88
  br label %236

236:                                              ; preds = %235, %83
  %237 = load %union.ccb*, %union.ccb** %6, align 8
  %238 = call i32 @xpt_release_ccb(%union.ccb* %237)
  %239 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %240 = call i32 @cam_periph_unlock(%struct.cam_periph* %239)
  %241 = load i32*, i32** %7, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* @M_DEVBUF, align 4
  %246 = call i32 @free(i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %236
  %248 = load i32, i32* %9, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %247, %39, %36, %32, %30, %23
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local i32 @scsi_read_dvd_structure(%struct.TYPE_2__*, i32, i32*, i32, i64, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cdrunccb(%union.ccb*, i32, i32, i32) #1

declare dso_local i8* @scsi_3btoul(i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
