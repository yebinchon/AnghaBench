; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_runcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_runcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_softc = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"entering enc_runcmd\0A\00", align 1
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@IOCDBLEN = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@ENC_SEMB_SES = common dso_local global i64 0, align 8
@ENC_SEMB_SAFT = common dso_local global i64 0, align 8
@RECEIVE_DIAGNOSTIC = common dso_local global i8 0, align 1
@ATA_SEP_ATTN = common dso_local global i32 0, align 4
@SEND_DIAGNOSTIC = common dso_local global i8 0, align 1
@READ_BUFFER = common dso_local global i8 0, align 1
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@enc_error = common dso_local global i32 0, align 4
@ENC_CFLAGS = common dso_local global i32 0, align 4
@ENC_FLAGS = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"exiting enc_runcmd: *dlenp = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enc_runcmd(%struct.enc_softc* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.enc_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.ccb*, align 8
  store %struct.enc_softc* %0, %struct.enc_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.enc_softc*, %struct.enc_softc** %6, align 8
  %17 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %22 = call i32 @CAM_DEBUG(i32 %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @CAM_DIR_OUT, align 4
  store i32 %32, i32* %14, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @CAM_DIR_IN, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %38

36:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  %37 = load i32, i32* @CAM_DIR_NONE, align 4
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IOCDBLEN, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @IOCDBLEN, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.enc_softc*, %struct.enc_softc** %6, align 8
  %46 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %49 = call %union.ccb* @cam_periph_getccb(%struct.TYPE_9__* %47, i32 %48)
  store %union.ccb* %49, %union.ccb** %15, align 8
  %50 = load %struct.enc_softc*, %struct.enc_softc** %6, align 8
  %51 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ENC_SEMB_SES, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %44
  %56 = load %struct.enc_softc*, %struct.enc_softc** %6, align 8
  %57 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ENC_SEMB_SAFT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %155

61:                                               ; preds = %55, %44
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @min(i32 %62, i32 1020)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 3
  %66 = and i32 %65, -4
  store i32 %66, i32* %13, align 4
  %67 = load %union.ccb*, %union.ccb** %15, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_11__*
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @cam_fill_ataio(%struct.TYPE_11__* %68, i32 0, i32* null, i32 %69, i32 0, i8* %70, i32 %71, i32 30000)
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @RECEIVE_DIAGNOSTIC, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %61
  %81 = load %union.ccb*, %union.ccb** %15, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_11__*
  %83 = load i32, i32* @ATA_SEP_ATTN, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = load i32, i32* %13, align 4
  %88 = sdiv i32 %87, 4
  %89 = call i32 @ata_28bit_cmd(%struct.TYPE_11__* %82, i32 %83, i8 signext %86, i32 2, i32 %88)
  br label %154

90:                                               ; preds = %61
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @SEND_DIAGNOSTIC, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %90
  %99 = load %union.ccb*, %union.ccb** %15, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_11__*
  %101 = load i32, i32* @ATA_SEP_ATTN, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  br label %110

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %104
  %111 = phi i32 [ %108, %104 ], [ 0, %109 ]
  %112 = trunc i32 %111 to i8
  %113 = load i32, i32* %13, align 4
  %114 = sdiv i32 %113, 4
  %115 = call i32 @ata_28bit_cmd(%struct.TYPE_11__* %100, i32 %101, i8 signext %112, i32 130, i32 %114)
  br label %153

116:                                              ; preds = %90
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* @READ_BUFFER, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load %union.ccb*, %union.ccb** %15, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_11__*
  %127 = load i32, i32* @ATA_SEP_ATTN, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = load i32, i32* %13, align 4
  %132 = sdiv i32 %131, 4
  %133 = call i32 @ata_28bit_cmd(%struct.TYPE_11__* %126, i32 %127, i8 signext %130, i32 0, i32 %132)
  br label %152

134:                                              ; preds = %116
  %135 = load %union.ccb*, %union.ccb** %15, align 8
  %136 = bitcast %union.ccb* %135 to %struct.TYPE_11__*
  %137 = load i32, i32* @ATA_SEP_ATTN, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  br label %146

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %140
  %147 = phi i32 [ %144, %140 ], [ 0, %145 ]
  %148 = trunc i32 %147 to i8
  %149 = load i32, i32* %13, align 4
  %150 = sdiv i32 %149, 4
  %151 = call i32 @ata_28bit_cmd(%struct.TYPE_11__* %136, i32 %137, i8 signext %148, i32 128, i32 %150)
  br label %152

152:                                              ; preds = %146, %124
  br label %153

153:                                              ; preds = %152, %110
  br label %154

154:                                              ; preds = %153, %80
  br label %173

155:                                              ; preds = %55
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %13, align 4
  %157 = load %union.ccb*, %union.ccb** %15, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_10__*
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @cam_fill_csio(%struct.TYPE_10__* %158, i32 0, i32* null, i32 %159, i32 %160, i8* %161, i32 %162, i32 4, i32 %163, i32 60000)
  %165 = load i8*, i8** %7, align 8
  %166 = load %union.ccb*, %union.ccb** %15, align 8
  %167 = bitcast %union.ccb* %166 to %struct.TYPE_10__*
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @bcopy(i8* %165, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %155, %154
  %174 = load %union.ccb*, %union.ccb** %15, align 8
  %175 = load i32, i32* @enc_error, align 4
  %176 = load i32, i32* @ENC_CFLAGS, align 4
  %177 = load i32, i32* @ENC_FLAGS, align 4
  %178 = call i32 @cam_periph_runccb(%union.ccb* %174, i32 %175, i32 %176, i32 %177, i32* null)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load i8*, i8** %9, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %12, align 4
  %186 = load i32*, i32** %10, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %181
  br label %218

188:                                              ; preds = %173
  %189 = load i8*, i8** %9, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %217

191:                                              ; preds = %188
  %192 = load %union.ccb*, %union.ccb** %15, align 8
  %193 = bitcast %union.ccb* %192 to %struct.TYPE_8__*
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @XPT_ATA_IO, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load %union.ccb*, %union.ccb** %15, align 8
  %200 = bitcast %union.ccb* %199 to %struct.TYPE_11__*
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32*, i32** %10, align 8
  store i32 %202, i32* %203, align 4
  br label %210

204:                                              ; preds = %191
  %205 = load %union.ccb*, %union.ccb** %15, align 8
  %206 = bitcast %union.ccb* %205 to %struct.TYPE_10__*
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %10, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %204, %198
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %210, %188
  br label %218

218:                                              ; preds = %217, %187
  %219 = load %union.ccb*, %union.ccb** %15, align 8
  %220 = call i32 @xpt_release_ccb(%union.ccb* %219)
  %221 = load %struct.enc_softc*, %struct.enc_softc** %6, align 8
  %222 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %221, i32 0, i32 1
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %227 = load i32*, i32** %10, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @CAM_DEBUG(i32 %225, i32 %226, i8* %230)
  %232 = load i32, i32* %11, align 4
  ret i32 %232
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cam_fill_ataio(%struct.TYPE_11__*, i32, i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ata_28bit_cmd(%struct.TYPE_11__*, i32, i8 signext, i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32, i32, i32, i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
