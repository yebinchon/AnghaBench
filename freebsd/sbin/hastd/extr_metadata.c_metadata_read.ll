; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_metadata.c_metadata_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_metadata.c_metadata_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i8*, i32, i32, i64, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ebuf = type { i32 }
%struct.nv = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Obtained info about %s.\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Unable to lock %s (operation not supported), but continuing.\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unable to lock %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Locked %s.\00", align 1
@METADATA_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Unable to allocate memory to read metadata\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to read metadata\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Metadata read from %s is invalid\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Provider %s is not part of resource %s.\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"datasize\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"extentsize\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"keepdirty\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"resuid\00", align 1
@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"localcnt\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"remotecnt\00", align 1
@HAST_ROLE_SECONDARY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"prevrole\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Unable to read metadata from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metadata_read(%struct.hast_resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hast_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ebuf*, align 8
  %8 = alloca %struct.nv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %14 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %63

17:                                               ; preds = %2
  %18 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @provinfo(%struct.hast_resource* %18, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %11, align 4
  br label %237

24:                                               ; preds = %17
  store i32 1, i32* %12, align 4
  %25 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %26 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %33 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LOCK_EX, align 4
  %36 = load i32, i32* @LOCK_NB, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @flock(i32 %34, i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %47 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %53 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %237

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %59 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %24
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* @METADATA_SIZE, align 4
  %65 = call %struct.ebuf* @ebuf_alloc(i32 %64)
  store %struct.ebuf* %65, %struct.ebuf** %7, align 8
  %66 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %67 = icmp eq %struct.ebuf* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %237

72:                                               ; preds = %63
  %73 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %74 = load i32, i32* @METADATA_SIZE, align 4
  %75 = call i32 @ebuf_add_tail(%struct.ebuf* %73, i32* null, i32 %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @errno, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %82 = call i32 @ebuf_free(%struct.ebuf* %81)
  br label %237

83:                                               ; preds = %72
  %84 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %85 = call i8* @ebuf_data(%struct.ebuf* %84, i32* null)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @PJDLOG_ASSERT(i32 %88)
  %90 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %91 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @METADATA_SIZE, align 4
  %95 = call i32 @pread(i32 %92, i8* %93, i32 %94, i32 0)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %102, label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @METADATA_SIZE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98, %83
  %103 = load i32, i32* @errno, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* @LOG_ERR, align 4
  %105 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %107 = call i32 @ebuf_free(%struct.ebuf* %106)
  br label %237

108:                                              ; preds = %98
  %109 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %110 = call %struct.nv* @nv_ntoh(%struct.ebuf* %109)
  store %struct.nv* %110, %struct.nv** %8, align 8
  %111 = load %struct.nv*, %struct.nv** %8, align 8
  %112 = icmp eq %struct.nv* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* @errno, align 4
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* @LOG_ERR, align 4
  %116 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %117 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = load %struct.ebuf*, %struct.ebuf** %7, align 8
  %121 = call i32 @ebuf_free(%struct.ebuf* %120)
  br label %237

122:                                              ; preds = %108
  %123 = load %struct.nv*, %struct.nv** %8, align 8
  %124 = call i8* @nv_get_string(%struct.nv* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load i8*, i8** %10, align 8
  %129 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %130 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i8* %128, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %136 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %139 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @pjdlog_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %137, i8* %140)
  %142 = load %struct.nv*, %struct.nv** %8, align 8
  %143 = call i32 @nv_free(%struct.nv* %142)
  br label %237

144:                                              ; preds = %127, %122
  %145 = load %struct.nv*, %struct.nv** %8, align 8
  %146 = call i8* @nv_get_uint64(%struct.nv* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %147 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %148 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %147, i32 0, i32 13
  store i8* %146, i8** %148, align 8
  %149 = load %struct.nv*, %struct.nv** %8, align 8
  %150 = call i64 @nv_get_uint32(%struct.nv* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %151 = trunc i64 %150 to i32
  %152 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %153 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.nv*, %struct.nv** %8, align 8
  %155 = call i64 @nv_get_uint32(%struct.nv* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %156 = trunc i64 %155 to i32
  %157 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %158 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.nv*, %struct.nv** %8, align 8
  %160 = call i8* @nv_get_uint64(%struct.nv* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %161 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %162 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %161, i32 0, i32 12
  store i8* %160, i8** %162, align 8
  %163 = load %struct.nv*, %struct.nv** %8, align 8
  %164 = call i8* @nv_get_uint64(%struct.nv* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %165 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %166 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %165, i32 0, i32 11
  store i8* %164, i8** %166, align 8
  %167 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %168 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %144
  %173 = load %struct.nv*, %struct.nv** %8, align 8
  %174 = call i8* @nv_get_uint64(%struct.nv* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %175 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %176 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %175, i32 0, i32 10
  store i8* %174, i8** %176, align 8
  %177 = load %struct.nv*, %struct.nv** %8, align 8
  %178 = call i8* @nv_get_uint64(%struct.nv* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %179 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %180 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %179, i32 0, i32 9
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %172, %144
  %182 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %183 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load %struct.nv*, %struct.nv** %8, align 8
  %189 = call i8* @nv_get_uint64(%struct.nv* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %190 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %191 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %190, i32 0, i32 8
  store i8* %189, i8** %191, align 8
  %192 = load %struct.nv*, %struct.nv** %8, align 8
  %193 = call i8* @nv_get_uint64(%struct.nv* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %194 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %195 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %194, i32 0, i32 7
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %187, %181
  %197 = load %struct.nv*, %struct.nv** %8, align 8
  %198 = call i8* @nv_get_string(%struct.nv* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i8* %198, i8** %10, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %219

201:                                              ; preds = %196
  %202 = load i8*, i8** %10, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %207 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %208 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %207, i32 0, i32 6
  store i64 %206, i64* %208, align 8
  br label %218

209:                                              ; preds = %201
  %210 = load i8*, i8** %10, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %215 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %216 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %215, i32 0, i32 6
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %213, %209
  br label %218

218:                                              ; preds = %217, %205
  br label %219

219:                                              ; preds = %218, %196
  %220 = load %struct.nv*, %struct.nv** %8, align 8
  %221 = call i64 @nv_error(%struct.nv* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %219
  %224 = load %struct.nv*, %struct.nv** %8, align 8
  %225 = call i64 @nv_error(%struct.nv* %224)
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %11, align 4
  store i32 %226, i32* @errno, align 4
  %227 = load i32, i32* @LOG_ERR, align 4
  %228 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %229 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %227, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %230)
  %232 = load %struct.nv*, %struct.nv** %8, align 8
  %233 = call i32 @nv_free(%struct.nv* %232)
  br label %237

234:                                              ; preds = %219
  %235 = load %struct.nv*, %struct.nv** %8, align 8
  %236 = call i32 @nv_free(%struct.nv* %235)
  store i32 0, i32* %3, align 4
  br label %249

237:                                              ; preds = %223, %134, %113, %102, %77, %68, %50, %22
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %242 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @close(i32 %243)
  %245 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %246 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %245, i32 0, i32 0
  store i32 -1, i32* %246, align 8
  br label %247

247:                                              ; preds = %240, %237
  %248 = load i32, i32* %11, align 4
  store i32 %248, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %249

249:                                              ; preds = %247, %234
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @provinfo(%struct.hast_resource*, i32) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @pjdlog_warning(i8*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #1

declare dso_local %struct.ebuf* @ebuf_alloc(i32) #1

declare dso_local i32 @ebuf_add_tail(%struct.ebuf*, i32*, i32) #1

declare dso_local i32 @ebuf_free(%struct.ebuf*) #1

declare dso_local i8* @ebuf_data(%struct.ebuf*, i32*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local %struct.nv* @nv_ntoh(%struct.ebuf*) #1

declare dso_local i8* @nv_get_string(%struct.nv*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pjdlog_error(i8*, i32, i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i8* @nv_get_uint64(%struct.nv*, i8*) #1

declare dso_local i64 @nv_get_uint32(%struct.nv*, i8*) #1

declare dso_local i64 @nv_error(%struct.nv*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
