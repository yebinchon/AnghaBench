; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_init_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_init_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i64, i32, i64, i32 }
%struct.nv = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"datasize\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"extentsize\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resuid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"localcnt\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"remotecnt\00", align 1
@METADATA_SIZE = common dso_local global i64 0, align 8
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Unable to allocate memory (%zu bytes) for activemap.\00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"virgin\00", align 1
@HAST_SYNCSRC_PRIMARY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"syncsrc\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Resource unique ID mismatch (primary=%ju, secondary=%ju).\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Unable to send response to %s\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"Unable to read activemap\00", align 1
@HAST_SYNCSRC_SECONDARY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Split-brain detected, exiting.\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Split-brain condition!\00", align 1
@EVENT_SPLITBRAIN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [126 x i8] c"This should never happen, asking for full synchronization (primary(local=%ju, remote=%ju), secondary(local=%ju, remote=%ju)).\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"mapsize\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Unable to send activemap to %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hast_resource*, %struct.nv*)* @init_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_remote(%struct.hast_resource* %0, %struct.nv* %1) #0 {
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  store %struct.hast_resource* %0, %struct.hast_resource** %3, align 8
  store %struct.nv* %1, %struct.nv** %4, align 8
  %10 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %10, %struct.nv** %6, align 8
  %11 = load %struct.nv*, %struct.nv** %6, align 8
  %12 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %13 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %12, i32 0, i32 11
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @nv_add_int64(%struct.nv* %11, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.nv*, %struct.nv** %6, align 8
  %18 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %19 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @nv_add_int32(%struct.nv* %17, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.nv*, %struct.nv** %4, align 8
  %24 = call i8* @nv_get_uint64(%struct.nv* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load %struct.nv*, %struct.nv** %4, align 8
  %27 = call i8* @nv_get_uint64(%struct.nv* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %29 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.nv*, %struct.nv** %4, align 8
  %31 = call i8* @nv_get_uint64(%struct.nv* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %33 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nv*, %struct.nv** %6, align 8
  %35 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %36 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @nv_add_uint64(%struct.nv* %34, i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.nv*, %struct.nv** %6, align 8
  %40 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %41 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @nv_add_uint64(%struct.nv* %39, i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %45 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @METADATA_SIZE, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %50 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %53 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @activemap_calc_ondisk_size(i64 %48, i64 %51, i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i8* @malloc(i64 %56)
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load i32, i32* @EX_TEMPFAIL, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @pjdlog_exitx(i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %2
  %65 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %66 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %71 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @PJDLOG_ASSERT(i32 %74)
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %78 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %80 = call i32 @metadata_write(%struct.hast_resource* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* @EX_NOINPUT, align 4
  %84 = call i32 @exit(i32 %83) #3
  unreachable

85:                                               ; preds = %69
  %86 = load %struct.nv*, %struct.nv** %4, align 8
  %87 = call i64 @nv_exists(%struct.nv* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @free(i8* %90)
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %96

92:                                               ; preds = %85
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @memset(i8* %93, i32 255, i64 %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.nv*, %struct.nv** %6, align 8
  %98 = call i32 @nv_add_int8(%struct.nv* %97, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.nv*, %struct.nv** %6, align 8
  %100 = load i32, i32* @HAST_SYNCSRC_PRIMARY, align 4
  %101 = call i32 @nv_add_uint8(%struct.nv* %99, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %342

102:                                              ; preds = %64
  %103 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %104 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @free(i8* %109)
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %112 = load i64, i64* %5, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %115 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @snprintf(i8* %111, i32 256, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %113, i32 %117)
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %120 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  %121 = load %struct.nv*, %struct.nv** %6, align 8
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %123 = call i32 @nv_add_string(%struct.nv* %121, i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %124 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %125 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %126 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nv*, %struct.nv** %6, align 8
  %129 = call i32 @hast_proto_send(%struct.hast_resource* %124, i32 %127, %struct.nv* %128, i8* null, i64 0)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %137

131:                                              ; preds = %108
  %132 = load i32, i32* @EX_TEMPFAIL, align 4
  %133 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %134 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %108
  %138 = load %struct.nv*, %struct.nv** %6, align 8
  %139 = call i32 @nv_free(%struct.nv* %138)
  %140 = load i32, i32* @EX_CONFIG, align 4
  %141 = call i32 @exit(i32 %140) #3
  unreachable

142:                                              ; preds = %102
  %143 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %144 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %147 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ugt i8* %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %142
  %151 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %152 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %155 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %153, %156
  br i1 %157, label %190, label %158

158:                                              ; preds = %150, %142
  %159 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %160 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %163 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %162, i32 0, i32 5
  %164 = load i8*, i8** %163, align 8
  %165 = icmp eq i8* %161, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %168 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %171 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %170, i32 0, i32 6
  %172 = load i8*, i8** %171, align 8
  %173 = icmp eq i8* %169, %172
  br i1 %173, label %190, label %174

174:                                              ; preds = %166, %158
  %175 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %176 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %179 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = icmp eq i8* %177, %180
  br i1 %181, label %182, label %228

182:                                              ; preds = %174
  %183 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %184 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %187 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %186, i32 0, i32 6
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ult i8* %185, %188
  br i1 %189, label %190, label %228

190:                                              ; preds = %182, %166, %150
  %191 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %192 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* @METADATA_SIZE, align 8
  %197 = call i64 @pread(i32 %193, i8* %194, i64 %195, i64 %196)
  %198 = load i64, i64* %8, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %190
  %201 = load i32, i32* @LOG_ERR, align 4
  %202 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %190
  %204 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %205 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %208 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %207, i32 0, i32 5
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ugt i8* %206, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %203
  %212 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %213 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %216 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %215, i32 0, i32 6
  %217 = load i8*, i8** %216, align 8
  %218 = icmp eq i8* %214, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %211
  %220 = load %struct.nv*, %struct.nv** %6, align 8
  %221 = load i32, i32* @HAST_SYNCSRC_SECONDARY, align 4
  %222 = call i32 @nv_add_uint8(%struct.nv* %220, i32 %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %227

223:                                              ; preds = %211, %203
  %224 = load %struct.nv*, %struct.nv** %6, align 8
  %225 = load i32, i32* @HAST_SYNCSRC_PRIMARY, align 4
  %226 = call i32 @nv_add_uint8(%struct.nv* %224, i32 %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %227

227:                                              ; preds = %223, %219
  br label %340

228:                                              ; preds = %182, %174
  %229 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %230 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %233 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %232, i32 0, i32 5
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ugt i8* %231, %234
  br i1 %235, label %236, label %271

236:                                              ; preds = %228
  %237 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %238 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %237, i32 0, i32 6
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %241 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ugt i8* %239, %242
  br i1 %243, label %244, label %271

244:                                              ; preds = %236
  %245 = load i8*, i8** %7, align 8
  %246 = call i32 @free(i8* %245)
  %247 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %248 = load %struct.nv*, %struct.nv** %6, align 8
  %249 = call i32 @nv_add_string(%struct.nv* %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %250 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %251 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %252 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.nv*, %struct.nv** %6, align 8
  %255 = call i32 @hast_proto_send(%struct.hast_resource* %250, i32 %253, %struct.nv* %254, i8* null, i64 0)
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %257, label %263

257:                                              ; preds = %244
  %258 = load i32, i32* @EX_TEMPFAIL, align 4
  %259 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %260 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %258, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %257, %244
  %264 = load %struct.nv*, %struct.nv** %6, align 8
  %265 = call i32 @nv_free(%struct.nv* %264)
  %266 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %267 = load i32, i32* @EVENT_SPLITBRAIN, align 4
  %268 = call i32 @event_send(%struct.hast_resource* %266, i32 %267)
  %269 = load i32, i32* @EX_CONFIG, align 4
  %270 = call i32 @exit(i32 %269) #3
  unreachable

271:                                              ; preds = %236, %228
  %272 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %273 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %272, i32 0, i32 4
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %276 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %275, i32 0, i32 5
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ult i8* %274, %277
  br i1 %278, label %287, label %279

279:                                              ; preds = %271
  %280 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %281 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %280, i32 0, i32 6
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %284 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %283, i32 0, i32 3
  %285 = load i8*, i8** %284, align 8
  %286 = icmp ult i8* %282, %285
  br label %287

287:                                              ; preds = %279, %271
  %288 = phi i1 [ true, %271 ], [ %286, %279 ]
  %289 = zext i1 %288 to i32
  %290 = call i32 @PJDLOG_ASSERT(i32 %289)
  %291 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %292 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %291, i32 0, i32 9
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @METADATA_SIZE, align 8
  %295 = sub nsw i64 %293, %294
  %296 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %297 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %296, i32 0, i32 8
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %300 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = call i64 @activemap_calc_ondisk_size(i64 %295, i64 %298, i32 %301)
  store i64 %302, i64* %8, align 8
  %303 = load i8*, i8** %7, align 8
  %304 = load i64, i64* %8, align 8
  %305 = call i32 @memset(i8* %303, i32 255, i64 %304)
  %306 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %307 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %306, i32 0, i32 4
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %310 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ugt i8* %308, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %287
  %314 = load %struct.nv*, %struct.nv** %6, align 8
  %315 = load i32, i32* @HAST_SYNCSRC_SECONDARY, align 4
  %316 = call i32 @nv_add_uint8(%struct.nv* %314, i32 %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %321

317:                                              ; preds = %287
  %318 = load %struct.nv*, %struct.nv** %6, align 8
  %319 = load i32, i32* @HAST_SYNCSRC_PRIMARY, align 4
  %320 = call i32 @nv_add_uint8(%struct.nv* %318, i32 %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %321

321:                                              ; preds = %317, %313
  %322 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %323 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %322, i32 0, i32 6
  %324 = load i8*, i8** %323, align 8
  %325 = ptrtoint i8* %324 to i32
  %326 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %327 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %326, i32 0, i32 5
  %328 = load i8*, i8** %327, align 8
  %329 = ptrtoint i8* %328 to i32
  %330 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %331 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %330, i32 0, i32 4
  %332 = load i8*, i8** %331, align 8
  %333 = ptrtoint i8* %332 to i32
  %334 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %335 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = ptrtoint i8* %336 to i32
  %338 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.15, i64 0, i64 0), i32 %325, i32 %329, i32 %333, i32 %337)
  br label %339

339:                                              ; preds = %321
  br label %340

340:                                              ; preds = %339, %227
  br label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341, %96
  %343 = load %struct.nv*, %struct.nv** %6, align 8
  %344 = load i64, i64* %8, align 8
  %345 = trunc i64 %344 to i32
  %346 = call i32 @nv_add_uint32(%struct.nv* %343, i32 %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %347 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %348 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %349 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.nv*, %struct.nv** %6, align 8
  %352 = load i8*, i8** %7, align 8
  %353 = load i64, i64* %8, align 8
  %354 = call i32 @hast_proto_send(%struct.hast_resource* %347, i32 %350, %struct.nv* %351, i8* %352, i64 %353)
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %356, label %362

356:                                              ; preds = %342
  %357 = load i32, i32* @EX_TEMPFAIL, align 4
  %358 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %359 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %357, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %360)
  br label %362

362:                                              ; preds = %356, %342
  %363 = load i8*, i8** %7, align 8
  %364 = icmp ne i8* %363, null
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = load i8*, i8** %7, align 8
  %367 = call i32 @free(i8* %366)
  br label %368

368:                                              ; preds = %365, %362
  %369 = load %struct.nv*, %struct.nv** %6, align 8
  %370 = call i32 @nv_free(%struct.nv* %369)
  ret void
}

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_int64(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_int32(%struct.nv*, i32, i8*) #1

declare dso_local i8* @nv_get_uint64(%struct.nv*, i8*) #1

declare dso_local i32 @nv_add_uint64(%struct.nv*, i8*, i8*) #1

declare dso_local i64 @activemap_calc_ondisk_size(i64, i64, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i64) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @metadata_write(%struct.hast_resource*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @nv_exists(%struct.nv*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @nv_add_int8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @pjdlog_error(i8*, ...) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i8*, i8*) #1

declare dso_local i32 @hast_proto_send(%struct.hast_resource*, i32, %struct.nv*, i8*, i64) #1

declare dso_local i32 @pjdlog_exit(i32, i8*, ...) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @event_send(%struct.hast_resource*, i32) #1

declare dso_local i32 @pjdlog_warning(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nv_add_uint32(%struct.nv*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
