; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_request_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_request_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.timespec = type { i64, i64 }
%struct.ccb_hdr = type { i32, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ctio_descr = type { i32, i32 }
%union.ccb = type { i32 }
%struct.kevent = type { i32, i32, i64 }

@MAX_EVENTS = common dso_local global i32 0, align 4
@kq_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"init kqueue\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"kevent signal registration\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"EINTR, looping\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"kevent failed\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"kevent returned more events than allocated?\00", align 1
@EV_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"kevent registration failed\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"read ready\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"aio ready\00", align 1
@AIO_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"signal ready, setting quit\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"unknown event %d\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"event %d done\00", align 1
@work_queue = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Unhandled ccb type %#x on workq\00", align 1
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Queue frozen receiving CCB, releasing\00", align 1
@periph_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @request_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_loop() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccb_hdr*, align 8
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca %struct.ctio_descr*, align 8
  %12 = alloca %union.ccb*, align 8
  %13 = load i32, i32* @MAX_EVENTS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %1, align 8
  %16 = alloca %struct.kevent, i64 %14, align 16
  store i64 %14, i64* %2, align 8
  %17 = call i32 (...) @kqueue()
  store i32 %17, i32* @kq_fd, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %0
  %22 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 0
  %23 = load i32, i32* @SIGHUP, align 4
  %24 = load i32, i32* @EV_ADD, align 4
  %25 = load i32, i32* @EV_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @EV_SET(%struct.kevent* %22, i32 %23, i32 130, i32 %26, i32 0, i32 0, i32 0)
  %28 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 1
  %29 = load i32, i32* @SIGINT, align 4
  %30 = load i32, i32* @EV_ADD, align 4
  %31 = load i32, i32* @EV_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @EV_SET(%struct.kevent* %28, i32 %29, i32 130, i32 %32, i32 0, i32 0, i32 0)
  %34 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 2
  %35 = load i32, i32* @SIGTERM, align 4
  %36 = load i32, i32* @EV_ADD, align 4
  %37 = load i32, i32* @EV_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @EV_SET(%struct.kevent* %34, i32 %35, i32 130, i32 %38, i32 0, i32 0, i32 0)
  %40 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 3
  %41 = load i32, i32* @targ_fd, align 4
  %42 = load i32, i32* @EV_ADD, align 4
  %43 = load i32, i32* @EV_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @EV_SET(%struct.kevent* %40, i32 %41, i32 131, i32 %44, i32 0, i32 0, i32 0)
  %46 = load i32, i32* @kq_fd, align 4
  %47 = call i32 @kevent(i32 %46, %struct.kevent* %16, i32 4, %struct.kevent* null, i32 0, %struct.timespec* null)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %21
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %21
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i64 0, i64* %53, align 8
  store %struct.timespec* null, %struct.timespec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %222, %171, %73, %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %223

57:                                               ; preds = %54
  %58 = load i32, i32* @kq_fd, align 4
  %59 = load i32, i32* @MAX_EVENTS, align 4
  %60 = load %struct.timespec*, %struct.timespec** %4, align 8
  %61 = call i32 @kevent(i32 %58, %struct.kevent* null, i32 0, %struct.kevent* %16, i32 %59, %struct.timespec* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINTR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* @debug, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  br label %54

74:                                               ; preds = %64
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74
  br label %84

77:                                               ; preds = %57
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @MAX_EVENTS, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %76
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %165, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %168

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 %91
  %93 = getelementptr inbounds %struct.kevent, %struct.kevent* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = load i32, i32* @EV_ERROR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %89
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 %102
  %104 = getelementptr inbounds %struct.kevent, %struct.kevent* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %147 [
    i32 131, label %106
    i32 132, label %113
    i32 130, label %141
  ]

106:                                              ; preds = %100
  %107 = load i64, i64* @debug, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %106
  %112 = call i32 (...) @handle_read()
  br label %154

113:                                              ; preds = %100
  %114 = load i64, i64* @debug, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 %120
  %122 = getelementptr inbounds %struct.kevent, %struct.kevent* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %124, %struct.ccb_scsiio** %10, align 8
  %125 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %126 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.ctio_descr*
  store %struct.ctio_descr* %129, %struct.ctio_descr** %11, align 8
  %130 = load i32, i32* @AIO_DONE, align 4
  %131 = load %struct.ctio_descr*, %struct.ctio_descr** %11, align 8
  %132 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %134 = call i32 @queue_io(%struct.ccb_scsiio* %133)
  %135 = load %struct.ctio_descr*, %struct.ctio_descr** %11, align 8
  %136 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @run_queue(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %154

141:                                              ; preds = %100
  %142 = load i64, i64* @debug, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  store i32 1, i32* %5, align 4
  br label %154

147:                                              ; preds = %100
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 %149
  %151 = getelementptr inbounds %struct.kevent, %struct.kevent* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %147, %146, %118, %111
  %155 = load i64, i64* @debug, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i64 %159
  %161 = getelementptr inbounds %struct.kevent, %struct.kevent* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %157, %154
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %85

168:                                              ; preds = %85
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store %struct.timespec* %3, %struct.timespec** %4, align 8
  br label %54

172:                                              ; preds = %168
  %173 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* @work_queue)
  store %struct.ccb_hdr* %173, %struct.ccb_hdr** %9, align 8
  %174 = icmp ne %struct.ccb_hdr* %173, null
  br i1 %174, label %175, label %217

175:                                              ; preds = %172
  %176 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %177 = bitcast %struct.ccb_hdr* %176 to %union.ccb*
  store %union.ccb* %177, %union.ccb** %12, align 8
  %178 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %179 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %189 [
    i32 129, label %181
    i32 128, label %185
  ]

181:                                              ; preds = %175
  %182 = load %union.ccb*, %union.ccb** %12, align 8
  %183 = bitcast %union.ccb* %182 to i32*
  %184 = call i32 @work_atio(i32* %183)
  store i32 %184, i32* %6, align 4
  br label %195

185:                                              ; preds = %175
  %186 = load %union.ccb*, %union.ccb** %12, align 8
  %187 = bitcast %union.ccb* %186 to i32*
  %188 = call i32 @work_inot(i32* %187)
  store i32 %188, i32* %6, align 4
  br label %195

189:                                              ; preds = %175
  %190 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %191 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %192)
  %194 = call i32 (...) @abort() #4
  unreachable

195:                                              ; preds = %185, %181
  %196 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %197 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load i64, i64* @debug, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %202
  %208 = call i32 (...) @rel_simq()
  br label %209

209:                                              ; preds = %207, %195
  %210 = load i32, i32* %6, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %215 = call i32 @TAILQ_REMOVE(i32* @work_queue, %struct.ccb_hdr* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %209
  br label %217

217:                                              ; preds = %216, %172
  %218 = call i32 @TAILQ_EMPTY(i32* @work_queue)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  store %struct.timespec* %3, %struct.timespec** %4, align 8
  br label %222

221:                                              ; preds = %217
  store %struct.timespec* null, %struct.timespec** %4, align 8
  br label %222

222:                                              ; preds = %221, %220
  br label %54

223:                                              ; preds = %54
  %224 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %224)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kqueue(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @handle_read(...) #2

declare dso_local i32 @queue_io(%struct.ccb_scsiio*) #2

declare dso_local i32 @run_queue(i32) #2

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #2

declare dso_local i32 @work_atio(i32*) #2

declare dso_local i32 @work_inot(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @rel_simq(...) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #2

declare dso_local i32 @TAILQ_EMPTY(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
