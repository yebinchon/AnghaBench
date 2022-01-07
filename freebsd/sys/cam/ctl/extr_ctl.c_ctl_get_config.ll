; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_get_config_header = type { i32*, i32* }
%struct.scsi_get_config_feature = type { i32*, i32, i32, i32* }
%struct.scsi_get_config = type { i32, i32*, i32* }
%union.ctl_io = type { i32 }

@SGC_RT_MASK = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_LUN_NO_MEDIA = common dso_local global i32 0, align 4
@SGC_F_PERSISTENT = common dso_local global i32 0, align 4
@SGC_F_CURRENT = common dso_local global i32 0, align 4
@SGC_RT_CURRENT = common dso_local global i32 0, align 4
@SGC_RT_SPECIFIC = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_get_config(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %struct.scsi_get_config_header*, align 8
  %5 = alloca %struct.scsi_get_config_feature*, align 8
  %6 = alloca %struct.scsi_get_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %12 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %11)
  store %struct.ctl_lun* %12, %struct.ctl_lun** %3, align 8
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %14 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.scsi_get_config*
  store %struct.scsi_get_config* %16, %struct.scsi_get_config** %6, align 8
  %17 = load %struct.scsi_get_config*, %struct.scsi_get_config** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_get_config, %struct.scsi_get_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SGC_RT_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.scsi_get_config*, %struct.scsi_get_config** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_get_config, %struct.scsi_get_config* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @scsi_2btoul(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.scsi_get_config*, %struct.scsi_get_config** %6, align 8
  %27 = getelementptr inbounds %struct.scsi_get_config, %struct.scsi_get_config* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @scsi_2btoul(i32* %28)
  store i32 %29, i32* %7, align 4
  store i32 360, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @M_CTL, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @malloc(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %39 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %43 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.scsi_get_config_header*
  store %struct.scsi_get_config_header* %45, %struct.scsi_get_config_header** %4, align 8
  %46 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %47 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_get_config_header, %struct.scsi_get_config_header* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @scsi_ulto2b(i32 0, i32* %55)
  br label %62

57:                                               ; preds = %1
  %58 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_get_config_header, %struct.scsi_get_config_header* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @scsi_ulto2b(i32 16, i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_get_config_header, %struct.scsi_get_config_header* %63, i64 1
  %65 = bitcast %struct.scsi_get_config_header* %64 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %65, %struct.scsi_get_config_feature** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 59
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %550

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 58
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %515

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 43
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %476

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 42
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %441

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 31
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %402

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 30
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %363

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 29
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %328

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 16
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %297

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %247

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %209

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %183

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %152

113:                                              ; preds = %109
  %114 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @scsi_ulto2b(i32 0, i32* %116)
  %118 = load i32, i32* @SGC_F_PERSISTENT, align 4
  %119 = load i32, i32* @SGC_F_CURRENT, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %124 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %123, i32 0, i32 2
  store i32 8, i32* %124, align 4
  %125 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %126 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = call i32 @scsi_ulto2b(i32 8, i32* %128)
  %130 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %131 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32 0, i32* %133, align 4
  %134 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %135 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = call i32 @scsi_ulto2b(i32 16, i32* %137)
  %139 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 6
  store i32 1, i32* %142, align 4
  %143 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %144 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = bitcast i32* %150 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %151, %struct.scsi_get_config_feature** %5, align 8
  br label %152

152:                                              ; preds = %113, %112
  %153 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %154 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @scsi_ulto2b(i32 1, i32* %155)
  %157 = load i32, i32* @SGC_F_PERSISTENT, align 4
  %158 = or i32 8, %157
  %159 = load i32, i32* @SGC_F_CURRENT, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %162 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %164 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %163, i32 0, i32 2
  store i32 8, i32* %164, align 4
  %165 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %166 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = call i32 @scsi_ulto4b(i32 0, i32* %168)
  %170 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %171 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  store i32 3, i32* %173, align 4
  %174 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %175 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %178 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = bitcast i32* %181 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %182, %struct.scsi_get_config_feature** %5, align 8
  br label %183

183:                                              ; preds = %152, %108
  %184 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %185 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @scsi_ulto2b(i32 2, i32* %186)
  %188 = load i32, i32* @SGC_F_PERSISTENT, align 4
  %189 = or i32 4, %188
  %190 = load i32, i32* @SGC_F_CURRENT, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %193 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %195 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %194, i32 0, i32 2
  store i32 4, i32* %195, align 4
  %196 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %197 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 2, i32* %199, align 4
  %200 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %201 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %204 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = bitcast i32* %207 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %208, %struct.scsi_get_config_feature** %5, align 8
  br label %209

209:                                              ; preds = %183, %104
  %210 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %211 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @scsi_ulto2b(i32 3, i32* %212)
  %214 = load i32, i32* @SGC_F_PERSISTENT, align 4
  %215 = or i32 4, %214
  %216 = load i32, i32* @SGC_F_CURRENT, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %219 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 8
  %220 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %221 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %220, i32 0, i32 2
  store i32 4, i32* %221, align 4
  %222 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %223 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 57, i32* %225, align 4
  %226 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %227 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %230 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %228, i64 %232
  %234 = bitcast i32* %233 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %234, %struct.scsi_get_config_feature** %5, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @SGC_RT_CURRENT, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %209
  %239 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %240 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %550

246:                                              ; preds = %238, %209
  br label %247

247:                                              ; preds = %246, %100
  %248 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %249 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @scsi_ulto2b(i32 16, i32* %250)
  %252 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %253 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %252, i32 0, i32 1
  store i32 0, i32* %253, align 8
  %254 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %255 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %258 = and i32 %256, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %247
  %261 = load i32, i32* @SGC_F_CURRENT, align 4
  %262 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %263 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %247
  %267 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %268 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %267, i32 0, i32 2
  store i32 8, i32* %268, align 4
  %269 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %270 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %269, i32 0, i32 1
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %275 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = call i32 @scsi_ulto4b(i32 %273, i32* %277)
  %279 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %280 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %279, i32 0, i32 3
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  %283 = call i32 @scsi_ulto2b(i32 1, i32* %282)
  %284 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %285 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 6
  store i32 0, i32* %287, align 4
  %288 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %289 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %292 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = bitcast i32* %295 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %296, %struct.scsi_get_config_feature** %5, align 8
  br label %297

297:                                              ; preds = %266, %96
  %298 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %299 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @scsi_ulto2b(i32 29, i32* %300)
  %302 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %303 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %302, i32 0, i32 1
  store i32 0, i32* %303, align 8
  %304 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %305 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %308 = and i32 %306, %307
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %297
  %311 = load i32, i32* @SGC_F_CURRENT, align 4
  %312 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %313 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %310, %297
  %317 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %318 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %317, i32 0, i32 2
  store i32 0, i32* %318, align 4
  %319 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %320 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %323 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %321, i64 %325
  %327 = bitcast i32* %326 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %327, %struct.scsi_get_config_feature** %5, align 8
  br label %328

328:                                              ; preds = %316, %92
  %329 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %330 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @scsi_ulto2b(i32 30, i32* %331)
  %333 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %334 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %333, i32 0, i32 1
  store i32 0, i32* %334, align 8
  %335 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %336 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %339 = and i32 %337, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %328
  %342 = load i32, i32* @SGC_F_CURRENT, align 4
  %343 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %344 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %341, %328
  %348 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %349 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %348, i32 0, i32 2
  store i32 4, i32* %349, align 4
  %350 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %351 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %350, i32 0, i32 3
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 0, i32* %353, align 4
  %354 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %355 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %358 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %356, i64 %360
  %362 = bitcast i32* %361 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %362, %struct.scsi_get_config_feature** %5, align 8
  br label %363

363:                                              ; preds = %347, %88
  %364 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %365 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = call i32 @scsi_ulto2b(i32 31, i32* %366)
  %368 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %369 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %368, i32 0, i32 1
  store i32 8, i32* %369, align 8
  %370 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %371 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %374 = and i32 %372, %373
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %363
  %377 = load i32, i32* @SGC_F_CURRENT, align 4
  %378 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %379 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %376, %363
  %383 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %384 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %383, i32 0, i32 2
  store i32 4, i32* %384, align 4
  %385 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %386 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %385, i32 0, i32 3
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  store i32 1, i32* %388, align 4
  %389 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %390 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %389, i32 0, i32 3
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 2
  store i32 3, i32* %392, align 4
  %393 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %394 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %397 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %395, i64 %399
  %401 = bitcast i32* %400 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %401, %struct.scsi_get_config_feature** %5, align 8
  br label %402

402:                                              ; preds = %382, %84
  %403 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %404 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = call i32 @scsi_ulto2b(i32 42, i32* %405)
  %407 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %408 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %407, i32 0, i32 1
  store i32 4, i32* %408, align 8
  %409 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %410 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %413 = and i32 %411, %412
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %402
  %416 = load i32, i32* @SGC_F_CURRENT, align 4
  %417 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %418 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = or i32 %419, %416
  store i32 %420, i32* %418, align 8
  br label %421

421:                                              ; preds = %415, %402
  %422 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %423 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %422, i32 0, i32 2
  store i32 4, i32* %423, align 4
  %424 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %425 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %424, i32 0, i32 3
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  store i32 0, i32* %427, align 4
  %428 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %429 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %428, i32 0, i32 3
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  store i32 0, i32* %431, align 4
  %432 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %433 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %432, i32 0, i32 3
  %434 = load i32*, i32** %433, align 8
  %435 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %436 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %434, i64 %438
  %440 = bitcast i32* %439 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %440, %struct.scsi_get_config_feature** %5, align 8
  br label %441

441:                                              ; preds = %421, %80
  %442 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %443 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %442, i32 0, i32 0
  %444 = load i32*, i32** %443, align 8
  %445 = call i32 @scsi_ulto2b(i32 43, i32* %444)
  %446 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %447 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %446, i32 0, i32 1
  store i32 0, i32* %447, align 8
  %448 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %449 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %452 = and i32 %450, %451
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %441
  %455 = load i32, i32* @SGC_F_CURRENT, align 4
  %456 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %457 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = or i32 %458, %455
  store i32 %459, i32* %457, align 8
  br label %460

460:                                              ; preds = %454, %441
  %461 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %462 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %461, i32 0, i32 2
  store i32 4, i32* %462, align 4
  %463 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %464 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %463, i32 0, i32 3
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  store i32 0, i32* %466, align 4
  %467 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %468 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %467, i32 0, i32 3
  %469 = load i32*, i32** %468, align 8
  %470 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %471 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %469, i64 %473
  %475 = bitcast i32* %474 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %475, %struct.scsi_get_config_feature** %5, align 8
  br label %476

476:                                              ; preds = %460, %76
  %477 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %478 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %477, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = call i32 @scsi_ulto2b(i32 58, i32* %479)
  %481 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %482 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %481, i32 0, i32 1
  store i32 0, i32* %482, align 8
  %483 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %484 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %487 = and i32 %485, %486
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %476
  %490 = load i32, i32* @SGC_F_CURRENT, align 4
  %491 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %492 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = or i32 %493, %490
  store i32 %494, i32* %492, align 8
  br label %495

495:                                              ; preds = %489, %476
  %496 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %497 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %496, i32 0, i32 2
  store i32 4, i32* %497, align 4
  %498 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %499 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %498, i32 0, i32 3
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 0
  store i32 0, i32* %501, align 4
  %502 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %503 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %502, i32 0, i32 3
  %504 = load i32*, i32** %503, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 1
  store i32 0, i32* %505, align 4
  %506 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %507 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %506, i32 0, i32 3
  %508 = load i32*, i32** %507, align 8
  %509 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %510 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %508, i64 %512
  %514 = bitcast i32* %513 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %514, %struct.scsi_get_config_feature** %5, align 8
  br label %515

515:                                              ; preds = %495, %72
  %516 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %517 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %516, i32 0, i32 0
  %518 = load i32*, i32** %517, align 8
  %519 = call i32 @scsi_ulto2b(i32 59, i32* %518)
  %520 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %521 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %520, i32 0, i32 1
  store i32 0, i32* %521, align 8
  %522 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %523 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %526 = and i32 %524, %525
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %515
  %529 = load i32, i32* @SGC_F_CURRENT, align 4
  %530 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %531 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 8
  %533 = or i32 %532, %529
  store i32 %533, i32* %531, align 8
  br label %534

534:                                              ; preds = %528, %515
  %535 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %536 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %535, i32 0, i32 2
  store i32 4, i32* %536, align 4
  %537 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %538 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %537, i32 0, i32 3
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 0
  store i32 0, i32* %540, align 4
  %541 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %542 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %541, i32 0, i32 3
  %543 = load i32*, i32** %542, align 8
  %544 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %545 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %543, i64 %547
  %549 = bitcast i32* %548 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %549, %struct.scsi_get_config_feature** %5, align 8
  br label %550

550:                                              ; preds = %534, %245, %68
  %551 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %552 = bitcast %struct.scsi_get_config_feature* %551 to i32*
  %553 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %554 = bitcast %struct.scsi_get_config_header* %553 to i32*
  %555 = ptrtoint i32* %552 to i64
  %556 = ptrtoint i32* %554 to i64
  %557 = sub i64 %555, %556
  %558 = sdiv exact i64 %557, 4
  %559 = trunc i64 %558 to i32
  store i32 %559, i32* %8, align 4
  %560 = load i32, i32* %9, align 4
  %561 = load i32, i32* @SGC_RT_SPECIFIC, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %596

563:                                              ; preds = %550
  %564 = load i32, i32* %8, align 4
  %565 = icmp sgt i32 %564, 4
  br i1 %565, label %566, label %596

566:                                              ; preds = %563
  %567 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %568 = getelementptr inbounds %struct.scsi_get_config_header, %struct.scsi_get_config_header* %567, i64 1
  %569 = bitcast %struct.scsi_get_config_header* %568 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %569, %struct.scsi_get_config_feature** %5, align 8
  %570 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %571 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %570, i32 0, i32 0
  %572 = load i32*, i32** %571, align 8
  %573 = call i32 @scsi_2btoul(i32* %572)
  %574 = load i32, i32* %10, align 4
  %575 = icmp eq i32 %573, %574
  br i1 %575, label %576, label %586

576:                                              ; preds = %566
  %577 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %578 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %577, i32 0, i32 3
  %579 = load i32*, i32** %578, align 8
  %580 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %581 = getelementptr inbounds %struct.scsi_get_config_feature, %struct.scsi_get_config_feature* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %579, i64 %583
  %585 = bitcast i32* %584 to %struct.scsi_get_config_feature*
  store %struct.scsi_get_config_feature* %585, %struct.scsi_get_config_feature** %5, align 8
  br label %586

586:                                              ; preds = %576, %566
  %587 = load %struct.scsi_get_config_feature*, %struct.scsi_get_config_feature** %5, align 8
  %588 = bitcast %struct.scsi_get_config_feature* %587 to i32*
  %589 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %590 = bitcast %struct.scsi_get_config_header* %589 to i32*
  %591 = ptrtoint i32* %588 to i64
  %592 = ptrtoint i32* %590 to i64
  %593 = sub i64 %591, %592
  %594 = sdiv exact i64 %593, 4
  %595 = trunc i64 %594 to i32
  store i32 %595, i32* %8, align 4
  br label %596

596:                                              ; preds = %586, %563, %550
  %597 = load i32, i32* %8, align 4
  %598 = sub nsw i32 %597, 4
  %599 = load %struct.scsi_get_config_header*, %struct.scsi_get_config_header** %4, align 8
  %600 = getelementptr inbounds %struct.scsi_get_config_header, %struct.scsi_get_config_header* %599, i32 0, i32 1
  %601 = load i32*, i32** %600, align 8
  %602 = call i32 @scsi_ulto4b(i32 %598, i32* %601)
  %603 = load i32, i32* %8, align 4
  %604 = load i32, i32* %7, align 4
  %605 = call i32 @min(i32 %603, i32 %604)
  %606 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %607 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %606, i32 0, i32 2
  store i32 %605, i32* %607, align 8
  %608 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %609 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 8
  %611 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %612 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %611, i32 0, i32 3
  store i32 %610, i32* %612, align 4
  %613 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %614 = call i32 @ctl_set_success(%struct.ctl_scsiio* %613)
  %615 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %616 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %617 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = or i32 %619, %615
  store i32 %620, i32* %618, align 4
  %621 = load i32, i32* @ctl_config_move_done, align 4
  %622 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %623 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %622, i32 0, i32 0
  store i32 %621, i32* %623, align 8
  %624 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %625 = bitcast %struct.ctl_scsiio* %624 to %union.ctl_io*
  %626 = call i32 @ctl_datamove(%union.ctl_io* %625)
  %627 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %627
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_2btoul(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
