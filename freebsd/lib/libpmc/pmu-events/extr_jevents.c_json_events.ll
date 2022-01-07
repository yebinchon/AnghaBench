; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_json_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_json_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.msrmap = type { i8* }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@JSMN_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"expected top level array\00", align 1
@JSMN_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"expected object\00", align 1
@JSMN_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected field name\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Expected string value\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"EventCode\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ExtSel\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"EventName\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"BriefDescription\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"PublicDescription\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PEBS\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"MSRIndex\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"MSRValue\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Errata\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" Spec update: \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Data_LA\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c" Supports address when precise\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@unit_to_pmu = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"uncore_\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Unit: \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ScaleUnit\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"PerPkg\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"MetricName\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"MetricGroup\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"MetricExpr\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"ArchStdEvent\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"(Precise Event)\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"(Must be precise)\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"(Precise event)\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"event=%#llx\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"unexpected objects at end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_events(i8* %0, i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [128 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.msrmap*, align 8
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca %struct.TYPE_11__*, align 8
  %35 = alloca %struct.TYPE_11__*, align 8
  %36 = alloca %struct.TYPE_11__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %1, i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %568

47:                                               ; preds = %3
  %48 = load i8*, i8** %5, align 8
  %49 = call %struct.TYPE_11__* @parse_json(i8* %48, i8** %15, i64* %9, i32* %14)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %568

55:                                               ; preds = %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @JSMN_ARRAY, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = call i32 @EXPECT(i32 %61, %struct.TYPE_11__* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 1
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %546, %55
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %549

72:                                               ; preds = %66
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  store i8* null, i8** %29, align 8
  store i64 0, i64* %30, align 8
  store %struct.msrmap* null, %struct.msrmap** %31, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %33, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 1
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %34, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @JSMN_OBJECT, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %82 = call i32 @EXPECT(i32 %80, %struct.TYPE_11__* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %409, %72
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %412

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %92
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %35, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @JSMN_STRING, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = call i32 @EXPECT(i32 %99, %struct.TYPE_11__* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 1
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %36, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @JSMN_STRING, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 1
  %121 = call i32 @EXPECT(i32 %115, %struct.TYPE_11__* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i8*, i8** %15, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %124 = call i64 @json_streq(i8* %122, %struct.TYPE_11__* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %37, align 4
  %128 = load i8*, i8** %15, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %130 = load i32, i32* %37, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %132 = call i64 @match_field(i8* %128, %struct.TYPE_11__* %129, i32 %130, i8** %17, %struct.TYPE_11__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %89
  br label %408

135:                                              ; preds = %89
  %136 = load i8*, i8** %15, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %138 = call i64 @json_streq(i8* %136, %struct.TYPE_11__* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  store i8* null, i8** %39, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %143 = call i32 @addfield(i8* %141, i8** %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %142)
  %144 = load i8*, i8** %39, align 8
  %145 = call i32 @strtoul(i8* %144, i32* null, i32 0)
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %30, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %30, align 8
  %149 = load i8*, i8** %39, align 8
  %150 = call i32 @free(i8* %149)
  br label %407

151:                                              ; preds = %135
  %152 = load i8*, i8** %15, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %154 = call i64 @json_streq(i8* %152, %struct.TYPE_11__* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  store i8* null, i8** %40, align 8
  %157 = load i8*, i8** %15, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %159 = call i32 @addfield(i8* %157, i8** %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %158)
  %160 = load i8*, i8** %40, align 8
  %161 = call i32 @strtoul(i8* %160, i32* null, i32 0)
  %162 = shl i32 %161, 21
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %30, align 8
  %165 = or i64 %164, %163
  store i64 %165, i64* %30, align 8
  %166 = load i8*, i8** %40, align 8
  %167 = call i32 @free(i8* %166)
  br label %406

168:                                              ; preds = %151
  %169 = load i8*, i8** %15, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %171 = call i64 @json_streq(i8* %169, %struct.TYPE_11__* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i8*, i8** %15, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %176 = call i32 @addfield(i8* %174, i8** %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %175)
  br label %405

177:                                              ; preds = %168
  %178 = load i8*, i8** %15, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %180 = call i64 @json_streq(i8* %178, %struct.TYPE_11__* %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i8*, i8** %15, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %185 = call i32 @addfield(i8* %183, i8** %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %184)
  %186 = load i8*, i8** %18, align 8
  %187 = call i32 @fixdesc(i8* %186)
  br label %404

188:                                              ; preds = %177
  %189 = load i8*, i8** %15, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %191 = call i64 @json_streq(i8* %189, %struct.TYPE_11__* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i8*, i8** %15, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %196 = call i32 @addfield(i8* %194, i8** %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %195)
  %197 = load i8*, i8** %20, align 8
  %198 = call i32 @fixdesc(i8* %197)
  br label %403

199:                                              ; preds = %188
  %200 = load i8*, i8** %15, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %202 = call i64 @json_streq(i8* %200, %struct.TYPE_11__* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* %37, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %33, align 8
  br label %402

209:                                              ; preds = %204, %199
  %210 = load i8*, i8** %15, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %212 = call i64 @json_streq(i8* %210, %struct.TYPE_11__* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load i32, i32* %37, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i8*, i8** %15, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %220 = call %struct.msrmap* @lookup_msr(i8* %218, %struct.TYPE_11__* %219)
  store %struct.msrmap* %220, %struct.msrmap** %31, align 8
  br label %401

221:                                              ; preds = %214, %209
  %222 = load i8*, i8** %15, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %224 = call i64 @json_streq(i8* %222, %struct.TYPE_11__* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %227, %struct.TYPE_11__** %32, align 8
  br label %400

228:                                              ; preds = %221
  %229 = load i8*, i8** %15, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %231 = call i64 @json_streq(i8* %229, %struct.TYPE_11__* %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load i8*, i8** %15, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %236 = call i64 @json_streq(i8* %234, %struct.TYPE_11__* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %233
  %239 = load i8*, i8** %15, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %241 = call i32 @addfield(i8* %239, i8** %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_11__* %240)
  br label %399

242:                                              ; preds = %233, %228
  %243 = load i8*, i8** %15, align 8
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %245 = call i64 @json_streq(i8* %243, %struct.TYPE_11__* %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %242
  %248 = load i32, i32* %37, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i8*, i8** %15, align 8
  %252 = call i32 @addfield(i8* %251, i8** %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_11__* null)
  br label %398

253:                                              ; preds = %247, %242
  %254 = load i8*, i8** %15, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %256 = call i64 @json_streq(i8* %254, %struct.TYPE_11__* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %299

258:                                              ; preds = %253
  %259 = load i32, i32* @unit_to_pmu, align 4
  %260 = load i8*, i8** %15, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %262 = call i8* @field_to_perf(i32 %259, i8* %260, %struct.TYPE_11__* %261)
  store i8* %262, i8** %41, align 8
  %263 = load i8*, i8** %41, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %258
  %266 = load i8*, i8** %41, align 8
  %267 = call i8* @strdup(i8* %266)
  store i8* %267, i8** %22, align 8
  br label %291

268:                                              ; preds = %258
  %269 = load i8*, i8** %22, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  store i8* %272, i8** %22, align 8
  br label %273

273:                                              ; preds = %271, %268
  %274 = load i8*, i8** %15, align 8
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %276 = call i32 @addfield(i8* %274, i8** %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %275)
  %277 = load i8*, i8** %22, align 8
  store i8* %277, i8** %38, align 8
  br label %278

278:                                              ; preds = %287, %273
  %279 = load i8*, i8** %38, align 8
  %280 = load i8, i8* %279, align 1
  %281 = icmp ne i8 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %278
  %283 = load i8*, i8** %38, align 8
  %284 = load i8, i8* %283, align 1
  %285 = call signext i8 @tolower(i8 signext %284)
  %286 = load i8*, i8** %38, align 8
  store i8 %285, i8* %286, align 1
  br label %287

287:                                              ; preds = %282
  %288 = load i8*, i8** %38, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %38, align 8
  br label %278

290:                                              ; preds = %278
  br label %291

291:                                              ; preds = %290, %265
  %292 = load i8*, i8** %15, align 8
  %293 = call i32 @addfield(i8* %292, i8** %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_11__* null)
  %294 = load i8*, i8** %15, align 8
  %295 = load i8*, i8** %22, align 8
  %296 = call i32 @addfield(i8* %294, i8** %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %295, %struct.TYPE_11__* null)
  %297 = load i8*, i8** %15, align 8
  %298 = call i32 @addfield(i8* %297, i8** %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %struct.TYPE_11__* null)
  br label %397

299:                                              ; preds = %253
  %300 = load i8*, i8** %15, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %302 = call i64 @json_streq(i8* %300, %struct.TYPE_11__* %301, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = load i8*, i8** %15, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %307 = call i32 @addfield(i8* %305, i8** %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %306)
  br label %396

308:                                              ; preds = %299
  %309 = load i8*, i8** %15, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %311 = call i64 @json_streq(i8* %309, %struct.TYPE_11__* %310, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = load i8*, i8** %15, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %316 = call i32 @addfield(i8* %314, i8** %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %315)
  br label %395

317:                                              ; preds = %308
  %318 = load i8*, i8** %15, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %320 = call i64 @json_streq(i8* %318, %struct.TYPE_11__* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load i8*, i8** %15, align 8
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %325 = call i32 @addfield(i8* %323, i8** %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %324)
  br label %394

326:                                              ; preds = %317
  %327 = load i8*, i8** %15, align 8
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %329 = call i64 @json_streq(i8* %327, %struct.TYPE_11__* %328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %326
  %332 = load i8*, i8** %15, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %334 = call i32 @addfield(i8* %332, i8** %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %333)
  br label %393

335:                                              ; preds = %326
  %336 = load i8*, i8** %15, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %338 = call i64 @json_streq(i8* %336, %struct.TYPE_11__* %337, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %335
  %341 = load i8*, i8** %15, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %343 = call i32 @addfield(i8* %341, i8** %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %342)
  br label %392

344:                                              ; preds = %335
  %345 = load i8*, i8** %15, align 8
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %347 = call i64 @json_streq(i8* %345, %struct.TYPE_11__* %346, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %367

349:                                              ; preds = %344
  %350 = load i8*, i8** %15, align 8
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %352 = call i32 @addfield(i8* %350, i8** %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %351)
  %353 = load i8*, i8** %26, align 8
  store i8* %353, i8** %38, align 8
  br label %354

354:                                              ; preds = %363, %349
  %355 = load i8*, i8** %38, align 8
  %356 = load i8, i8* %355, align 1
  %357 = icmp ne i8 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %354
  %359 = load i8*, i8** %38, align 8
  %360 = load i8, i8* %359, align 1
  %361 = call signext i8 @tolower(i8 signext %360)
  %362 = load i8*, i8** %38, align 8
  store i8 %361, i8* %362, align 1
  br label %363

363:                                              ; preds = %358
  %364 = load i8*, i8** %38, align 8
  %365 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %365, i8** %38, align 8
  br label %354

366:                                              ; preds = %354
  br label %391

367:                                              ; preds = %344
  %368 = load i8*, i8** %15, align 8
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %370 = call i64 @json_streq(i8* %368, %struct.TYPE_11__* %369, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %390

372:                                              ; preds = %367
  %373 = load i8*, i8** %15, align 8
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %375 = call i32 @addfield(i8* %373, i8** %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %374)
  %376 = load i8*, i8** %29, align 8
  store i8* %376, i8** %38, align 8
  br label %377

377:                                              ; preds = %386, %372
  %378 = load i8*, i8** %38, align 8
  %379 = load i8, i8* %378, align 1
  %380 = icmp ne i8 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %377
  %382 = load i8*, i8** %38, align 8
  %383 = load i8, i8* %382, align 1
  %384 = call signext i8 @tolower(i8 signext %383)
  %385 = load i8*, i8** %38, align 8
  store i8 %384, i8* %385, align 1
  br label %386

386:                                              ; preds = %381
  %387 = load i8*, i8** %38, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %38, align 8
  br label %377

389:                                              ; preds = %377
  br label %390

390:                                              ; preds = %389, %367
  br label %391

391:                                              ; preds = %390, %366
  br label %392

392:                                              ; preds = %391, %340
  br label %393

393:                                              ; preds = %392, %331
  br label %394

394:                                              ; preds = %393, %322
  br label %395

395:                                              ; preds = %394, %313
  br label %396

396:                                              ; preds = %395, %304
  br label %397

397:                                              ; preds = %396, %291
  br label %398

398:                                              ; preds = %397, %250
  br label %399

399:                                              ; preds = %398, %238
  br label %400

400:                                              ; preds = %399, %226
  br label %401

401:                                              ; preds = %400, %217
  br label %402

402:                                              ; preds = %401, %207
  br label %403

403:                                              ; preds = %402, %193
  br label %404

404:                                              ; preds = %403, %182
  br label %405

405:                                              ; preds = %404, %173
  br label %406

406:                                              ; preds = %405, %156
  br label %407

407:                                              ; preds = %406, %140
  br label %408

408:                                              ; preds = %407, %134
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %13, align 4
  %411 = add nsw i32 %410, 2
  store i32 %411, i32* %13, align 4
  br label %83

412:                                              ; preds = %83
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %414 = icmp ne %struct.TYPE_11__* %413, null
  br i1 %414, label %415, label %434

415:                                              ; preds = %412
  %416 = load i8*, i8** %18, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %434

418:                                              ; preds = %415
  %419 = load i8*, i8** %18, align 8
  %420 = call i32 @strstr(i8* %419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %434, label %422

422:                                              ; preds = %418
  %423 = load i8*, i8** %15, align 8
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %425 = call i64 @json_streq(i8* %423, %struct.TYPE_11__* %424, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %422
  %428 = load i8*, i8** %15, align 8
  %429 = call i32 @addfield(i8* %428, i8** %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), %struct.TYPE_11__* null)
  br label %433

430:                                              ; preds = %422
  %431 = load i8*, i8** %15, align 8
  %432 = call i32 @addfield(i8* %431, i8** %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), %struct.TYPE_11__* null)
  br label %433

433:                                              ; preds = %430, %427
  br label %434

434:                                              ; preds = %433, %418, %415, %412
  %435 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %436 = load i64, i64* %30, align 8
  %437 = call i32 @snprintf(i8* %435, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i64 %436)
  %438 = load i8*, i8** %15, align 8
  %439 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %440 = call i32 @addfield(i8* %438, i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %439, %struct.TYPE_11__* null)
  %441 = load i8*, i8** %18, align 8
  %442 = icmp ne i8* %441, null
  br i1 %442, label %443, label %450

443:                                              ; preds = %434
  %444 = load i8*, i8** %21, align 8
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  %447 = load i8*, i8** %15, align 8
  %448 = load i8*, i8** %21, align 8
  %449 = call i32 @addfield(i8* %447, i8** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* %448, %struct.TYPE_11__* null)
  br label %450

450:                                              ; preds = %446, %443, %434
  %451 = load i8*, i8** %20, align 8
  %452 = icmp ne i8* %451, null
  br i1 %452, label %453, label %460

453:                                              ; preds = %450
  %454 = load i8*, i8** %21, align 8
  %455 = icmp ne i8* %454, null
  br i1 %455, label %456, label %460

456:                                              ; preds = %453
  %457 = load i8*, i8** %15, align 8
  %458 = load i8*, i8** %21, align 8
  %459 = call i32 @addfield(i8* %457, i8** %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* %458, %struct.TYPE_11__* null)
  br label %460

460:                                              ; preds = %456, %453, %450
  %461 = load i8*, i8** %23, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %463, label %467

463:                                              ; preds = %460
  %464 = load i8*, i8** %15, align 8
  %465 = load i8*, i8** %23, align 8
  %466 = call i32 @addfield(i8* %464, i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %465, %struct.TYPE_11__* null)
  br label %467

467:                                              ; preds = %463, %460
  %468 = load %struct.msrmap*, %struct.msrmap** %31, align 8
  %469 = icmp ne %struct.msrmap* %468, null
  br i1 %469, label %470, label %477

470:                                              ; preds = %467
  %471 = load i8*, i8** %15, align 8
  %472 = load %struct.msrmap*, %struct.msrmap** %31, align 8
  %473 = getelementptr inbounds %struct.msrmap, %struct.msrmap* %472, i32 0, i32 0
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %476 = call i32 @addfield(i8* %471, i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %474, %struct.TYPE_11__* %475)
  br label %477

477:                                              ; preds = %470, %467
  %478 = load i8*, i8** %19, align 8
  %479 = icmp ne i8* %478, null
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i8*, i8** %19, align 8
  %482 = call i32 @fixname(i8* %481)
  br label %483

483:                                              ; preds = %480, %477
  %484 = load i8*, i8** %29, align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %486, label %495

486:                                              ; preds = %483
  %487 = load i8*, i8** %5, align 8
  %488 = load i8*, i8** %29, align 8
  %489 = load i64, i64* %30, align 8
  %490 = call i32 @try_fixup(i8* %487, i8* %488, i8** %17, i8** %18, i8** %19, i8** %20, i8** %22, i8** %23, i8** %24, i8** %25, i8** %26, i8** %27, i8** %28, i64 %489)
  store i32 %490, i32* %8, align 4
  %491 = load i32, i32* %8, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %486
  br label %511

494:                                              ; preds = %486
  br label %495

495:                                              ; preds = %494, %483
  %496 = load i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %6, align 8
  %497 = load i8*, i8** %7, align 8
  %498 = load i8*, i8** %19, align 8
  %499 = load i8*, i8** %19, align 8
  %500 = load i8*, i8** %17, align 8
  %501 = call i8* @real_event(i8* %499, i8* %500)
  %502 = load i8*, i8** %18, align 8
  %503 = load i8*, i8** %20, align 8
  %504 = load i8*, i8** %22, align 8
  %505 = load i8*, i8** %25, align 8
  %506 = load i8*, i8** %24, align 8
  %507 = load i8*, i8** %26, align 8
  %508 = load i8*, i8** %27, align 8
  %509 = load i8*, i8** %28, align 8
  %510 = call i32 %496(i8* %497, i8* %498, i8* %501, i8* %502, i8* %503, i8* %504, i8* %505, i8* %506, i8* %507, i8* %508, i8* %509)
  store i32 %510, i32* %8, align 4
  br label %511

511:                                              ; preds = %495, %493
  %512 = load i8*, i8** %17, align 8
  %513 = call i32 @free(i8* %512)
  %514 = load i8*, i8** %18, align 8
  %515 = call i32 @free(i8* %514)
  %516 = load i8*, i8** %19, align 8
  %517 = call i32 @free(i8* %516)
  %518 = load i8*, i8** %20, align 8
  %519 = call i32 @free(i8* %518)
  %520 = load i8*, i8** %21, align 8
  %521 = call i32 @free(i8* %520)
  %522 = load i8*, i8** %22, align 8
  %523 = call i32 @free(i8* %522)
  %524 = load i8*, i8** %23, align 8
  %525 = call i32 @free(i8* %524)
  %526 = load i8*, i8** %24, align 8
  %527 = call i32 @free(i8* %526)
  %528 = load i8*, i8** %25, align 8
  %529 = call i32 @free(i8* %528)
  %530 = load i8*, i8** %26, align 8
  %531 = call i32 @free(i8* %530)
  %532 = load i8*, i8** %27, align 8
  %533 = call i32 @free(i8* %532)
  %534 = load i8*, i8** %28, align 8
  %535 = call i32 @free(i8* %534)
  %536 = load i8*, i8** %29, align 8
  %537 = call i32 @free(i8* %536)
  %538 = load i32, i32* %8, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %511
  br label %549

541:                                              ; preds = %511
  %542 = load i32, i32* %13, align 4
  %543 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %543, i64 %544
  store %struct.TYPE_11__* %545, %struct.TYPE_11__** %11, align 8
  br label %546

546:                                              ; preds = %541
  %547 = load i32, i32* %12, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %12, align 4
  br label %66

549:                                              ; preds = %540, %66
  %550 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %551 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %552 = ptrtoint %struct.TYPE_11__* %550 to i64
  %553 = ptrtoint %struct.TYPE_11__* %551 to i64
  %554 = sub i64 %552, %553
  %555 = sdiv exact i64 %554, 16
  %556 = load i32, i32* %14, align 4
  %557 = sext i32 %556 to i64
  %558 = icmp eq i64 %555, %557
  %559 = zext i1 %558 to i32
  %560 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %561 = call i32 @EXPECT(i32 %559, %struct.TYPE_11__* %560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %562

562:                                              ; preds = %549
  %563 = load i8*, i8** %15, align 8
  %564 = load i64, i64* %9, align 8
  %565 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %566 = call i32 @free_json(i8* %563, i64 %564, %struct.TYPE_11__* %565)
  %567 = load i32, i32* %8, align 4
  store i32 %567, i32* %4, align 4
  br label %568

568:                                              ; preds = %562, %52, %44
  %569 = load i32, i32* %4, align 4
  ret i32 %569
}

declare dso_local %struct.TYPE_11__* @parse_json(i8*, i8**, i64*, i32*) #1

declare dso_local i32 @EXPECT(i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i64 @json_streq(i8*, %struct.TYPE_11__*, i8*) #1

declare dso_local i64 @match_field(i8*, %struct.TYPE_11__*, i32, i8**, %struct.TYPE_11__*) #1

declare dso_local i32 @addfield(i8*, i8**, i8*, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fixdesc(i8*) #1

declare dso_local %struct.msrmap* @lookup_msr(i8*, %struct.TYPE_11__*) #1

declare dso_local i8* @field_to_perf(i32, i8*, %struct.TYPE_11__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @fixname(i8*) #1

declare dso_local i32 @try_fixup(i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i64) #1

declare dso_local i8* @real_event(i8*, i8*) #1

declare dso_local i32 @free_json(i8*, i64, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
