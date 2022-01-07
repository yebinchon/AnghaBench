; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_block_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_block_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_vpd_block_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ctl_io = type { i32 }

@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_BLOCK_LIMITS = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_UNMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"unmap_max_lba\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unmap_max_descr\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"write_same_max_lba\00", align 1
@SVPD_BL_WSNZ = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_block_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_block_limits(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_block_limits*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %10 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %9)
  store %struct.ctl_lun* %10, %struct.ctl_lun** %5, align 8
  %11 = load i32, i32* @M_CTL, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @malloc(i32 68, i32 %11, i32 %14)
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 6
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.scsi_vpd_block_limits*
  store %struct.scsi_vpd_block_limits* %21, %struct.scsi_vpd_block_limits** %6, align 8
  %22 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @min(i32 68, i32 %28)
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %31 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %36 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %38 = icmp ne %struct.ctl_lun* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %41 = shl i32 %40, 5
  %42 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %43 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  %48 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %57

50:                                               ; preds = %2
  %51 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %52 = shl i32 %51, 5
  %53 = load i32, i32* @T_DIRECT, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %56 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %39
  %58 = load i32, i32* @SVPD_BLOCK_LIMITS, align 4
  %59 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %60 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %59, i32 0, i32 16
  store i32 %58, i32* %60, align 4
  %61 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %62 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %61, i32 0, i32 15
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @scsi_ulto2b(i32 64, i32 %63)
  %65 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %66 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %65, i32 0, i32 1
  store i32 255, i32* %66, align 4
  %67 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %68 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %67, i32 0, i32 14
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scsi_ulto4b(i32 -1, i32 %69)
  %71 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %72 = icmp ne %struct.ctl_lun* %71, null
  br i1 %72, label %73, label %213

73:                                               ; preds = %57
  %74 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %75 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %80 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @scsi_ulto4b(i32 %78, i32 %81)
  %83 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %84 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CTL_LUN_FLAG_UNMAP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %154

91:                                               ; preds = %73
  store i32 -1, i32* %8, align 4
  %92 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %93 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @dnvlist_get_string(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %97, i8** %7, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @ctl_expand_number(i8* %101, i32* %8)
  br label %103

103:                                              ; preds = %100, %91
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %106 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @scsi_ulto4b(i32 %104, i32 %107)
  store i32 -1, i32* %8, align 4
  %109 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %110 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @dnvlist_get_string(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %114, i8** %7, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @ctl_expand_number(i8* %118, i32* %8)
  br label %120

120:                                              ; preds = %117, %103
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %123 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @scsi_ulto4b(i32 %121, i32 %124)
  %126 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %127 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %120
  %133 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %134 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 1, %137
  %139 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %140 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @scsi_ulto4b(i32 %138, i32 %141)
  %143 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %144 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = or i32 -2147483648, %147
  %149 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %150 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @scsi_ulto4b(i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %132, %120
  br label %154

154:                                              ; preds = %153, %73
  %155 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %156 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @scsi_ulto4b(i32 %159, i32 %162)
  %164 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %165 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @scsi_ulto4b(i32 0, i32 %166)
  %168 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %169 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @scsi_ulto4b(i32 0, i32 %170)
  %172 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %173 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @scsi_ulto4b(i32 0, i32 %174)
  %176 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %177 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @scsi_ulto4b(i32 0, i32 %178)
  %180 = load i32, i32* @UINT64_MAX, align 4
  store i32 %180, i32* %8, align 4
  %181 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %182 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %181, i32 0, i32 0
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @dnvlist_get_string(i32 %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %186, i8** %7, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %154
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @ctl_expand_number(i8* %190, i32* %8)
  br label %192

192:                                              ; preds = %189, %154
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %195 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @scsi_u64to8b(i32 %193, i32 %196)
  %198 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %199 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %198, i32 0, i32 0
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %8, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %192
  %207 = load i32, i32* @SVPD_BL_WSNZ, align 4
  %208 = load %struct.scsi_vpd_block_limits*, %struct.scsi_vpd_block_limits** %6, align 8
  %209 = getelementptr inbounds %struct.scsi_vpd_block_limits, %struct.scsi_vpd_block_limits* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %192
  br label %213

213:                                              ; preds = %212, %57
  %214 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %215 = call i32 @ctl_set_success(%struct.ctl_scsiio* %214)
  %216 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %217 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %218 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* @ctl_config_move_done, align 4
  %223 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %224 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %226 = bitcast %struct.ctl_scsiio* %225 to %union.ctl_io*
  %227 = call i32 @ctl_datamove(%union.ctl_io* %226)
  %228 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %228
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i32 @ctl_expand_number(i8*, i32*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
