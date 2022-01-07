; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_dump_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DELETE FROM sqlite_sequence;\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sqlite_stat?\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ANALYZE sqlite_master;\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CREATE VIRTUAL TABLE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"PRAGMA writable_schema=ON;\0A\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" FROM \00", align 1
@MODE_Insert = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"/****** CORRUPTION ERROR *******/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @dump_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_callback(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %14, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = call i32 @UNUSED_PARAMETER(i8** %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %4
  store i32 0, i32* %5, align 4
  br label %271

32:                                               ; preds = %28
  %33 = load i8**, i8*** %8, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @raw_printf(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %101

50:                                               ; preds = %32
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @sqlite3_strglob(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @raw_printf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %100

59:                                               ; preds = %50
  %60 = load i8*, i8** %11, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %271

64:                                               ; preds = %59
  %65 = load i8*, i8** %13, align 8
  %66 = call i64 @strncmp(i8* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 20)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @raw_printf(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0), i8* %81, i8* %82, i8* %83)
  store i8* %84, i8** %15, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @utf8_printf(i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @sqlite3_free(i8* %90)
  store i32 0, i32* %5, align 4
  br label %271

92:                                               ; preds = %64
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @printSchemaLine(i32 %95, i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %54
  br label %101

101:                                              ; preds = %100, %45
  %102 = load i8*, i8** %12, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %270

105:                                              ; preds = %101
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i8** @tableColumnList(%struct.TYPE_9__* %106, i8* %107)
  store i8** %108, i8*** %18, align 8
  %109 = load i8**, i8*** %18, align 8
  %110 = icmp eq i8** %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  store i32 0, i32* %5, align 4
  br label %271

116:                                              ; preds = %105
  %117 = call i32 @initText(%struct.TYPE_8__* %17)
  %118 = load i8*, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @quoteChar(i8* %119)
  %121 = call i32 @appendText(%struct.TYPE_8__* %17, i8* %118, i32 %120)
  %122 = load i8**, i8*** %18, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %158

126:                                              ; preds = %116
  %127 = call i32 @appendText(%struct.TYPE_8__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %128 = load i8**, i8*** %18, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @appendText(%struct.TYPE_8__* %17, i8* %130, i32 0)
  store i32 1, i32* %19, align 4
  br label %132

132:                                              ; preds = %153, %126
  %133 = load i8**, i8*** %18, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %156

139:                                              ; preds = %132
  %140 = call i32 @appendText(%struct.TYPE_8__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %141 = load i8**, i8*** %18, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** %18, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @quoteChar(i8* %150)
  %152 = call i32 @appendText(%struct.TYPE_8__* %17, i8* %145, i32 %151)
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %132

156:                                              ; preds = %132
  %157 = call i32 @appendText(%struct.TYPE_8__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 0)
  br label %158

158:                                              ; preds = %156, %116
  %159 = call i32 @initText(%struct.TYPE_8__* %16)
  %160 = call i32 @appendText(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %161 = load i8**, i8*** %18, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i8**, i8*** %18, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @appendText(%struct.TYPE_8__* %16, i8* %168, i32 0)
  %170 = call i32 @appendText(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 0)
  br label %171

171:                                              ; preds = %165, %158
  store i32 1, i32* %19, align 4
  br label %172

172:                                              ; preds = %202, %171
  %173 = load i8**, i8*** %18, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %205

179:                                              ; preds = %172
  %180 = load i8**, i8*** %18, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %18, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @quoteChar(i8* %189)
  %191 = call i32 @appendText(%struct.TYPE_8__* %16, i8* %184, i32 %190)
  %192 = load i8**, i8*** %18, align 8
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %192, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %179
  %200 = call i32 @appendText(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 0)
  br label %201

201:                                              ; preds = %199, %179
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %19, align 4
  br label %172

205:                                              ; preds = %172
  %206 = load i8**, i8*** %18, align 8
  %207 = call i32 @freeColumnList(i8** %206)
  %208 = call i32 @appendText(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %209 = load i8*, i8** %11, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = call i32 @quoteChar(i8* %210)
  %212 = call i32 @appendText(%struct.TYPE_8__* %16, i8* %209, i32 %211)
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** %20, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %21, align 4
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* @MODE_Insert, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  store i32 %223, i32* %227, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @shell_exec(%struct.TYPE_9__* %228, i8* %230, i32 0)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = and i32 %232, 255
  %234 = load i32, i32* @SQLITE_CORRUPT, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %253

236:                                              ; preds = %205
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @raw_printf(i32 %239, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @toggleSelectOrder(i32 %243)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @shell_exec(%struct.TYPE_9__* %245, i8* %247, i32 0)
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @toggleSelectOrder(i32 %251)
  br label %253

253:                                              ; preds = %236, %205
  %254 = load i8*, i8** %20, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  store i8* %254, i8** %256, align 8
  %257 = load i32, i32* %21, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = call i32 @freeText(%struct.TYPE_8__* %17)
  %261 = call i32 @freeText(%struct.TYPE_8__* %16)
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %253
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %264, %253
  br label %270

270:                                              ; preds = %269, %101
  store i32 0, i32* %5, align 4
  br label %271

271:                                              ; preds = %270, %111, %80, %63, %31
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @UNUSED_PARAMETER(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @raw_printf(i32, i8*) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @printSchemaLine(i32, i8*, i8*) #1

declare dso_local i8** @tableColumnList(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @initText(%struct.TYPE_8__*) #1

declare dso_local i32 @appendText(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @quoteChar(i8*) #1

declare dso_local i32 @freeColumnList(i8**) #1

declare dso_local i32 @shell_exec(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @toggleSelectOrder(i32) #1

declare dso_local i32 @freeText(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
