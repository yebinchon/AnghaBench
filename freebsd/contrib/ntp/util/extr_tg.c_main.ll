; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32 }

@DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"a:dhilsu:v:y:\00", align 1
@optarg = common dso_local global i32 0, align 4
@dst = common dso_local global i32 0, align 4
@tone = common dso_local global i32 0, align 4
@encode = common dso_local global i32 0, align 4
@leap = common dso_local global i64 0, align 8
@AUDIO_SPEAKER = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@dut1 = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%2d%3d%2d%2d\00", align 1
@utc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid option %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/dev/audio\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"audio open %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@AUDIO_GETINFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"audio control %s\0A\00", align 1
@SECOND = common dso_local global i32 0, align 4
@AUDIO_ENCODING_ULAW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"port %d gain %d rate %d chan %d prec %d encode %d\0A\00", align 1
@AUDIO_SETINFO = common dso_local global i32 0, align 4
@second = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"year %d day %d time %02d:%02d:%02d tone %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%01d%03d%02d%02d%01d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@progx = common dso_local global %struct.TYPE_11__* null, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"sbs %x year %d day %d time %02d:%02d:%02d\0A\00", align 1
@DATA0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"\0Aleap!\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%04x%04d%06d%02d%02d%02d\00", align 1
@progz = common dso_local global %struct.TYPE_9__* null, align 8
@progy = common dso_local global %struct.TYPE_10__* null, align 8
@M5 = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@M2 = common dso_local global i32 0, align 4
@M8 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"M \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DATA1 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"L \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca [50 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.tm* null, %struct.tm** %8, align 8
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %22 = load i32, i32* @DEVICE, align 4
  %23 = call i32 @strlcpy(i8* %21, i32 %22, i32 50)
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %70, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %70 [
    i32 97, label %31
    i32 100, label %35
    i32 104, label %38
    i32 105, label %39
    i32 108, label %40
    i32 115, label %43
    i32 117, label %47
    i32 118, label %59
    i32 121, label %62
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @strlcpy(i8* %32, i32 %33, i32 50)
  br label %70

35:                                               ; preds = %29
  %36 = load i32, i32* @dst, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @dst, align 4
  br label %70

38:                                               ; preds = %29
  store i32 1200, i32* @tone, align 4
  br label %70

39:                                               ; preds = %29
  store i32 131, i32* @encode, align 4
  br label %70

40:                                               ; preds = %29
  %41 = load i64, i64* @leap, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* @leap, align 8
  br label %70

43:                                               ; preds = %29
  %44 = load i32, i32* @AUDIO_SPEAKER, align 4
  %45 = load i32, i32* @port, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @port, align 4
  br label %70

47:                                               ; preds = %29
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* @dut1)
  %50 = load i32, i32* @dut1, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @dut1, align 4
  %54 = call i32 @abs(i32 %53) #4
  store i32 %54, i32* @dut1, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @dut1, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* @dut1, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %70

59:                                               ; preds = %29
  %60 = load i32, i32* @optarg, align 4
  %61 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* @level)
  br label %70

62:                                               ; preds = %29
  %63 = load i32, i32* @optarg, align 4
  %64 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %19, i32* %18, i32* %17, i32* %16)
  %65 = load i32, i32* @utc, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @utc, align 4
  br label %70

67:                                               ; No predecessors!
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %29, %67, %62, %59, %58, %43, %40, %39, %38, %35, %31
  br label %24

71:                                               ; preds = %24
  %72 = load i32, i32* @O_WRONLY, align 4
  %73 = call i64 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i64 %73, i64* @fd, align 8
  %74 = load i64, i64* @fd, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @errno, align 4
  %78 = call i8* @strerror(i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  %80 = call i32 @exit(i32 1) #5
  unreachable

81:                                               ; preds = %71
  %82 = load i64, i64* @fd, align 8
  %83 = load i32, i32* @AUDIO_GETINFO, align 4
  %84 = call i32 @ioctl(i64 %82, i32 %83, %struct.TYPE_8__* %7)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @errno, align 4
  %89 = call i8* @strerror(i32 %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  %91 = call i32 @exit(i32 0) #5
  unreachable

92:                                               ; preds = %81
  %93 = load i32, i32* @port, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @level, align 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @SECOND, align 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  store i32 8, i32* %105, align 4
  %106 = load i32, i32* @AUDIO_ENCODING_ULAW, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = load i64, i64* @fd, align 8
  %129 = load i32, i32* @AUDIO_SETINFO, align 4
  %130 = call i32 @ioctl(i64 %128, i32 %129, %struct.TYPE_8__* %7)
  %131 = load i32, i32* @utc, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %161, label %133

133:                                              ; preds = %92
  %134 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %136 = call %struct.tm* @gmtime(i32* %135)
  store %struct.tm* %136, %struct.tm** %8, align 8
  %137 = load %struct.tm*, %struct.tm** %8, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %16, align 4
  %140 = load %struct.tm*, %struct.tm** %8, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %17, align 4
  %143 = load %struct.tm*, %struct.tm** %8, align 8
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  %147 = load %struct.tm*, %struct.tm** %8, align 8
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = srem i32 %149, 100
  store i32 %150, i32* %19, align 4
  %151 = load %struct.tm*, %struct.tm** %8, align 8
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* @second, align 4
  %154 = load i32, i32* @SECOND, align 4
  %155 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %156, 8
  %158 = sdiv i32 %157, 1000
  %159 = sub nsw i32 %154, %158
  %160 = call i32 @delay(i32 %159)
  br label %161

161:                                              ; preds = %133, %92
  %162 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %163 = call i32 @memset(i8* %162, i32 0, i32 100)
  %164 = load i32, i32* @encode, align 4
  switch i32 %164, label %211 [
    i32 128, label %165
    i32 131, label %204
  ]

165:                                              ; preds = %161
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @second, align 4
  %171 = load i32, i32* @tone, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %174 = load i32, i32* %19, align 4
  %175 = sdiv i32 %174, 10
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %19, align 4
  %180 = srem i32 %179, 10
  %181 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %173, i32 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %175, i32 %176, i32 %177, i32 %178, i32 %180)
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %182)
  store i32 8, i32* %15, align 4
  store i32 0, i32* %20, align 4
  br label %184

184:                                              ; preds = %200, %165
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* @second, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** @progx, align 8
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 135
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %15, align 4
  br label %199

199:                                              ; preds = %196, %188
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  br label %184

203:                                              ; preds = %184
  br label %211

204:                                              ; preds = %161
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @second, align 4
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %161, %204, %203
  br label %212

212:                                              ; preds = %211, %473
  %213 = load i32, i32* @second, align 4
  %214 = add nsw i32 %213, 1
  %215 = srem i32 %214, 60
  store i32 %215, i32* @second, align 4
  %216 = load i32, i32* @second, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %266

218:                                              ; preds = %212
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp sge i32 %221, 60
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  store i32 0, i32* %16, align 4
  %224 = load i32, i32* %17, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %17, align 4
  br label %226

226:                                              ; preds = %223, %218
  %227 = load i32, i32* %17, align 4
  %228 = icmp sge i32 %227, 24
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  store i32 0, i32* %17, align 4
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %18, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = and i32 %234, 3
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 366, i32 367
  %239 = icmp sge i32 %233, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %232
  %241 = load i64, i64* @leap, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32, i32* @DATA0, align 4
  %245 = call i32 @sec(i32 %244)
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  store i64 0, i64* @leap, align 8
  br label %247

247:                                              ; preds = %243, %240
  store i32 1, i32* %18, align 4
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %19, align 4
  br label %250

250:                                              ; preds = %247, %232
  %251 = load i32, i32* @encode, align 4
  %252 = icmp eq i32 %251, 128
  br i1 %252, label %253, label %265

253:                                              ; preds = %250
  %254 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %255 = load i32, i32* %19, align 4
  %256 = sdiv i32 %255, 10
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %19, align 4
  %261 = srem i32 %260, 10
  %262 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %254, i32 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %256, i32 %257, i32 %258, i32 %259, i32 %261)
  %263 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %263)
  store i32 8, i32* %15, align 4
  br label %265

265:                                              ; preds = %253, %250
  br label %266

266:                                              ; preds = %265, %212
  %267 = load i32, i32* @encode, align 4
  %268 = icmp eq i32 %267, 131
  br i1 %268, label %269, label %279

269:                                              ; preds = %266
  %270 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @second, align 4
  %276 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %270, i32 100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %277)
  store i32 19, i32* %15, align 4
  br label %279

279:                                              ; preds = %269, %266
  %280 = load i32, i32* @encode, align 4
  switch i32 %280, label %473 [
    i32 131, label %281
    i32 128, label %374
  ]

281:                                              ; preds = %279
  store i32 0, i32* %20, align 4
  br label %282

282:                                              ; preds = %369, %281
  %283 = load i32, i32* %20, align 4
  %284 = icmp slt i32 %283, 100
  br i1 %284, label %285, label %372

285:                                              ; preds = %282
  %286 = load i32, i32* %20, align 4
  %287 = icmp slt i32 %286, 10
  br i1 %287, label %288, label %301

288:                                              ; preds = %285
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** @progz, align 8
  %290 = load i32, i32* %20, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %14, align 4
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** @progz, align 8
  %296 = load i32, i32* %20, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %13, align 4
  br label %316

301:                                              ; preds = %285
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** @progy, align 8
  %303 = load i32, i32* %20, align 4
  %304 = srem i32 %303, 10
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %14, align 4
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** @progy, align 8
  %310 = load i32, i32* %20, align 4
  %311 = srem i32 %310, 10
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %13, align 4
  br label %316

316:                                              ; preds = %301, %288
  %317 = load i32, i32* %14, align 4
  switch i32 %317, label %364 [
    i32 137, label %318
    i32 135, label %344
    i32 129, label %355
  ]

318:                                              ; preds = %316
  %319 = load i32, i32* %15, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = load i32, i32* %13, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %318
  %328 = load i32, i32* @M5, align 4
  %329 = load i32, i32* @HIGH, align 4
  %330 = call i32 @peep(i32 %328, i32 1000, i32 %329)
  %331 = load i32, i32* @M5, align 4
  %332 = load i32, i32* @LOW, align 4
  %333 = call i32 @peep(i32 %331, i32 1000, i32 %332)
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %343

335:                                              ; preds = %318
  %336 = load i32, i32* @M2, align 4
  %337 = load i32, i32* @HIGH, align 4
  %338 = call i32 @peep(i32 %336, i32 1000, i32 %337)
  %339 = load i32, i32* @M8, align 4
  %340 = load i32, i32* @LOW, align 4
  %341 = call i32 @peep(i32 %339, i32 1000, i32 %340)
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %343

343:                                              ; preds = %335, %327
  br label %364

344:                                              ; preds = %316
  %345 = load i32, i32* %15, align 4
  %346 = add nsw i32 %345, -1
  store i32 %346, i32* %15, align 4
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* @HIGH, align 4
  %350 = call i32 @peep(i32 %348, i32 1000, i32 %349)
  %351 = load i32, i32* %13, align 4
  %352 = sub nsw i32 10, %351
  %353 = load i32, i32* @LOW, align 4
  %354 = call i32 @peep(i32 %352, i32 1000, i32 %353)
  br label %364

355:                                              ; preds = %316
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* @HIGH, align 4
  %358 = call i32 @peep(i32 %356, i32 1000, i32 %357)
  %359 = load i32, i32* %13, align 4
  %360 = sub nsw i32 10, %359
  %361 = load i32, i32* @LOW, align 4
  %362 = call i32 @peep(i32 %360, i32 1000, i32 %361)
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %364

364:                                              ; preds = %316, %355, %344, %343
  %365 = load i32, i32* %15, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  br label %372

368:                                              ; preds = %364
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %20, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %20, align 4
  br label %282

372:                                              ; preds = %367, %282
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %473

374:                                              ; preds = %279
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** @progx, align 8
  %376 = load i32, i32* @second, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %14, align 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** @progx, align 8
  %382 = load i32, i32* @second, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %13, align 4
  %387 = load i32, i32* %14, align 4
  switch i32 %387, label %472 [
    i32 136, label %388
    i32 137, label %391
    i32 130, label %409
    i32 135, label %421
    i32 129, label %427
    i32 132, label %437
    i32 134, label %449
    i32 133, label %462
  ]

388:                                              ; preds = %374
  %389 = load i32, i32* %13, align 4
  %390 = call i32 @sec(i32 %389)
  br label %472

391:                                              ; preds = %374
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = load i32, i32* %13, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %391
  %401 = load i32, i32* @DATA1, align 4
  %402 = call i32 @sec(i32 %401)
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %408

404:                                              ; preds = %391
  %405 = load i32, i32* @DATA0, align 4
  %406 = call i32 @sec(i32 %405)
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %408

408:                                              ; preds = %404, %400
  br label %472

409:                                              ; preds = %374
  %410 = load i64, i64* @leap, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %409
  %413 = load i32, i32* @DATA1, align 4
  %414 = call i32 @sec(i32 %413)
  %415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %420

416:                                              ; preds = %409
  %417 = load i32, i32* @DATA0, align 4
  %418 = call i32 @sec(i32 %417)
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %420

420:                                              ; preds = %416, %412
  br label %472

421:                                              ; preds = %374
  %422 = load i32, i32* %15, align 4
  %423 = add nsw i32 %422, -1
  store i32 %423, i32* %15, align 4
  %424 = load i32, i32* %13, align 4
  %425 = call i32 @sec(i32 %424)
  %426 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %472

427:                                              ; preds = %374
  %428 = load i32, i32* %13, align 4
  %429 = load i32, i32* @tone, align 4
  %430 = load i32, i32* @HIGH, align 4
  %431 = call i32 @peep(i32 %428, i32 %429, i32 %430)
  %432 = load i32, i32* %13, align 4
  %433 = sub nsw i32 1000, %432
  %434 = load i32, i32* @tone, align 4
  %435 = load i32, i32* @OFF, align 4
  %436 = call i32 @peep(i32 %433, i32 %434, i32 %435)
  br label %472

437:                                              ; preds = %374
  %438 = load i32, i32* @dut1, align 4
  %439 = load i32, i32* %13, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %437
  %443 = load i32, i32* @DATA1, align 4
  %444 = call i32 @sec(i32 %443)
  br label %448

445:                                              ; preds = %437
  %446 = load i32, i32* @DATA0, align 4
  %447 = call i32 @sec(i32 %446)
  br label %448

448:                                              ; preds = %445, %442
  br label %472

449:                                              ; preds = %374
  %450 = load i32, i32* %15, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* %15, align 4
  %452 = load i32, i32* @dst, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %449
  %455 = load i32, i32* @DATA1, align 4
  %456 = call i32 @sec(i32 %455)
  br label %460

457:                                              ; preds = %449
  %458 = load i32, i32* @DATA0, align 4
  %459 = call i32 @sec(i32 %458)
  br label %460

460:                                              ; preds = %457, %454
  %461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %472

462:                                              ; preds = %374
  %463 = load i32, i32* @dst, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load i32, i32* @DATA1, align 4
  %467 = call i32 @sec(i32 %466)
  br label %471

468:                                              ; preds = %462
  %469 = load i32, i32* @DATA0, align 4
  %470 = call i32 @sec(i32 %469)
  br label %471

471:                                              ; preds = %468, %465
  br label %472

472:                                              ; preds = %374, %471, %460, %448, %427, %421, %420, %408, %388
  br label %473

473:                                              ; preds = %472, %279, %372
  br label %212
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ioctl(i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @sec(i32) #1

declare dso_local i32 @peep(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
