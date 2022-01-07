; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_modify_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_modify_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i8*, i32, %struct.TYPE_22__, i32, i8* }
%struct.TYPE_22__ = type { i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"address required\00", align 1
@IP_FW_TABLE_XADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Adding record failed\00", align 1
@IP_FW_TABLE_XDEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Deleting record failed\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory for all entries\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"DEPRECATED: inserting data into non-existent table %s. (auto-created)\00", align 1
@IPFW_TF_UPDATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"updated\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"notfound\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%s(reverted): \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@errno = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"record already exists\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"limit hit\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"table not found\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"record not found\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"table is locked\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32, i8**, i32, i32, i32, i32)* @table_modify_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_modify_record(%struct.TYPE_24__* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EX_USAGE, align 4
  %33 = call i32 (i32, i8*, ...) @errx(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %7
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @IP_FW_TABLE_XADD, align 4
  store i32 %38, i32* %21, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @IP_FW_TABLE_XDEL, align 4
  store i32 %40, i32* %21, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %46, 1
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %22, align 4
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @memset(%struct.TYPE_23__* %16, i32 0, i32 32)
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %17, align 8
  br label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %22, align 4
  %58 = call %struct.TYPE_23__* @calloc(i32 %57, i32 32)
  store %struct.TYPE_23__* %58, %struct.TYPE_23__** %17, align 8
  %59 = icmp eq %struct.TYPE_23__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EX_OSERR, align 4
  %62 = call i32 (i32, i8*, ...) @errx(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %15, align 8
  %66 = call i32 @memset(%struct.TYPE_23__* %18, i32 0, i32 32)
  store i32 0, i32* %22, align 4
  br label %67

67:                                               ; preds = %140, %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %145

70:                                               ; preds = %67
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %73 = load i8**, i8*** %10, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @tentry_fill_key(%struct.TYPE_24__* %71, %struct.TYPE_23__* %72, i8* %74, i32 %75, i8** %19, i32* %20, %struct.TYPE_23__* %18)
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %70
  %84 = load i8*, i8** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* %20, align 4
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @strlcpy(i8* %89, i32 %93, i32 8)
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %83
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %103 = call i32 @table_do_create(%struct.TYPE_24__* %102, %struct.TYPE_23__* %18)
  br label %104

104:                                              ; preds = %101, %70
  %105 = load i8*, i8** %19, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %9, align 4
  %111 = load i8**, i8*** %10, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %104
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %121 = load i8**, i8*** %10, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @tentry_fill_value(%struct.TYPE_24__* %119, %struct.TYPE_23__* %120, i8* %122, i8* %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  %128 = load i8**, i8*** %10, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %10, align 8
  br label %130

130:                                              ; preds = %118, %115, %104
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32, i32* @IPFW_TF_UPDATE, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %134
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %130
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %22, align 4
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 1
  store %struct.TYPE_23__* %144, %struct.TYPE_23__** %15, align 8
  br label %67

145:                                              ; preds = %67
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @table_do_modify_record(i32 %146, %struct.TYPE_24__* %147, %struct.TYPE_23__* %148, i32 %149, i32 %150)
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %23, align 4
  %156 = icmp eq i32 %155, 139
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %23, align 4
  %162 = icmp eq i32 %161, 137
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %163, %157, %145
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %171 = icmp ne %struct.TYPE_23__* %170, %16
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %174 = call i32 @free(%struct.TYPE_23__* %173)
  br label %175

175:                                              ; preds = %172, %169
  br label %245

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %163, %160
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %178, %struct.TYPE_23__** %15, align 8
  store i32 0, i32* %24, align 4
  br label %179

179:                                              ; preds = %214, %177
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %22, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %219

183:                                              ; preds = %179
  store i32 0, i32* %25, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %195 [
    i32 135, label %187
    i32 134, label %188
    i32 128, label %189
    i32 130, label %190
    i32 133, label %191
    i32 129, label %192
    i32 132, label %193
    i32 131, label %194
  ]

187:                                              ; preds = %183
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %28, align 8
  br label %196

188:                                              ; preds = %183
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %28, align 8
  br label %196

189:                                              ; preds = %183
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %28, align 8
  br label %196

190:                                              ; preds = %183
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  store i32 1, i32* %25, align 4
  br label %196

191:                                              ; preds = %183
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %28, align 8
  store i32 1, i32* %25, align 4
  br label %196

192:                                              ; preds = %183
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %28, align 8
  store i32 1, i32* %25, align 4
  br label %196

193:                                              ; preds = %183
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %28, align 8
  store i32 1, i32* %25, align 4
  br label %196

194:                                              ; preds = %183
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %28, align 8
  store i32 1, i32* %25, align 4
  br label %196

195:                                              ; preds = %183
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %28, align 8
  store i32 1, i32* %25, align 4
  br label %196

196:                                              ; preds = %195, %194, %193, %192, %191, %190, %189, %188, %187
  %197 = load i32, i32* %23, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* %25, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i8*, i8** %28, align 8
  %207 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %206)
  br label %211

208:                                              ; preds = %202, %199, %196
  %209 = load i8*, i8** %28, align 8
  %210 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %208, %205
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %213 = call i32 @table_show_entry(%struct.TYPE_23__* %18, %struct.TYPE_23__* %212)
  br label %214

214:                                              ; preds = %211
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 1
  store %struct.TYPE_23__* %216, %struct.TYPE_23__** %15, align 8
  %217 = load i32, i32* %24, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %24, align 4
  br label %179

219:                                              ; preds = %179
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %221 = icmp ne %struct.TYPE_23__* %220, %16
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %224 = call i32 @free(%struct.TYPE_23__* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %23, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %245

229:                                              ; preds = %225
  %230 = load i32, i32* @errno, align 4
  store i32 %230, i32* %23, align 4
  %231 = load i32, i32* %23, align 4
  switch i32 %231, label %237 [
    i32 139, label %232
    i32 138, label %233
    i32 136, label %234
    i32 137, label %235
    i32 140, label %236
  ]

232:                                              ; preds = %229
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8** %27, align 8
  br label %240

233:                                              ; preds = %229
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %27, align 8
  br label %240

234:                                              ; preds = %229
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %27, align 8
  br label %240

235:                                              ; preds = %229
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %27, align 8
  br label %240

236:                                              ; preds = %229
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %27, align 8
  br label %240

237:                                              ; preds = %229
  %238 = load i32, i32* %23, align 4
  %239 = call i8* @strerror(i32 %238)
  store i8* %239, i8** %27, align 8
  br label %240

240:                                              ; preds = %237, %236, %235, %234, %233, %232
  %241 = load i32, i32* @EX_OSERR, align 4
  %242 = load i8*, i8** %26, align 8
  %243 = load i8*, i8** %27, align 8
  %244 = call i32 (i32, i8*, ...) @errx(i32 %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %242, i8* %243)
  br label %245

245:                                              ; preds = %240, %228, %175
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @calloc(i32, i32) #1

declare dso_local i32 @tentry_fill_key(%struct.TYPE_24__*, %struct.TYPE_23__*, i8*, i32, i8**, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @table_do_create(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @tentry_fill_value(%struct.TYPE_24__*, %struct.TYPE_23__*, i8*, i8*, i32) #1

declare dso_local i32 @table_do_modify_record(i32, %struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @table_show_entry(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
