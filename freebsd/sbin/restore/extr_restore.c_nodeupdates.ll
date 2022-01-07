; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_nodeupdates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_nodeupdates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32, %struct.entry*, i32, %struct.entry* }

@GOOD = common dso_local global i64 0, align 8
@dumpmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"corrupted symbol table\0A\00", align 1
@LINK = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"name/inode conflict, mktempname %s\0A\00", align 1
@KEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"[%s] %s: %s\0A\00", align 1
@NODE = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@LEAF = common dso_local global i32 0, align 4
@EXTRACT = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"deleted hard link %s to directory %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"[%s] %s: %s|LINK\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot KEEP and change modes\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"NODE and LEAF links to same inode\00", align 1
@TMPNAME = common dso_local global i32 0, align 4
@removelist = common dso_local global %struct.entry* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"[%s] %s: Extraneous name\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: (inode %ju) not found on tape\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"[%s] %s: inconsistent state\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"[%s] %s: impossible state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nodeupdates(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.entry*, align 8
  %9 = alloca %struct.entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* @GOOD, align 8
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @dumpmap, align 4
  %16 = call i64 @TSTINO(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.entry* @lookupname(i8* %22)
  store %struct.entry* %23, %struct.entry** %8, align 8
  %24 = load %struct.entry*, %struct.entry** %8, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.entry*, %struct.entry** %8, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.entry* @lookupino(i32 %31)
  store %struct.entry* %32, %struct.entry** %9, align 8
  %33 = load %struct.entry*, %struct.entry** %9, align 8
  %34 = icmp eq %struct.entry* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %26
  %38 = load %struct.entry*, %struct.entry** %9, align 8
  %39 = load %struct.entry*, %struct.entry** %8, align 8
  %40 = icmp ne %struct.entry* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @LINK, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.entry* @lookupino(i32 %45)
  store %struct.entry* %46, %struct.entry** %9, align 8
  %47 = load %struct.entry*, %struct.entry** %9, align 8
  %48 = icmp ne %struct.entry* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, 2
  store i32 %51, i32* %12, align 4
  %52 = load %struct.entry*, %struct.entry** %9, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 4
  %54 = load %struct.entry*, %struct.entry** %53, align 8
  store %struct.entry* %54, %struct.entry** %7, align 8
  br label %55

55:                                               ; preds = %65, %49
  %56 = load %struct.entry*, %struct.entry** %7, align 8
  %57 = icmp ne %struct.entry* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.entry*, %struct.entry** %7, align 8
  %60 = load %struct.entry*, %struct.entry** %8, align 8
  %61 = icmp eq %struct.entry* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.entry*, %struct.entry** %7, align 8
  store %struct.entry* %63, %struct.entry** %9, align 8
  br label %69

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.entry*, %struct.entry** %7, align 8
  %67 = getelementptr inbounds %struct.entry, %struct.entry* %66, i32 0, i32 4
  %68 = load %struct.entry*, %struct.entry** %67, align 8
  store %struct.entry* %68, %struct.entry** %7, align 8
  br label %55

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 6
  %73 = icmp eq i32 %72, 6
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load %struct.entry*, %struct.entry** %9, align 8
  %76 = load %struct.entry*, %struct.entry** %8, align 8
  %77 = icmp ne %struct.entry* %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @LINK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.entry*, %struct.entry** %8, align 8
  %84 = call i32 @removeleaf(%struct.entry* %83)
  %85 = load %struct.entry*, %struct.entry** %8, align 8
  %86 = call i32 @freeentry(%struct.entry* %85)
  br label %94

87:                                               ; preds = %78
  %88 = load i32, i32* @stdout, align 4
  %89 = load %struct.entry*, %struct.entry** %8, align 8
  %90 = call i8* @myname(%struct.entry* %89)
  %91 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load %struct.entry*, %struct.entry** %8, align 8
  %93 = call i32 @mktempname(%struct.entry* %92)
  br label %94

94:                                               ; preds = %87, %82
  store %struct.entry* null, %struct.entry** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = and i32 %95, -5
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %74, %70
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 2
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.entry*, %struct.entry** %9, align 8
  %107 = getelementptr inbounds %struct.entry, %struct.entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %105, %101
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.entry*, %struct.entry** %8, align 8
  %117 = getelementptr inbounds %struct.entry, %struct.entry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %105
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, 8
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %115, %111, %97
  %125 = load i32, i32* %12, align 4
  switch i32 %125, label %424 [
    i32 6, label %126
    i32 5, label %139
    i32 13, label %139
    i32 1, label %152
    i32 3, label %178
    i32 2, label %196
    i32 7, label %255
    i32 11, label %318
    i32 15, label %318
    i32 4, label %403
    i32 0, label %410
    i32 14, label %417
    i32 12, label %417
    i32 10, label %417
    i32 9, label %423
    i32 8, label %423
  ]

126:                                              ; preds = %124
  %127 = load i32, i32* @KEEP, align 4
  %128 = load %struct.entry*, %struct.entry** %9, align 8
  %129 = getelementptr inbounds %struct.entry, %struct.entry* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @stdout, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i8* @keyval(i32 %133)
  %135 = load i8*, i8** %4, align 8
  %136 = load %struct.entry*, %struct.entry** %9, align 8
  %137 = call i32 @flagvalues(%struct.entry* %136)
  %138 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %134, i8* %135, i32 %137)
  br label %429

139:                                              ; preds = %124, %124
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @LINK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.entry*, %struct.entry** %8, align 8
  %145 = call i32 @removeleaf(%struct.entry* %144)
  %146 = load %struct.entry*, %struct.entry** %8, align 8
  %147 = call i32 @freeentry(%struct.entry* %146)
  br label %151

148:                                              ; preds = %139
  %149 = load %struct.entry*, %struct.entry** %8, align 8
  %150 = call i32 @mktempname(%struct.entry* %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %124, %151
  %153 = load i8*, i8** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call %struct.entry* @addentry(i8* %153, i32 %154, i32 %155)
  store %struct.entry* %156, %struct.entry** %7, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @NODE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load %struct.entry*, %struct.entry** %7, align 8
  %162 = call i32 @newnode(%struct.entry* %161)
  br label %163

163:                                              ; preds = %160, %152
  %164 = load i32, i32* @NEW, align 4
  %165 = load i32, i32* @KEEP, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.entry*, %struct.entry** %7, align 8
  %168 = getelementptr inbounds %struct.entry, %struct.entry* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @stdout, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i8* @keyval(i32 %172)
  %174 = load i8*, i8** %4, align 8
  %175 = load %struct.entry*, %struct.entry** %7, align 8
  %176 = call i32 @flagvalues(%struct.entry* %175)
  %177 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %171, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %173, i8* %174, i32 %176)
  br label %429

178:                                              ; preds = %124
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @LEAF, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load %struct.entry*, %struct.entry** %9, align 8
  %184 = getelementptr inbounds %struct.entry, %struct.entry* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @KEEP, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i32, i32* @EXTRACT, align 4
  %191 = load %struct.entry*, %struct.entry** %9, align 8
  %192 = getelementptr inbounds %struct.entry, %struct.entry* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %182, %178
  br label %196

196:                                              ; preds = %124, %195
  %197 = load %struct.entry*, %struct.entry** %9, align 8
  %198 = getelementptr inbounds %struct.entry, %struct.entry* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @KEEP, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %196
  %204 = load %struct.entry*, %struct.entry** %9, align 8
  %205 = call i8* @myname(%struct.entry* %204)
  %206 = load i8*, i8** %4, align 8
  %207 = call i32 @renameit(i8* %205, i8* %206)
  %208 = load %struct.entry*, %struct.entry** %9, align 8
  %209 = load i8*, i8** %4, align 8
  %210 = call i32 @moveentry(%struct.entry* %208, i8* %209)
  %211 = load i32, i32* @KEEP, align 4
  %212 = load %struct.entry*, %struct.entry** %9, align 8
  %213 = getelementptr inbounds %struct.entry, %struct.entry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load i32, i32* @stdout, align 4
  %217 = load i32, i32* %12, align 4
  %218 = call i8* @keyval(i32 %217)
  %219 = load i8*, i8** %4, align 8
  %220 = load %struct.entry*, %struct.entry** %9, align 8
  %221 = call i32 @flagvalues(%struct.entry* %220)
  %222 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %218, i8* %219, i32 %221)
  br label %429

223:                                              ; preds = %196
  %224 = load %struct.entry*, %struct.entry** %9, align 8
  %225 = getelementptr inbounds %struct.entry, %struct.entry* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @NODE, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  %230 = load i64, i64* @FAIL, align 8
  store i64 %230, i64* %10, align 8
  %231 = load i32, i32* @stderr, align 4
  %232 = load i8*, i8** %4, align 8
  %233 = load %struct.entry*, %struct.entry** %9, align 8
  %234 = call i8* @myname(%struct.entry* %233)
  %235 = call i32 @fprintf(i32 %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %232, i8* %234)
  br label %429

236:                                              ; preds = %223
  %237 = load i8*, i8** %4, align 8
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @LINK, align 4
  %241 = or i32 %239, %240
  %242 = call %struct.entry* @addentry(i8* %237, i32 %238, i32 %241)
  store %struct.entry* %242, %struct.entry** %7, align 8
  %243 = load i32, i32* @NEW, align 4
  %244 = load %struct.entry*, %struct.entry** %7, align 8
  %245 = getelementptr inbounds %struct.entry, %struct.entry* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* @stdout, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i8* @keyval(i32 %249)
  %251 = load i8*, i8** %4, align 8
  %252 = load %struct.entry*, %struct.entry** %7, align 8
  %253 = call i32 @flagvalues(%struct.entry* %252)
  %254 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %250, i8* %251, i32 %253)
  br label %429

255:                                              ; preds = %124
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @LINK, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %291

259:                                              ; preds = %255
  %260 = load %struct.entry*, %struct.entry** %8, align 8
  %261 = call i32 @removeleaf(%struct.entry* %260)
  %262 = load %struct.entry*, %struct.entry** %8, align 8
  %263 = call i32 @freeentry(%struct.entry* %262)
  %264 = load i8*, i8** %4, align 8
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @LINK, align 4
  %268 = or i32 %266, %267
  %269 = call %struct.entry* @addentry(i8* %264, i32 %265, i32 %268)
  store %struct.entry* %269, %struct.entry** %7, align 8
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @NODE, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %259
  %274 = load %struct.entry*, %struct.entry** %7, align 8
  %275 = call i32 @newnode(%struct.entry* %274)
  br label %276

276:                                              ; preds = %273, %259
  %277 = load i32, i32* @NEW, align 4
  %278 = load i32, i32* @KEEP, align 4
  %279 = or i32 %277, %278
  %280 = load %struct.entry*, %struct.entry** %7, align 8
  %281 = getelementptr inbounds %struct.entry, %struct.entry* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load i32, i32* @stdout, align 4
  %285 = load i32, i32* %12, align 4
  %286 = call i8* @keyval(i32 %285)
  %287 = load i8*, i8** %4, align 8
  %288 = load %struct.entry*, %struct.entry** %7, align 8
  %289 = call i32 @flagvalues(%struct.entry* %288)
  %290 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %284, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %286, i8* %287, i32 %289)
  br label %429

291:                                              ; preds = %255
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @LEAF, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %291
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* @LINK, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %305

299:                                              ; preds = %295
  %300 = load i32, i32* @EXTRACT, align 4
  %301 = load %struct.entry*, %struct.entry** %8, align 8
  %302 = getelementptr inbounds %struct.entry, %struct.entry* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %299, %295, %291
  %306 = load i32, i32* @KEEP, align 4
  %307 = load %struct.entry*, %struct.entry** %8, align 8
  %308 = getelementptr inbounds %struct.entry, %struct.entry* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* @stdout, align 4
  %312 = load i32, i32* %12, align 4
  %313 = call i8* @keyval(i32 %312)
  %314 = load i8*, i8** %4, align 8
  %315 = load %struct.entry*, %struct.entry** %8, align 8
  %316 = call i32 @flagvalues(%struct.entry* %315)
  %317 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %311, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %313, i8* %314, i32 %316)
  br label %429

318:                                              ; preds = %124, %124
  %319 = load %struct.entry*, %struct.entry** %9, align 8
  %320 = getelementptr inbounds %struct.entry, %struct.entry* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @KEEP, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %318
  %326 = load %struct.entry*, %struct.entry** %9, align 8
  %327 = call i32 @badentry(%struct.entry* %326, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %429

328:                                              ; preds = %318
  %329 = load %struct.entry*, %struct.entry** %9, align 8
  %330 = getelementptr inbounds %struct.entry, %struct.entry* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @LEAF, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %365

334:                                              ; preds = %328
  %335 = load i32, i32* %5, align 4
  %336 = call %struct.entry* @lookupino(i32 %335)
  store %struct.entry* %336, %struct.entry** %9, align 8
  br label %337

337:                                              ; preds = %354, %334
  %338 = load %struct.entry*, %struct.entry** %9, align 8
  %339 = icmp ne %struct.entry* %338, null
  br i1 %339, label %340, label %358

340:                                              ; preds = %337
  %341 = load %struct.entry*, %struct.entry** %9, align 8
  %342 = getelementptr inbounds %struct.entry, %struct.entry* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @LEAF, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = load %struct.entry*, %struct.entry** %9, align 8
  %348 = call i32 @badentry(%struct.entry* %347, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %349

349:                                              ; preds = %346, %340
  %350 = load %struct.entry*, %struct.entry** %9, align 8
  %351 = call i32 @removeleaf(%struct.entry* %350)
  %352 = load %struct.entry*, %struct.entry** %9, align 8
  %353 = call i32 @freeentry(%struct.entry* %352)
  br label %354

354:                                              ; preds = %349
  %355 = load %struct.entry*, %struct.entry** %9, align 8
  %356 = getelementptr inbounds %struct.entry, %struct.entry* %355, i32 0, i32 4
  %357 = load %struct.entry*, %struct.entry** %356, align 8
  store %struct.entry* %357, %struct.entry** %9, align 8
  br label %337

358:                                              ; preds = %337
  %359 = load i8*, i8** %4, align 8
  %360 = load i32, i32* %5, align 4
  %361 = load i32, i32* %6, align 4
  %362 = call %struct.entry* @addentry(i8* %359, i32 %360, i32 %361)
  store %struct.entry* %362, %struct.entry** %9, align 8
  %363 = load %struct.entry*, %struct.entry** %9, align 8
  %364 = call i32 @newnode(%struct.entry* %363)
  br label %388

365:                                              ; preds = %328
  %366 = load %struct.entry*, %struct.entry** %9, align 8
  %367 = getelementptr inbounds %struct.entry, %struct.entry* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @TMPNAME, align 4
  %370 = and i32 %368, %369
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %365
  %373 = load %struct.entry*, %struct.entry** %9, align 8
  %374 = call i32 @mktempname(%struct.entry* %373)
  br label %375

375:                                              ; preds = %372, %365
  %376 = load %struct.entry*, %struct.entry** %9, align 8
  %377 = getelementptr inbounds %struct.entry, %struct.entry* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @deleteino(i32 %378)
  %380 = load %struct.entry*, %struct.entry** @removelist, align 8
  %381 = load %struct.entry*, %struct.entry** %9, align 8
  %382 = getelementptr inbounds %struct.entry, %struct.entry* %381, i32 0, i32 2
  store %struct.entry* %380, %struct.entry** %382, align 8
  %383 = load %struct.entry*, %struct.entry** %9, align 8
  store %struct.entry* %383, %struct.entry** @removelist, align 8
  %384 = load i8*, i8** %4, align 8
  %385 = load i32, i32* %5, align 4
  %386 = load i32, i32* %6, align 4
  %387 = call %struct.entry* @addentry(i8* %384, i32 %385, i32 %386)
  store %struct.entry* %387, %struct.entry** %9, align 8
  br label %388

388:                                              ; preds = %375, %358
  %389 = load i32, i32* @NEW, align 4
  %390 = load i32, i32* @KEEP, align 4
  %391 = or i32 %389, %390
  %392 = load %struct.entry*, %struct.entry** %9, align 8
  %393 = getelementptr inbounds %struct.entry, %struct.entry* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 4
  %396 = load i32, i32* @stdout, align 4
  %397 = load i32, i32* %12, align 4
  %398 = call i8* @keyval(i32 %397)
  %399 = load i8*, i8** %4, align 8
  %400 = load %struct.entry*, %struct.entry** %9, align 8
  %401 = call i32 @flagvalues(%struct.entry* %400)
  %402 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %396, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %398, i8* %399, i32 %401)
  br label %429

403:                                              ; preds = %124
  %404 = load i32, i32* @stdout, align 4
  %405 = load i32, i32* %12, align 4
  %406 = call i8* @keyval(i32 %405)
  %407 = load i8*, i8** %4, align 8
  %408 = call i32 (i32, i8*, i8*, ...) @dprintf(i32 %404, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %406, i8* %407)
  %409 = load i64, i64* @FAIL, align 8
  store i64 %409, i64* %10, align 8
  br label %429

410:                                              ; preds = %124
  %411 = load i32, i32* @stderr, align 4
  %412 = load i8*, i8** %4, align 8
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = inttoptr i64 %414 to i8*
  %416 = call i32 @fprintf(i32 %411, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %412, i8* %415)
  br label %429

417:                                              ; preds = %124, %124, %124
  %418 = load i32, i32* @stderr, align 4
  %419 = load i32, i32* %12, align 4
  %420 = call i8* @keyval(i32 %419)
  %421 = load i8*, i8** %4, align 8
  %422 = call i32 @fprintf(i32 %418, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %420, i8* %421)
  br label %429

423:                                              ; preds = %124, %124
  br label %424

424:                                              ; preds = %124, %423
  %425 = load i32, i32* %12, align 4
  %426 = call i8* @keyval(i32 %425)
  %427 = load i8*, i8** %4, align 8
  %428 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %426, i8* %427)
  br label %429

429:                                              ; preds = %424, %417, %410, %403, %388, %325, %305, %276, %236, %229, %203, %163, %126
  %430 = load i64, i64* %10, align 8
  ret i64 %430
}

declare dso_local i64 @TSTINO(i32, i32) #1

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local %struct.entry* @lookupino(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @removeleaf(%struct.entry*) #1

declare dso_local i32 @freeentry(%struct.entry*) #1

declare dso_local i32 @dprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i32 @mktempname(%struct.entry*) #1

declare dso_local i8* @keyval(i32) #1

declare dso_local i32 @flagvalues(%struct.entry*) #1

declare dso_local %struct.entry* @addentry(i8*, i32, i32) #1

declare dso_local i32 @newnode(%struct.entry*) #1

declare dso_local i32 @renameit(i8*, i8*) #1

declare dso_local i32 @moveentry(%struct.entry*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local i32 @deleteino(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
