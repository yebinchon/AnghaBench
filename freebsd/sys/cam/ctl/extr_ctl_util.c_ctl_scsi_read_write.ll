; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_read_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, i64*, i32, i32, i64, i64, i32, i64 }
%struct.scsi_rw_6 = type { i32, i64, i32, i32 }
%struct.scsi_rw_10 = type { i64, i32, i64, i32, i64, i32 }
%struct.scsi_rw_12 = type { i64, i64, i32, i32, i64, i32 }
%struct.scsi_rw_16 = type { i64, i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@READ_6 = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@READ_12 = common dso_local global i32 0, align 4
@WRITE_12 = common dso_local global i32 0, align 4
@READ_16 = common dso_local global i32 0, align 4
@WRITE_16 = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_read_write(%union.ctl_io* %0, i64* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9) #0 {
  %11 = alloca %union.ctl_io*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.ctl_scsiio*, align 8
  %22 = alloca %struct.scsi_rw_6*, align 8
  %23 = alloca %struct.scsi_rw_10*, align 8
  %24 = alloca %struct.scsi_rw_12*, align 8
  %25 = alloca %struct.scsi_rw_16*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i64 %9, i64* %20, align 8
  %26 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  %27 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %26)
  %28 = load i8*, i8** @CTL_IO_SCSI, align 8
  %29 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  %30 = bitcast %union.ctl_io* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  %33 = bitcast %union.ctl_io* %32 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %33, %struct.ctl_scsiio** %21, align 8
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %78

36:                                               ; preds = %10
  %37 = load i32, i32* %17, align 4
  %38 = and i32 %37, 2097151
  %39 = load i32, i32* %17, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %36
  %42 = load i32, i32* %18, align 4
  %43 = and i32 %42, 255
  %44 = load i32, i32* %18, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load i64, i64* %15, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %51 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.scsi_rw_6*
  store %struct.scsi_rw_6* %53, %struct.scsi_rw_6** %22, align 8
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @READ_6, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @WRITE_6, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %22, align 8
  %63 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %22, align 8
  %66 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @scsi_ulto3b(i32 %64, i32 %67)
  %69 = load i32, i32* %18, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %22, align 8
  %72 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %22, align 8
  %75 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %77 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %76, i32 0, i32 0
  store i32 24, i32* %77, align 8
  br label %208

78:                                               ; preds = %46, %41, %36, %10
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 12
  br i1 %80, label %81, label %125

81:                                               ; preds = %78
  %82 = load i32, i32* %18, align 4
  %83 = and i32 %82, 65535
  %84 = load i32, i32* %18, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %81
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %86
  %91 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %92 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.scsi_rw_10*
  store %struct.scsi_rw_10* %94, %struct.scsi_rw_10** %23, align 8
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @READ_10, align 4
  br label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @WRITE_10, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %23, align 8
  %104 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %23, align 8
  %107 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %23, align 8
  %110 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @scsi_ulto4b(i32 %108, i32 %111)
  %113 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %23, align 8
  %114 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %23, align 8
  %117 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @scsi_ulto2b(i32 %115, i32 %118)
  %120 = load i64, i64* %20, align 8
  %121 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %23, align 8
  %122 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %124 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %123, i32 0, i32 0
  store i32 48, i32* %124, align 8
  br label %207

125:                                              ; preds = %86, %81, %78
  %126 = load i32, i32* %16, align 4
  %127 = icmp slt i32 %126, 16
  br i1 %127, label %128, label %171

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %171

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %171

136:                                              ; preds = %132
  %137 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %138 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to %struct.scsi_rw_12*
  store %struct.scsi_rw_12* %140, %struct.scsi_rw_12** %24, align 8
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @READ_12, align 4
  br label %147

145:                                              ; preds = %136
  %146 = load i32, i32* @WRITE_12, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %24, align 8
  %150 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %24, align 8
  %153 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %24, align 8
  %156 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @scsi_ulto4b(i32 %154, i32 %157)
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %24, align 8
  %161 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @scsi_ulto4b(i32 %159, i32 %162)
  %164 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %24, align 8
  %165 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load i64, i64* %20, align 8
  %167 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %24, align 8
  %168 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %170 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %169, i32 0, i32 0
  store i32 40, i32* %170, align 8
  br label %206

171:                                              ; preds = %132, %128, %125
  %172 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %173 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.scsi_rw_16*
  store %struct.scsi_rw_16* %175, %struct.scsi_rw_16** %25, align 8
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @READ_16, align 4
  br label %182

180:                                              ; preds = %171
  %181 = load i32, i32* @WRITE_16, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  %184 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %25, align 8
  %185 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %25, align 8
  %188 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %187, i32 0, i32 4
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %25, align 8
  %191 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @scsi_u64to8b(i32 %189, i32 %192)
  %194 = load i32, i32* %18, align 4
  %195 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %25, align 8
  %196 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @scsi_ulto4b(i32 %194, i32 %197)
  %199 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %25, align 8
  %200 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %199, i32 0, i32 1
  store i64 0, i64* %200, align 8
  %201 = load i64, i64* %20, align 8
  %202 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %25, align 8
  %203 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %205 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %204, i32 0, i32 0
  store i32 40, i32* %205, align 8
  br label %206

206:                                              ; preds = %182, %147
  br label %207

207:                                              ; preds = %206, %101
  br label %208

208:                                              ; preds = %207, %60
  %209 = load i8*, i8** @CTL_IO_SCSI, align 8
  %210 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  %211 = bitcast %union.ctl_io* %210 to %struct.TYPE_2__*
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  store i8* %209, i8** %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %217 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  %218 = bitcast %union.ctl_io* %217 to %struct.TYPE_2__*
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 8
  br label %225

220:                                              ; preds = %208
  %221 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %222 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  %223 = bitcast %union.ctl_io* %222 to %struct.TYPE_2__*
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i32, i32* %19, align 4
  %227 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %228 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %227, i32 0, i32 6
  store i32 %226, i32* %228, align 8
  %229 = load i64*, i64** %12, align 8
  %230 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %231 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %230, i32 0, i32 1
  store i64* %229, i64** %231, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %234 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %236 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %235, i32 0, i32 5
  store i64 0, i64* %236, align 8
  %237 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %238 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %237, i32 0, i32 4
  store i64 0, i64* %238, align 8
  %239 = load i32, i32* @SSD_FULL_SIZE, align 4
  %240 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %21, align 8
  %241 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
