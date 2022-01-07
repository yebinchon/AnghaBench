; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_do_mode_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_do_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ctl_lun = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.ctl_page_index* }
%struct.ctl_page_index = type { i32, i32, i64, i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*)*, i32, i32* }
%struct.scsi_mode_page_header = type { i32, i32 }
%union.ctl_modepage_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.scsi_mode_page_header_sp = type { i64, i32 }

@CTL_PRIV_MODEPAGE = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@SMPH_SPF = common dso_local global i32 0, align 4
@CTL_NUM_MODE_PAGES = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i64 0, align 8
@CTL_PAGE_FLAG_DIRECT = common dso_local global i32 0, align 4
@T_PROCESSOR = common dso_local global i64 0, align 8
@CTL_PAGE_FLAG_PROC = common dso_local global i32 0, align 4
@T_CDROM = common dso_local global i64 0, align 8
@CTL_PAGE_FLAG_CDROM = common dso_local global i32 0, align 4
@SMPH_PC_MASK = common dso_local global i32 0, align 4
@CTL_PAGE_CHANGEABLE = common dso_local global i32 0, align 4
@CTL_PAGE_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_do_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_do_mode_select(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_mode_page_header*, align 8
  %6 = alloca %struct.ctl_page_index*, align 8
  %7 = alloca %struct.ctl_scsiio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ctl_modepage_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scsi_mode_page_header_sp*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %22 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %23 = call %struct.ctl_lun* @CTL_LUN(%union.ctl_io* %22)
  store %struct.ctl_lun* %23, %struct.ctl_lun** %4, align 8
  %24 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %25 = bitcast %union.ctl_io* %24 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %25, %struct.ctl_scsiio** %7, align 8
  store %struct.ctl_page_index* null, %struct.ctl_page_index** %6, align 8
  store i32 0, i32* %8, align 4
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i64, i64* @CTL_PRIV_MODEPAGE, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %union.ctl_modepage_info*
  store %union.ctl_modepage_info* %34, %union.ctl_modepage_info** %11, align 8
  %35 = load %union.ctl_modepage_info*, %union.ctl_modepage_info** %11, align 8
  %36 = bitcast %union.ctl_modepage_info* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32* %37, i32** %12, align 8
  %38 = load %union.ctl_modepage_info*, %union.ctl_modepage_info** %11, align 8
  %39 = bitcast %union.ctl_modepage_info* %38 to %struct.TYPE_8__*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32* %40, i32** %13, align 8
  br label %41

41:                                               ; preds = %442, %1
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %43 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.scsi_mode_page_header*
  store %struct.scsi_mode_page_header* %49, %struct.scsi_mode_page_header** %5, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %41
  %54 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %55 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @M_CTL, align 4
  %58 = call i32 @free(i32 %56, i32 %57)
  %59 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %60 = call i32 @ctl_set_success(%struct.ctl_scsiio* %59)
  %61 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %62 = bitcast %struct.ctl_scsiio* %61 to %union.ctl_io*
  %63 = call i32 @ctl_done(%union.ctl_io* %62)
  %64 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %64, i32* %2, align 4
  br label %456

65:                                               ; preds = %41
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 8
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %72 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @M_CTL, align 4
  %75 = call i32 @free(i32 %73, i32 %74)
  %76 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %77 = call i32 @ctl_set_param_len_error(%struct.ctl_scsiio* %76)
  %78 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %79 = bitcast %struct.ctl_scsiio* %78 to %union.ctl_io*
  %80 = call i32 @ctl_done(%union.ctl_io* %79)
  %81 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %81, i32* %2, align 4
  br label %456

82:                                               ; preds = %65
  %83 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %84 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SMPH_SPF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %92, 16
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %96 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @M_CTL, align 4
  %99 = call i32 @free(i32 %97, i32 %98)
  %100 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %101 = call i32 @ctl_set_param_len_error(%struct.ctl_scsiio* %100)
  %102 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %103 = bitcast %struct.ctl_scsiio* %102 to %union.ctl_io*
  %104 = call i32 @ctl_done(%union.ctl_io* %103)
  %105 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %105, i32* %2, align 4
  br label %456

106:                                              ; preds = %89, %82
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %230, %108
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @CTL_NUM_MODE_PAGES, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %233

113:                                              ; preds = %109
  %114 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %115 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.ctl_page_index*, %struct.ctl_page_index** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %117, i64 %119
  store %struct.ctl_page_index* %120, %struct.ctl_page_index** %6, align 8
  %121 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %122 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @T_DIRECT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %113
  %129 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %130 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CTL_PAGE_FLAG_DIRECT, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %230

136:                                              ; preds = %128, %113
  %137 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %138 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @T_PROCESSOR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %146 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CTL_PAGE_FLAG_PROC, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %230

152:                                              ; preds = %144, %136
  %153 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %154 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @T_CDROM, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %152
  %161 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %162 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CTL_PAGE_FLAG_CDROM, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %230

168:                                              ; preds = %160, %152
  %169 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %170 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @SMPH_PC_MASK, align 4
  %173 = and i32 %171, %172
  %174 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %175 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SMPH_PC_MASK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %173, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %230

181:                                              ; preds = %168
  %182 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %183 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @SMPH_SPF, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %181
  %189 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %190 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @SMPH_SPF, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %197 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %8, align 4
  br label %233

199:                                              ; preds = %188, %181
  %200 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %201 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @SMPH_SPF, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %199
  %207 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %208 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @SMPH_SPF, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %206
  %214 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %215 = bitcast %struct.scsi_mode_page_header* %214 to %struct.scsi_mode_page_header_sp*
  store %struct.scsi_mode_page_header_sp* %215, %struct.scsi_mode_page_header_sp** %16, align 8
  %216 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %217 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %16, align 8
  %220 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %213
  %224 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %16, align 8
  %225 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @scsi_2btoul(i32 %226)
  store i32 %227, i32* %8, align 4
  br label %233

228:                                              ; preds = %213
  br label %229

229:                                              ; preds = %228, %206, %199
  br label %230

230:                                              ; preds = %229, %180, %167, %151, %135
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %109

233:                                              ; preds = %223, %195, %109
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @CTL_NUM_MODE_PAGES, align 4
  %236 = icmp sge i32 %234, %235
  br i1 %236, label %242, label %237

237:                                              ; preds = %233
  %238 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %239 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %238, i32 0, i32 3
  %240 = load i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*)*, i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*)** %239, align 8
  %241 = icmp eq i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*)* %240, null
  br i1 %241, label %242, label %256

242:                                              ; preds = %237, %233
  %243 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %243, i32 1, i32 0, i32 %245, i32 0, i32 0)
  %247 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %248 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @M_CTL, align 4
  %251 = call i32 @free(i32 %249, i32 %250)
  %252 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %253 = bitcast %struct.ctl_scsiio* %252 to %union.ctl_io*
  %254 = call i32 @ctl_done(%union.ctl_io* %253)
  %255 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %255, i32* %2, align 4
  br label %456

256:                                              ; preds = %237
  %257 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %258 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @SMPH_SPF, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  store i32 2, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %265

264:                                              ; preds = %256
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %265

265:                                              ; preds = %264, %263
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %268 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load i32, i32* %10, align 4
  %273 = sub nsw i32 %271, %272
  %274 = icmp ne i32 %266, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %265
  %276 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %277 = load i32*, i32** %13, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %278, %279
  %281 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %276, i32 1, i32 0, i32 %280, i32 0, i32 0)
  %282 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %283 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @M_CTL, align 4
  %286 = call i32 @free(i32 %284, i32 %285)
  %287 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %288 = bitcast %struct.ctl_scsiio* %287 to %union.ctl_io*
  %289 = call i32 @ctl_done(%union.ctl_io* %288)
  %290 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %290, i32* %2, align 4
  br label %456

291:                                              ; preds = %265
  %292 = load i32*, i32** %12, align 8
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %295 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %310

298:                                              ; preds = %291
  %299 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %300 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @M_CTL, align 4
  %303 = call i32 @free(i32 %301, i32 %302)
  %304 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %305 = call i32 @ctl_set_param_len_error(%struct.ctl_scsiio* %304)
  %306 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %307 = bitcast %struct.ctl_scsiio* %306 to %union.ctl_io*
  %308 = call i32 @ctl_done(%union.ctl_io* %307)
  %309 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %309, i32* %2, align 4
  br label %456

310:                                              ; preds = %291
  store i32 0, i32* %15, align 4
  br label %311

311:                                              ; preds = %410, %310
  %312 = load i32, i32* %15, align 4
  %313 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %314 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %413

317:                                              ; preds = %311
  %318 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %319 = bitcast %struct.scsi_mode_page_header* %318 to i32*
  %320 = load i32, i32* %15, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32* %322, i32** %17, align 8
  %323 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %324 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %323, i32 0, i32 5
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %327 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @CTL_PAGE_CHANGEABLE, align 4
  %330 = mul nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %325, i64 %331
  %333 = load i32, i32* %15, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32* %335, i32** %18, align 8
  %336 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %337 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %336, i32 0, i32 5
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %340 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @CTL_PAGE_CURRENT, align 4
  %343 = mul nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %338, i64 %344
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32* %348, i32** %19, align 8
  %349 = load i32*, i32** %17, align 8
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %18, align 8
  %352 = load i32, i32* %351, align 4
  %353 = xor i32 %352, -1
  %354 = and i32 %350, %353
  %355 = load i32*, i32** %19, align 8
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %18, align 8
  %358 = load i32, i32* %357, align 4
  %359 = xor i32 %358, -1
  %360 = and i32 %356, %359
  %361 = icmp eq i32 %354, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %317
  br label %410

363:                                              ; preds = %317
  store i32 0, i32* %20, align 4
  store i32 7, i32* %21, align 4
  br label %364

364:                                              ; preds = %390, %363
  %365 = load i32, i32* %21, align 4
  %366 = icmp sge i32 %365, 0
  br i1 %366, label %367, label %393

367:                                              ; preds = %364
  %368 = load i32, i32* %15, align 4
  %369 = shl i32 1, %368
  %370 = load i32*, i32** %18, align 8
  %371 = load i32, i32* %370, align 4
  %372 = xor i32 %371, -1
  %373 = and i32 %369, %372
  %374 = load i32*, i32** %17, align 8
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %373, %375
  %377 = load i32, i32* %15, align 4
  %378 = shl i32 1, %377
  %379 = load i32*, i32** %18, align 8
  %380 = load i32, i32* %379, align 4
  %381 = xor i32 %380, -1
  %382 = and i32 %378, %381
  %383 = load i32*, i32** %19, align 8
  %384 = load i32, i32* %383, align 4
  %385 = and i32 %382, %384
  %386 = icmp ne i32 %376, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %367
  %388 = load i32, i32* %15, align 4
  store i32 %388, i32* %20, align 4
  br label %393

389:                                              ; preds = %367
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %21, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %21, align 4
  br label %364

393:                                              ; preds = %387, %364
  %394 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %395 = load i32*, i32** %13, align 8
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %15, align 4
  %398 = add nsw i32 %396, %397
  %399 = load i32, i32* %20, align 4
  %400 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %394, i32 1, i32 0, i32 %398, i32 1, i32 %399)
  %401 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %402 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @M_CTL, align 4
  %405 = call i32 @free(i32 %403, i32 %404)
  %406 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %407 = bitcast %struct.ctl_scsiio* %406 to %union.ctl_io*
  %408 = call i32 @ctl_done(%union.ctl_io* %407)
  %409 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %409, i32* %2, align 4
  br label %456

410:                                              ; preds = %362
  %411 = load i32, i32* %15, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %15, align 4
  br label %311

413:                                              ; preds = %311
  %414 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %415 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 8
  %417 = load i32*, i32** %12, align 8
  %418 = load i32, i32* %417, align 4
  %419 = sub nsw i32 %418, %416
  store i32 %419, i32* %417, align 4
  %420 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %421 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load i32*, i32** %13, align 8
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %424, %422
  store i32 %425, i32* %423, align 4
  %426 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %427 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %426, i32 0, i32 3
  %428 = load i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*)*, i32 (%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*)** %427, align 8
  %429 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %430 = load %struct.ctl_page_index*, %struct.ctl_page_index** %6, align 8
  %431 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %5, align 8
  %432 = bitcast %struct.scsi_mode_page_header* %431 to i32*
  %433 = call i32 %428(%struct.ctl_scsiio* %429, %struct.ctl_page_index* %430, i32* %432)
  store i32 %433, i32* %14, align 4
  %434 = load i32, i32* %14, align 4
  %435 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %436 = icmp ne i32 %434, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %413
  br label %454

438:                                              ; preds = %413
  %439 = load i32*, i32** %12, align 8
  %440 = load i32, i32* %439, align 4
  %441 = icmp sgt i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  br label %41

443:                                              ; preds = %438
  %444 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %445 = call i32 @ctl_set_success(%struct.ctl_scsiio* %444)
  %446 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %447 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @M_CTL, align 4
  %450 = call i32 @free(i32 %448, i32 %449)
  %451 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %452 = bitcast %struct.ctl_scsiio* %451 to %union.ctl_io*
  %453 = call i32 @ctl_done(%union.ctl_io* %452)
  br label %454

454:                                              ; preds = %443, %437
  %455 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %455, i32* %2, align 4
  br label %456

456:                                              ; preds = %454, %393, %298, %275, %242, %94, %70, %53
  %457 = load i32, i32* %2, align 4
  ret i32 %457
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%union.ctl_io*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_param_len_error(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
