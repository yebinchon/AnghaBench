; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/db/extr_h_db.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/db/extr_h_db.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 (%struct.TYPE_25__*)* }
%struct.TYPE_24__ = type { i64, i32* }

@COMMAND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"f:i:lo:s\00", align 1
@optarg = external dso_local global i8*, align 8
@DB_LOCK = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@ofd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Cannot create `%s'\00", align 1
@optind = external dso_local global i32, align 4
@type = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Cannot reopen `%s'\00", align 1
@infop = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c",\09 \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s/__dbtest\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Cannot dbopen `%s'\00", align 1
@XXdbp = common dso_local global %struct.TYPE_25__* null, align 8
@lineno = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i64 0, align 8
@XXlineno = common dso_local global i32 0, align 4
@KEY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@flags = common dso_local global i32 0, align 4
@R_CURSOR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"line %zu: command doesn't take data\00", align 1
@DB_RECNO = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"line %zu: 'K' not available for recno\00", align 1
@main.recno = internal global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"line %zu: command doesn't take a key\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"line %zu: %s: unknown command character\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"db->close failed\00", align 1
@DB_BTREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [8192 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* @COMMAND, align 4
  store i32 %23, i32* %6, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %21, align 4
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %59, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %13, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %57 [
    i32 102, label %34
    i32 105, label %36
    i32 108, label %38
    i32 111, label %42
    i32 115, label %55
    i32 63, label %56
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %16, align 8
  br label %59

36:                                               ; preds = %32
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %17, align 8
  br label %59

38:                                               ; preds = %32
  %39 = load i32, i32* @DB_LOCK, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  br label %59

42:                                               ; preds = %32
  %43 = load i8*, i8** @optarg, align 8
  %44 = load i32, i32* @O_WRONLY, align 4
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @O_TRUNC, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @open(i8* %43, i32 %48, i32 438)
  store i64 %49, i64* @ofd, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %42
  br label %59

55:                                               ; preds = %32
  store i32 1, i32* %15, align 4
  br label %59

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %32, %56
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %55, %54, %38, %36, %34
  br label %27

60:                                               ; preds = %27
  %61 = load i32, i32* @optind, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @optind, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8** %67, i8*** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %60
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %5, align 8
  %75 = load i8*, i8** %73, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = call i64 @dbtype(i32 %76)
  store i64 %77, i64* @type, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @stdin, align 4
  %86 = call i32* @freopen(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i8**, i8*** %5, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %82, %72
  %93 = load i8*, i8** %17, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32* null, i32** @infop, align 8
  br label %115

96:                                               ; preds = %92
  %97 = load i8*, i8** %17, align 8
  %98 = call i8* @strtok(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %98, i8** %18, align 8
  br label %99

99:                                               ; preds = %112, %96
  %100 = load i8*, i8** %18, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i8*, i8** %18, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i64, i64* @type, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = call i32* @setinfo(i64 %108, i8* %109)
  store i32* %110, i32** @infop, align 8
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %111
  %113 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %113, i8** %18, align 8
  br label %99

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i8*, i8** %16, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %119, i8** %22, align 8
  %120 = load i8*, i8** %22, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %22, align 8
  br label %123

123:                                              ; preds = %122, %118
  %124 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %125 = load i8*, i8** %22, align 8
  %126 = call i32 @snprintf(i8* %124, i32 8192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %125)
  %127 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  store i8* %127, i8** %16, align 8
  %128 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %129 = call i32 @unlink(i8* %128)
  store i32 1, i32* %21, align 4
  br label %137

130:                                              ; preds = %115
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @unlink(i8* %134)
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %123
  %138 = load i8*, i8** %16, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @S_IRUSR, align 4
  %141 = load i32, i32* @S_IWUSR, align 4
  %142 = or i32 %140, %141
  %143 = load i64, i64* @type, align 8
  %144 = load i32*, i32** @infop, align 8
  %145 = call %struct.TYPE_25__* @dbopen(i8* %138, i32 %139, i32 %142, i64 %143, i32* %144)
  store %struct.TYPE_25__* %145, %struct.TYPE_25__** %8, align 8
  %146 = icmp eq %struct.TYPE_25__* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i8*, i8** %16, align 8
  %149 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %147, %137
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %151, %struct.TYPE_25__** @XXdbp, align 8
  %152 = load i32, i32* %21, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i8*, i8** %16, align 8
  %156 = call i32 @unlink(i8* %155)
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* @COMMAND, align 4
  store i32 %158, i32* %7, align 4
  store i32 1, i32* @lineno, align 4
  br label %159

159:                                              ; preds = %432, %157
  %160 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %161 = load i32, i32* @stdin, align 4
  %162 = call i8* @fgets(i8* %160, i32 8192, i32 %161)
  store i8* %162, i8** %18, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %435

164:                                              ; preds = %159
  %165 = load i64, i64* @ofd, align 8
  %166 = load i64, i64* @STDOUT_FILENO, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i8*, i8** %18, align 8
  %170 = call i8* @strchr(i8* %169, i8 signext 10)
  store i8* %170, i8** %19, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i8*, i8** %19, align 8
  store i8 0, i8* %173, align 1
  br label %174

174:                                              ; preds = %172, %168, %164
  %175 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %176 = call i64 @strlen(i8* %175)
  store i64 %176, i64* %12, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %174
  %179 = load i8*, i8** %18, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i64 @isspace(i8 zeroext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i8*, i8** %18, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 35
  br i1 %187, label %188, label %189

188:                                              ; preds = %183, %178, %174
  br label %432

189:                                              ; preds = %183
  %190 = load i32, i32* @XXlineno, align 4
  %191 = load i32, i32* @lineno, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 1, i32* @XXlineno, align 4
  br label %194

194:                                              ; preds = %193, %189
  %195 = load i8*, i8** %18, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  switch i32 %197, label %427 [
    i32 99, label %198
    i32 101, label %202
    i32 103, label %234
    i32 112, label %238
    i32 114, label %242
    i32 83, label %255
    i32 115, label %261
    i32 102, label %273
    i32 68, label %277
    i32 100, label %286
    i32 75, label %322
    i32 107, label %338
    i32 111, label %418
  ]

198:                                              ; preds = %194
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @chkcmd(i32 %199)
  %201 = load i32, i32* @KEY, align 4
  store i32 %201, i32* %7, align 4
  store i32 132, i32* %6, align 4
  br label %431

202:                                              ; preds = %194
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @chkcmd(i32 %203)
  %205 = load i8*, i8** %18, align 8
  %206 = load i64, i64* %12, align 8
  %207 = sub i64 %206, 2
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 13
  br i1 %211, label %212, label %215

212:                                              ; preds = %202
  %213 = load i64, i64* %12, align 8
  %214 = add i64 %213, -1
  store i64 %214, i64* %12, align 8
  br label %215

215:                                              ; preds = %212, %202
  %216 = load i64, i64* @ofd, align 8
  %217 = load i8*, i8** %18, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i64, i64* %12, align 8
  %220 = sub i64 %219, 1
  %221 = trunc i64 %220 to i32
  %222 = call i32 @write(i64 %216, i8* %218, i32 %221)
  %223 = load i64, i64* %12, align 8
  %224 = trunc i64 %223 to i32
  %225 = sub nsw i32 %224, 1
  %226 = icmp ne i32 %222, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %215
  %228 = load i64, i64* @ofd, align 8
  %229 = call i32 @write(i64 %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %230 = icmp ne i32 %229, 1
  br i1 %230, label %231, label %233

231:                                              ; preds = %227, %215
  %232 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %227
  br label %431

234:                                              ; preds = %194
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @chkcmd(i32 %235)
  %237 = load i32, i32* @KEY, align 4
  store i32 %237, i32* %7, align 4
  store i32 131, i32* %6, align 4
  br label %431

238:                                              ; preds = %194
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @chkcmd(i32 %239)
  %241 = load i32, i32* @KEY, align 4
  store i32 %241, i32* %7, align 4
  store i32 130, i32* %6, align 4
  br label %431

242:                                              ; preds = %194
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @chkcmd(i32 %243)
  %245 = load i32, i32* @flags, align 4
  %246 = load i32, i32* @R_CURSOR, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %250 = call i32 @rem(%struct.TYPE_25__* %249, %struct.TYPE_24__* %10)
  %251 = load i32, i32* @COMMAND, align 4
  store i32 %251, i32* %7, align 4
  br label %254

252:                                              ; preds = %242
  %253 = load i32, i32* @KEY, align 4
  store i32 %253, i32* %7, align 4
  store i32 129, i32* %6, align 4
  br label %254

254:                                              ; preds = %252, %248
  br label %431

255:                                              ; preds = %194
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @chkcmd(i32 %256)
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %259 = call i32 @synk(%struct.TYPE_25__* %258)
  %260 = load i32, i32* @COMMAND, align 4
  store i32 %260, i32* %7, align 4
  br label %431

261:                                              ; preds = %194
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @chkcmd(i32 %262)
  %264 = load i32, i32* @flags, align 4
  %265 = load i32, i32* @R_CURSOR, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i32, i32* @KEY, align 4
  store i32 %268, i32* %7, align 4
  store i32 128, i32* %6, align 4
  br label %272

269:                                              ; preds = %261
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %271 = call i32 @seq(%struct.TYPE_25__* %270, %struct.TYPE_24__* %10)
  br label %272

272:                                              ; preds = %269, %267
  br label %431

273:                                              ; preds = %194
  %274 = load i8*, i8** %18, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = call i32 @setflags(i8* %275)
  store i32 %276, i32* @flags, align 4
  br label %431

277:                                              ; preds = %194
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @chkdata(i32 %278)
  %280 = load i8*, i8** %18, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %283 = call i8* @rfile(i8* %281, i64* %282)
  %284 = bitcast i8* %283 to i32*
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i32* %284, i32** %285, align 8
  br label %299

286:                                              ; preds = %194
  %287 = load i32, i32* %7, align 4
  %288 = call i32 @chkdata(i32 %287)
  %289 = load i8*, i8** %18, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = load i64, i64* %12, align 8
  %292 = sub i64 %291, 1
  %293 = call i8* @xcopy(i8* %290, i64 %292)
  %294 = bitcast i8* %293 to i32*
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i32* %294, i32** %295, align 8
  %296 = load i64, i64* %12, align 8
  %297 = sub i64 %296, 1
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store i64 %297, i64* %298, align 8
  br label %299

299:                                              ; preds = %286, %277
  %300 = load i32, i32* %6, align 4
  switch i32 %300, label %306 [
    i32 132, label %301
    i32 130, label %303
  ]

301:                                              ; preds = %299
  %302 = call i32 @compare(%struct.TYPE_24__* %11, %struct.TYPE_24__* %9)
  br label %309

303:                                              ; preds = %299
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %305 = call i32 @put(%struct.TYPE_25__* %304, %struct.TYPE_24__* %10, %struct.TYPE_24__* %9)
  br label %309

306:                                              ; preds = %299
  %307 = load i32, i32* @lineno, align 4
  %308 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %306, %303, %301
  %310 = load i64, i64* @type, align 8
  %311 = load i64, i64* @DB_RECNO, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @free(i32* %315)
  br label %317

317:                                              ; preds = %313, %309
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = call i32 @free(i32* %319)
  %321 = load i32, i32* @COMMAND, align 4
  store i32 %321, i32* %7, align 4
  br label %431

322:                                              ; preds = %194
  %323 = load i32, i32* %7, align 4
  %324 = call i32 @chkkey(i32 %323)
  %325 = load i64, i64* @type, align 8
  %326 = load i64, i64* @DB_RECNO, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %322
  %329 = load i32, i32* @lineno, align 4
  %330 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %328, %322
  %332 = load i8*, i8** %18, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %335 = call i8* @rfile(i8* %333, i64* %334)
  %336 = bitcast i8* %335 to i32*
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i32* %336, i32** %337, align 8
  br label %362

338:                                              ; preds = %194
  %339 = load i32, i32* %7, align 4
  %340 = call i32 @chkkey(i32 %339)
  %341 = load i64, i64* @type, align 8
  %342 = load i64, i64* @DB_RECNO, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %338
  %345 = load i8*, i8** %18, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 1
  %347 = call i32 @atoi(i8* %346)
  store i32 %347, i32* @main.recno, align 4
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i32* @main.recno, i32** %348, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i64 4, i64* %349, align 8
  br label %361

350:                                              ; preds = %338
  %351 = load i8*, i8** %18, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 1
  %353 = load i64, i64* %12, align 8
  %354 = sub i64 %353, 1
  %355 = call i8* @xcopy(i8* %352, i64 %354)
  %356 = bitcast i8* %355 to i32*
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i32* %356, i32** %357, align 8
  %358 = load i64, i64* %12, align 8
  %359 = sub i64 %358, 1
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i64 %359, i64* %360, align 8
  br label %361

361:                                              ; preds = %350, %344
  br label %362

362:                                              ; preds = %361, %331
  %363 = load i32, i32* %6, align 4
  switch i32 %363, label %414 [
    i32 132, label %364
    i32 131, label %368
    i32 130, label %380
    i32 129, label %382
    i32 128, label %398
  ]

364:                                              ; preds = %362
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %366 = call i32 @getdata(%struct.TYPE_25__* %365, %struct.TYPE_24__* %10, %struct.TYPE_24__* %11)
  %367 = load i32, i32* @DATA, align 4
  store i32 %367, i32* %7, align 4
  br label %417

368:                                              ; preds = %362
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %370 = call i32 @get(%struct.TYPE_25__* %369, %struct.TYPE_24__* %10)
  %371 = load i64, i64* @type, align 8
  %372 = load i64, i64* @DB_RECNO, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = call i32 @free(i32* %376)
  br label %378

378:                                              ; preds = %374, %368
  %379 = load i32, i32* @COMMAND, align 4
  store i32 %379, i32* %7, align 4
  br label %417

380:                                              ; preds = %362
  %381 = load i32, i32* @DATA, align 4
  store i32 %381, i32* %7, align 4
  br label %417

382:                                              ; preds = %362
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %384 = call i32 @rem(%struct.TYPE_25__* %383, %struct.TYPE_24__* %10)
  %385 = load i64, i64* @type, align 8
  %386 = load i64, i64* @DB_RECNO, align 8
  %387 = icmp ne i64 %385, %386
  br i1 %387, label %388, label %396

388:                                              ; preds = %382
  %389 = load i32, i32* @flags, align 4
  %390 = load i32, i32* @R_CURSOR, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = call i32 @free(i32* %394)
  br label %396

396:                                              ; preds = %392, %388, %382
  %397 = load i32, i32* @COMMAND, align 4
  store i32 %397, i32* %7, align 4
  br label %417

398:                                              ; preds = %362
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %400 = call i32 @seq(%struct.TYPE_25__* %399, %struct.TYPE_24__* %10)
  %401 = load i64, i64* @type, align 8
  %402 = load i64, i64* @DB_RECNO, align 8
  %403 = icmp ne i64 %401, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %398
  %405 = load i32, i32* @flags, align 4
  %406 = load i32, i32* @R_CURSOR, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = call i32 @free(i32* %410)
  br label %412

412:                                              ; preds = %408, %404, %398
  %413 = load i32, i32* @COMMAND, align 4
  store i32 %413, i32* %7, align 4
  br label %417

414:                                              ; preds = %362
  %415 = load i32, i32* @lineno, align 4
  %416 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %414, %412, %396, %380, %378, %364
  br label %431

418:                                              ; preds = %194
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %420 = load i8*, i8** %18, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 1
  %422 = load i8, i8* %421, align 1
  %423 = sext i8 %422 to i32
  %424 = icmp eq i32 %423, 114
  %425 = zext i1 %424 to i32
  %426 = call i32 @dump(%struct.TYPE_25__* %419, i32 %425, i32 0)
  br label %431

427:                                              ; preds = %194
  %428 = load i32, i32* @lineno, align 4
  %429 = load i8*, i8** %18, align 8
  %430 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %428, i8* %429)
  br label %431

431:                                              ; preds = %427, %418, %417, %317, %273, %272, %255, %254, %238, %234, %233, %198
  br label %432

432:                                              ; preds = %431, %188
  %433 = load i32, i32* @lineno, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* @lineno, align 4
  br label %159

435:                                              ; preds = %159
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 0
  %438 = load i64 (%struct.TYPE_25__*)*, i64 (%struct.TYPE_25__*)** %437, align 8
  %439 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %440 = call i64 %438(%struct.TYPE_25__* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %435
  %443 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %444

444:                                              ; preds = %442, %435
  %445 = load i64, i64* @ofd, align 8
  %446 = call i32 @close(i64 %445)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @dbtype(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32* @setinfo(i64, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local %struct.TYPE_25__* @dbopen(i8*, i32, i32, i64, i32*) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @chkcmd(i32) #1

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @rem(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @synk(%struct.TYPE_25__*) #1

declare dso_local i32 @seq(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @setflags(i8*) #1

declare dso_local i32 @chkdata(i32) #1

declare dso_local i8* @rfile(i8*, i64*) #1

declare dso_local i8* @xcopy(i8*, i64) #1

declare dso_local i32 @compare(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @put(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @chkkey(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @getdata(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @get(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @dump(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
