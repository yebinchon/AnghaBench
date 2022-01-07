; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fwdownload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fwdownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.cam_device = type { i8*, i32 }
%union.ccb = type { i32 }
%struct.fw_vendor = type { i64, i32, i64 }
%struct.ata_params = type opaque

@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"you must specify a firmware image file using -f option\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to determine device type\00", align 1
@CC_DT_ATA = common dso_local global i64 0, align 8
@CC_DT_SATL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@CC_DT_SCSI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Unsupported device type %d\00", align 1
@VENDOR_UNKNOWN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Unsupported device\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Unable to get a firmware download timeout value\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"You are about to download firmware image (%s) into the following device:\0A\00", align 1
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Error sending inquiry\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Using a timeout of %u ms, which is %s.\0A\00", align 1
@fw_timeout_desc_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"\0AIt may damage your drive. \00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Running in simulation mode\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"Firmware download failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Firmware download successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwdownload(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.ccb*, align 8
  %18 = alloca %struct.fw_vendor*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.ata_params*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %union.ccb* null, %union.ccb** %17, align 8
  store i8* null, i8** %19, align 8
  store %struct.ata_params* null, %struct.ata_params** %20, align 8
  store i8* null, i8** %22, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %43, %8
  %30 = load i32, i32* %10, align 4
  %31 = load i8**, i8*** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @getopt(i32 %30, i8** %31, i8* %32)
  store i32 %33, i32* %24, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %24, align 4
  switch i32 %36, label %42 [
    i32 102, label %37
    i32 113, label %39
    i32 115, label %40
    i32 121, label %41
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %19, align 8
  br label %43

39:                                               ; preds = %35
  store i32 1, i32* %27, align 4
  br label %43

40:                                               ; preds = %35
  store i32 1, i32* %25, align 4
  br label %43

41:                                               ; preds = %35
  store i32 1, i32* %26, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %37
  br label %29

44:                                               ; preds = %29
  %45 = load i8*, i8** %19, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @get_device_type(%struct.cam_device* %50, i32 %51, i32 %52, i32 %53, i64* %21)
  store i32 %54, i32* %28, align 4
  %55 = load i32, i32* %28, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* @CC_DT_ATA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %21, align 8
  %65 = load i64, i64* @CC_DT_SATL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63, %59
  %68 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %69 = call %union.ccb* @cam_getccb(%struct.cam_device* %68)
  store %union.ccb* %69, %union.ccb** %17, align 8
  %70 = load %union.ccb*, %union.ccb** %17, align 8
  %71 = icmp eq %union.ccb* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  br label %225

74:                                               ; preds = %67
  %75 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load %union.ccb*, %union.ccb** %17, align 8
  %79 = bitcast %struct.ata_params** %20 to i8**
  %80 = call i64 @ata_do_identify(%struct.cam_device* %75, i32 %76, i32 %77, %union.ccb* %78, i8** %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %28, align 4
  br label %225

83:                                               ; preds = %74
  br label %92

84:                                               ; preds = %63
  %85 = load i64, i64* %21, align 8
  %86 = load i64, i64* @CC_DT_SCSI, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, i64* %21, align 8
  %90 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %88, %84
  br label %92

92:                                               ; preds = %91, %83
  %93 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %94 = load %struct.ata_params*, %struct.ata_params** %20, align 8
  %95 = bitcast %struct.ata_params* %94 to i8*
  %96 = call %struct.fw_vendor* @fw_get_vendor(%struct.cam_device* %93, i8* %95)
  store %struct.fw_vendor* %96, %struct.fw_vendor** %18, align 8
  %97 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %98 = icmp eq %struct.fw_vendor* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %92
  %100 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %101 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VENDOR_UNKNOWN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99, %92
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* @CC_DT_SCSI, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %105, %99
  %112 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %113 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @fw_get_timeout(%struct.cam_device* %112, %struct.fw_vendor* %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %28, align 4
  %118 = load i32, i32* %28, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %225

122:                                              ; preds = %111
  %123 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i8*, i8** %19, align 8
  %128 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %129 = call i8* @fw_read_img(%struct.cam_device* %123, i32 %124, i32 %125, i32 %126, i8* %127, %struct.fw_vendor* %128, i32* %23)
  store i8* %129, i8** %22, align 8
  %130 = load i8*, i8** %22, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  store i32 1, i32* %28, align 4
  br label %225

133:                                              ; preds = %122
  %134 = load i32, i32* %26, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %189, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @stdout, align 4
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i8* %138)
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* @CC_DT_SCSI, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i8**, i8*** %11, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %149 = call i64 @scsidoinquiry(%struct.cam_device* %144, i32 %145, i8** %146, i8* %147, i32 %148, i32 0, i32 5000)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  br label %225

153:                                              ; preds = %143
  br label %170

154:                                              ; preds = %136
  %155 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %156 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %159 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %157, i32 %160)
  %162 = load %struct.ata_params*, %struct.ata_params** %20, align 8
  %163 = bitcast %struct.ata_params* %162 to i8*
  %164 = call i32 @ata_print_ident(i8* %163)
  %165 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %166 = call i32 @camxferrate(%struct.cam_device* %165)
  %167 = load %struct.ata_params*, %struct.ata_params** %20, align 8
  %168 = bitcast %struct.ata_params* %167 to i8*
  %169 = call i32 @free(i8* %168)
  br label %170

170:                                              ; preds = %154, %153
  %171 = load i32, i32* @stdout, align 4
  %172 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %173 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fw_timeout_desc_table, align 8
  %176 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %177 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %174, i8* %181)
  %183 = load i32, i32* @stdout, align 4
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %185 = call i32 (...) @get_confirmation()
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %170
  store i32 1, i32* %28, align 4
  br label %225

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188, %133
  %190 = load i32, i32* %25, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %27, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* @stdout, align 4
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %192, %189
  %199 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %200 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %201 = load i8*, i8** %22, align 8
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %27, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.fw_vendor*, %struct.fw_vendor** %18, align 8
  %208 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %19, align 8
  %211 = load i64, i64* %21, align 8
  %212 = call i64 @fw_download_img(%struct.cam_device* %199, %struct.fw_vendor* %200, i8* %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %209, i8* %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %198
  %215 = load i32, i32* @stderr, align 4
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  br label %225

217:                                              ; preds = %198
  %218 = load i32, i32* %27, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @stdout, align 4
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224, %214, %187, %151, %132, %120, %82, %72
  %226 = load %union.ccb*, %union.ccb** %17, align 8
  %227 = call i32 @cam_freeccb(%union.ccb* %226)
  %228 = load i8*, i8** %22, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i32, i32* %28, align 4
  ret i32 %230
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @get_device_type(%struct.cam_device*, i32, i32, i32, i64*) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @ata_do_identify(%struct.cam_device*, i32, i32, %union.ccb*, i8**) #1

declare dso_local %struct.fw_vendor* @fw_get_vendor(%struct.cam_device*, i8*) #1

declare dso_local i32 @fw_get_timeout(%struct.cam_device*, %struct.fw_vendor*, i32, i32, i32) #1

declare dso_local i8* @fw_read_img(%struct.cam_device*, i32, i32, i32, i8*, %struct.fw_vendor*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @scsidoinquiry(%struct.cam_device*, i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @ata_print_ident(i8*) #1

declare dso_local i32 @camxferrate(%struct.cam_device*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @get_confirmation(...) #1

declare dso_local i64 @fw_download_img(%struct.cam_device*, %struct.fw_vendor*, i8*, i32, i32, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
