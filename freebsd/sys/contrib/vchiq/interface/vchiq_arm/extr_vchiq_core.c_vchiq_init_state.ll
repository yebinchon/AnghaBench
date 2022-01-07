; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_init_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32, i32*, %struct.TYPE_14__, i32, %struct.TYPE_14__, %struct.TYPE_14__, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_17__, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@vchiq_init_state.id = internal global i32 0, align 4
@VCHIQ_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid VCHIQ magic value found.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"slot_zero=%x: magic=%x (expected %x)\00", align 1
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"local ver %d (min %d), remote ver %d.\00", align 1
@VCHIQ_VERSION = common dso_local global i64 0, align 8
@VCHIQ_VERSION_MIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Incompatible VCHIQ versions found.\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"slot_zero=%x: VideoCore version=%d (minimum %d)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Restart with a newer VideoCore image.\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"slot_zero=%x: version=%d (VideoCore minimum %d)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Restart with a newer kernel.\00", align 1
@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@VCHIQ_MAX_SLOTS = common dso_local global i32 0, align 4
@VCHIQ_MAX_SLOTS_PER_SIDE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"slot_zero=%x: slot_zero_size=%x (expected %zx)\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"slot_zero=%x: slot_size=%d (expected %d\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"slot_zero=%x: max_slots=%d (expected %d)\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"slot_zero=%x: max_slots_per_side=%d (expected %d)\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"local state has already been initialised\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"master/slave mismatch - two %ss\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@VCHIQ_MAX_SERVICES = common dso_local global i32 0, align 4
@VCHIQ_MSGID_PADDING = common dso_local global i32 0, align 4
@DEBUG_MAX = common dso_local global i32 0, align 4
@DEBUG_ENTRIES = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"VCHIQ-%d\00", align 1
@slot_handler_func = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"couldn't create thread %s\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"VCHIQr-%d\00", align 1
@recycle_func = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"VCHIQs-%d\00", align 1
@sync_func = common dso_local global i32 0, align 4
@VCHIQ_MAX_STATES = common dso_local global i32 0, align 4
@vchiq_states = common dso_local global %struct.TYPE_15__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_init_state(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VCHIQ_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = call i32 (...) @vchiq_loud_error_header()
  %21 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = ptrtoint %struct.TYPE_16__* %22 to i32
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VCHIQ_MAGIC, align 8
  %28 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23, i64 %26, i64 %27)
  %29 = call i32 (...) @vchiq_loud_error_footer()
  %30 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %502

31:                                               ; preds = %3
  %32 = load i32, i32* @vchiq_core_log_level, align 4
  %33 = load i64, i64* @VCHIQ_VERSION, align 8
  %34 = load i64, i64* @VCHIQ_VERSION_MIN, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @vchiq_log_warning(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %33, i64 %34, i64 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VCHIQ_VERSION_MIN, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = call i32 (...) @vchiq_loud_error_header()
  %46 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = ptrtoint %struct.TYPE_16__* %47 to i32
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VCHIQ_VERSION_MIN, align 8
  %53 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %48, i64 %51, i64 %52)
  %54 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i32 (...) @vchiq_loud_error_footer()
  %56 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %56, i32* %4, align 4
  br label %502

57:                                               ; preds = %31
  %58 = load i64, i64* @VCHIQ_VERSION, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = call i32 (...) @vchiq_loud_error_header()
  %65 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = ptrtoint %struct.TYPE_16__* %66 to i32
  %68 = load i64, i64* @VCHIQ_VERSION, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %67, i64 %68, i64 %71)
  %73 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 (...) @vchiq_loud_error_footer()
  %75 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %75, i32* %4, align 4
  br label %502

76:                                               ; preds = %57
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 224
  br i1 %81, label %100, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VCHIQ_MAX_SLOTS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @VCHIQ_MAX_SLOTS_PER_SIDE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %159

100:                                              ; preds = %94, %88, %82, %76
  %101 = call i32 (...) @vchiq_loud_error_header()
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp ne i64 %105, 224
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = ptrtoint %struct.TYPE_16__* %108 to i32
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %112, i64 224)
  br label %114

114:                                              ; preds = %107, %100
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = ptrtoint %struct.TYPE_16__* %121 to i32
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %127 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %120, %114
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @VCHIQ_MAX_SLOTS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = ptrtoint %struct.TYPE_16__* %135 to i32
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @VCHIQ_MAX_SLOTS, align 4
  %141 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %136, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %128
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @VCHIQ_MAX_SLOTS_PER_SIDE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = ptrtoint %struct.TYPE_16__* %149 to i32
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @VCHIQ_MAX_SLOTS_PER_SIDE, align 4
  %155 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %150, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %148, %142
  %157 = call i32 (...) @vchiq_loud_error_footer()
  %158 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %158, i32* %4, align 4
  br label %502

159:                                              ; preds = %94
  %160 = load i64, i64* @VCHIQ_VERSION, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i64, i64* @VCHIQ_VERSION, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 4
  store %struct.TYPE_17__* %174, %struct.TYPE_17__** %8, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 5
  store %struct.TYPE_17__* %176, %struct.TYPE_17__** %9, align 8
  br label %182

177:                                              ; preds = %169
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 5
  store %struct.TYPE_17__* %179, %struct.TYPE_17__** %8, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 4
  store %struct.TYPE_17__* %181, %struct.TYPE_17__** %9, align 8
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %182
  %188 = call i32 (...) @vchiq_loud_error_header()
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %201

195:                                              ; preds = %187
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)
  %200 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %195, %193
  %202 = call i32 (...) @vchiq_loud_error_footer()
  %203 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %203, i32* %4, align 4
  br label %502

204:                                              ; preds = %182
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = call i32 @memset(%struct.TYPE_15__* %205, i32 0, i32 144)
  %207 = load i32, i32* @vchiq_init_state.id, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* @vchiq_init_state.id, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 27
  store %struct.TYPE_17__* %214, %struct.TYPE_17__** %216, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 26
  store %struct.TYPE_17__* %217, %struct.TYPE_17__** %219, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %221 = bitcast %struct.TYPE_16__* %220 to i32*
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 25
  store i32* %221, i32** %223, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 24
  %226 = call i32 @_sema_init(i32* %225, i32 0)
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 23
  %229 = call i32 @lmutex_init(i32* %228)
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 12
  %232 = call i32 @_sema_init(i32* %231, i32 0)
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 11
  %235 = call i32 @_sema_init(i32* %234, i32 0)
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 10
  %238 = call i32 @_sema_init(i32* %237, i32 0)
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 9
  %241 = call i32 @_sema_init(i32* %240, i32 0)
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 22
  %244 = call i32 @lmutex_init(i32* %243)
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 21
  %247 = call i32 @lmutex_init(i32* %246)
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 20
  %250 = call i32 @lmutex_init(i32* %249)
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 19
  %253 = call i32 @lmutex_init(i32* %252)
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 15
  %256 = call i32 @_sema_init(i32* %255, i32 0)
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 18
  %259 = call i32 @_sema_init(i32* %258, i32 0)
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 17
  %262 = call i32 @_sema_init(i32* %261, i32 0)
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  store i32 0, i32* %264, align 8
  store i32 0, i32* %12, align 4
  br label %265

265:                                              ; preds = %279, %204
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %282

269:                                              ; preds = %265
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 16
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i64 %274
  store %struct.TYPE_18__* %275, %struct.TYPE_18__** %13, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = call i32 @_sema_init(i32* %277, i32 0)
  br label %279

279:                                              ; preds = %269
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  br label %265

282:                                              ; preds = %265
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %12, align 4
  br label %286

286:                                              ; preds = %306, %282
  %287 = load i32, i32* %12, align 4
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = icmp sle i32 %287, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %286
  %293 = load i32, i32* %12, align 4
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 8
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i32, i32* %296, i64 %301
  store i32 %293, i32* %302, align 4
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 15
  %305 = call i32 @up(i32* %304)
  br label %306

306:                                              ; preds = %292
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  br label %286

309:                                              ; preds = %286
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = sdiv i32 %312, 2
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 %318, 256
  %320 = trunc i32 %319 to i16
  %321 = call i32 @min(i16 zeroext %320, i16 zeroext -1)
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 14
  store i32 %321, i32* %323, align 8
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 4
  store i32 -1, i32* %325, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 13
  store i64 0, i64* %327, align 8
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 %330, 1
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 5
  store i32 %331, i32* %333, align 4
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 12
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 11
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 0
  store i32* %335, i32** %338, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 11
  %341 = call i32 @remote_event_create(%struct.TYPE_14__* %340)
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 10
  store i64 0, i64* %343, align 8
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 11
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 9
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  store i32* %345, i32** %348, align 8
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 9
  %351 = call i32 @remote_event_create(%struct.TYPE_14__* %350)
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 4
  store i32 %354, i32* %356, align 8
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 10
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  store i32* %358, i32** %361, align 8
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 8
  %364 = call i32 @remote_event_create(%struct.TYPE_14__* %363)
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 9
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 0
  store i32* %366, i32** %369, align 8
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 6
  %372 = call i32 @remote_event_create(%struct.TYPE_14__* %371)
  %373 = load i32, i32* @VCHIQ_MSGID_PADDING, align 4
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_15__* %374, i32 %377)
  %379 = inttoptr i64 %378 to %struct.TYPE_19__*
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 0
  store i32 %373, i32* %380, align 4
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 6
  %383 = call i32 @remote_event_signal_local(%struct.TYPE_14__* %382)
  %384 = load i32, i32* @DEBUG_MAX, align 4
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 5
  %387 = load i32*, i32** %386, align 8
  %388 = load i64, i64* @DEBUG_ENTRIES, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  store i32 %384, i32* %389, align 4
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %391 = call i32 @vchiq_platform_init_state(%struct.TYPE_15__* %390)
  store i32 %391, i32* %10, align 4
  %392 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @snprintf(i8* %392, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %395)
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %398 = bitcast %struct.TYPE_15__* %397 to i8*
  %399 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %400 = call i8* @vchiq_thread_create(i32* @slot_handler_func, i8* %398, i8* %399)
  %401 = bitcast i8* %400 to i32*
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 8
  store i32* %401, i32** %403, align 8
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 8
  %406 = load i32*, i32** %405, align 8
  %407 = icmp eq i32* %406, null
  br i1 %407, label %408, label %414

408:                                              ; preds = %309
  %409 = call i32 (...) @vchiq_loud_error_header()
  %410 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %411 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %410)
  %412 = call i32 (...) @vchiq_loud_error_footer()
  %413 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %413, i32* %4, align 4
  br label %502

414:                                              ; preds = %309
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 8
  %417 = load i32*, i32** %416, align 8
  %418 = call i32 @set_user_nice(i32* %417, i32 -19)
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 8
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 @wake_up_process(i32* %421)
  %423 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @snprintf(i8* %423, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %426)
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %429 = bitcast %struct.TYPE_15__* %428 to i8*
  %430 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %431 = call i8* @vchiq_thread_create(i32* @recycle_func, i8* %429, i8* %430)
  %432 = bitcast i8* %431 to i32*
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 7
  store i32* %432, i32** %434, align 8
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i32 0, i32 7
  %437 = load i32*, i32** %436, align 8
  %438 = icmp eq i32* %437, null
  br i1 %438, label %439, label %445

439:                                              ; preds = %414
  %440 = call i32 (...) @vchiq_loud_error_header()
  %441 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %442 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %441)
  %443 = call i32 (...) @vchiq_loud_error_footer()
  %444 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %444, i32* %4, align 4
  br label %502

445:                                              ; preds = %414
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 7
  %448 = load i32*, i32** %447, align 8
  %449 = call i32 @set_user_nice(i32* %448, i32 -19)
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 7
  %452 = load i32*, i32** %451, align 8
  %453 = call i32 @wake_up_process(i32* %452)
  %454 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %455 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @snprintf(i8* %454, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %457)
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %460 = bitcast %struct.TYPE_15__* %459 to i8*
  %461 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %462 = call i8* @vchiq_thread_create(i32* @sync_func, i8* %460, i8* %461)
  %463 = bitcast i8* %462 to i32*
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 6
  store i32* %463, i32** %465, align 8
  %466 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 6
  %468 = load i32*, i32** %467, align 8
  %469 = icmp eq i32* %468, null
  br i1 %469, label %470, label %476

470:                                              ; preds = %445
  %471 = call i32 (...) @vchiq_loud_error_header()
  %472 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %473 = call i32 (i8*, ...) @vchiq_loud_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %472)
  %474 = call i32 (...) @vchiq_loud_error_footer()
  %475 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %475, i32* %4, align 4
  br label %502

476:                                              ; preds = %445
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 6
  %479 = load i32*, i32** %478, align 8
  %480 = call i32 @set_user_nice(i32* %479, i32 -20)
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 6
  %483 = load i32*, i32** %482, align 8
  %484 = call i32 @wake_up_process(i32* %483)
  %485 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @VCHIQ_MAX_STATES, align 4
  %489 = icmp sge i32 %487, %488
  %490 = zext i1 %489 to i32
  %491 = call i32 @BUG_ON(i32 %490)
  %492 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %493 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @vchiq_states, align 8
  %494 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %493, i64 %497
  store %struct.TYPE_15__* %492, %struct.TYPE_15__** %498, align 8
  %499 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %499, i32 0, i32 0
  store i32 1, i32* %500, align 8
  %501 = load i32, i32* %10, align 4
  store i32 %501, i32* %4, align 4
  br label %502

502:                                              ; preds = %476, %470, %439, %408, %201, %156, %63, %44, %19
  %503 = load i32, i32* %4, align 4
  ret i32 %503
}

declare dso_local i32 @vchiq_loud_error_header(...) #1

declare dso_local i32 @vchiq_loud_error(i8*, ...) #1

declare dso_local i32 @vchiq_loud_error_footer(...) #1

declare dso_local i32 @vchiq_log_warning(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @_sema_init(i32*, i32) #1

declare dso_local i32 @lmutex_init(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @min(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @remote_event_create(%struct.TYPE_14__*) #1

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @remote_event_signal_local(%struct.TYPE_14__*) #1

declare dso_local i32 @vchiq_platform_init_state(%struct.TYPE_15__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @vchiq_thread_create(i32*, i8*, i8*) #1

declare dso_local i32 @set_user_nice(i32*, i32) #1

declare dso_local i32 @wake_up_process(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
