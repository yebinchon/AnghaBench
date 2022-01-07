; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_mknetid.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_mknetid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8**, i32 }
%struct.grouplist = type { i64, %struct.grouplist* }

@LINSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"g:p:h:n:d:q\00", align 1
@optarg = common dso_local global i8* null, align 8
@groupfile = common dso_local global i8* null, align 8
@passfile = common dso_local global i8* null, align 8
@hostsfile = common dso_local global i8* null, align 8
@netidfile = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"no domain name specified and default domain not set\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_gr_fp = common dso_local global i32* null, align 8
@mtable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"bad passwd file entry: %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s.%s@%s\00", align 1
@OPSYS = common dso_local global i8* null, align 8
@dtable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"duplicate netid '%s.%s@%s' -- skipping\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s.%s@%s %s:%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c",%lu\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"duplicate netid '%s' -- skipping\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%s.%s@%s 0:%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"bad netid entry: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.group*, align 8
  %14 = alloca %struct.grouplist*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* @LINSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load i32, i32* @LINSIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  store i32 0, i32* %22, align 4
  store i8* null, i8** %15, align 8
  br label %30

30:                                               ; preds = %52, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %16, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i32, i32* %16, align 4
  switch i32 %36, label %50 [
    i32 103, label %37
    i32 112, label %39
    i32 104, label %41
    i32 110, label %43
    i32 100, label %45
    i32 113, label %47
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** @groupfile, align 8
  br label %52

39:                                               ; preds = %35
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** @passfile, align 8
  br label %52

41:                                               ; preds = %35
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** @hostsfile, align 8
  br label %52

43:                                               ; preds = %35
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** @netidfile, align 8
  br label %52

45:                                               ; preds = %35
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %15, align 8
  br label %52

47:                                               ; preds = %35
  %48 = load i32, i32* %22, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %22, align 4
  br label %52

50:                                               ; preds = %35
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %47, %45, %43, %41, %39, %37
  br label %30

53:                                               ; preds = %30
  %54 = load i8*, i8** %15, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = call i64 @yp_get_default_domain(i8** %15)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i8*, i8** @groupfile, align 8
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %64, i32** %6, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** @groupfile, align 8
  %68 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i8*, i8** @passfile, align 8
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %71, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** @passfile, align 8
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** @hostsfile, align 8
  %78 = call i32* @fopen(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %78, i32** %8, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** @hostsfile, align 8
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i8*, i8** @netidfile, align 8
  %85 = call i32* @fopen(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %85, i32** %9, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32* null, i32** %9, align 8
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i32*, i32** %6, align 8
  store i32* %89, i32** @_gr_fp, align 8
  %90 = call i32 (...) @_setgrent()
  br label %91

91:                                               ; preds = %115, %88
  %92 = call %struct.group* (...) @_getgrent()
  store %struct.group* %92, %struct.group** %13, align 8
  %93 = icmp ne %struct.group* %92, null
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %101, %94
  %96 = load %struct.group*, %struct.group** %13, align 8
  %97 = getelementptr inbounds %struct.group, %struct.group* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load i32, i32* @mtable, align 4
  %103 = load %struct.group*, %struct.group** %13, align 8
  %104 = getelementptr inbounds %struct.group, %struct.group* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.group*, %struct.group** %13, align 8
  %108 = getelementptr inbounds %struct.group, %struct.group* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @mstore(i32 %102, i8* %106, i32 %109, i32 0)
  %111 = load %struct.group*, %struct.group** %13, align 8
  %112 = getelementptr inbounds %struct.group, %struct.group* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i32 1
  store i8** %114, i8*** %112, align 8
  br label %95

115:                                              ; preds = %95
  br label %91

116:                                              ; preds = %91
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @fclose(i32* %117)
  %119 = call i32 (...) @_endgrent()
  br label %120

120:                                              ; preds = %246, %211, %189, %179, %169, %160, %156, %116
  %121 = load i32, i32* @LINSIZ, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = call i8* @fgets(i8* %26, i32 %121, i32* %122)
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %248

125:                                              ; preds = %120
  store i8* %26, i8** %18, align 8
  br label %126

126:                                              ; preds = %143, %125
  %127 = load i8*, i8** %18, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i8*, i8** %18, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 32
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i8*, i8** %18, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 9
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %146

142:                                              ; preds = %136, %131
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %18, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %18, align 8
  br label %126

146:                                              ; preds = %141, %126
  %147 = load i8*, i8** %18, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 35
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i8*, i8** %18, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151, %146
  br label %120

157:                                              ; preds = %151
  %158 = call i8* @strchr(i8* %26, i8 signext 58)
  store i8* %158, i8** %18, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  br label %120

162:                                              ; preds = %157
  %163 = load i8*, i8** %18, align 8
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %18, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %18, align 8
  %166 = load i8*, i8** %18, align 8
  %167 = call i8* @strchr(i8* %166, i8 signext 58)
  store i8* %167, i8** %18, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  br label %120

171:                                              ; preds = %162
  %172 = load i8*, i8** %18, align 8
  store i8 0, i8* %172, align 1
  %173 = load i8*, i8** %18, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %18, align 8
  %175 = load i8*, i8** %18, align 8
  store i8* %175, i8** %19, align 8
  %176 = load i8*, i8** %18, align 8
  %177 = call i8* @strchr(i8* %176, i8 signext 58)
  store i8* %177, i8** %18, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  br label %120

181:                                              ; preds = %171
  %182 = load i8*, i8** %18, align 8
  store i8 0, i8* %182, align 1
  %183 = load i8*, i8** %18, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %18, align 8
  %185 = load i8*, i8** %18, align 8
  store i8* %185, i8** %20, align 8
  %186 = load i8*, i8** %18, align 8
  %187 = call i8* @strchr(i8* %186, i8 signext 58)
  store i8* %187, i8** %18, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  br label %120

191:                                              ; preds = %181
  %192 = load i8*, i8** %18, align 8
  store i8 0, i8* %192, align 1
  %193 = load i8*, i8** %20, align 8
  %194 = call i64 @atol(i8* %193)
  store i64 %194, i64* %17, align 8
  %195 = trunc i64 %28 to i32
  %196 = load i8*, i8** @OPSYS, align 8
  %197 = load i8*, i8** %19, align 8
  %198 = load i8*, i8** %15, align 8
  %199 = call i32 @snprintf(i8* %29, i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %196, i8* %197, i8* %198)
  %200 = load i32, i32* @dtable, align 4
  %201 = call %struct.grouplist* @lookup(i32 %200, i8* %29)
  %202 = icmp ne %struct.grouplist* %201, null
  br i1 %202, label %203, label %212

203:                                              ; preds = %191
  %204 = load i32, i32* %22, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load i8*, i8** @OPSYS, align 8
  %208 = load i8*, i8** %19, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %207, i8* %208, i8* %209)
  br label %211

211:                                              ; preds = %206, %203
  br label %120

212:                                              ; preds = %191
  %213 = load i32, i32* @dtable, align 4
  %214 = call i32 @mstore(i32 %213, i8* %29, i32 0, i32 1)
  br label %215

215:                                              ; preds = %212
  %216 = load i8*, i8** @OPSYS, align 8
  %217 = load i8*, i8** %19, align 8
  %218 = load i8*, i8** %15, align 8
  %219 = load i8*, i8** %19, align 8
  %220 = load i8*, i8** %20, align 8
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %216, i8* %217, i8* %218, i8* %219, i8* %220)
  %222 = load i32, i32* @mtable, align 4
  %223 = call %struct.grouplist* @lookup(i32 %222, i8* %26)
  store %struct.grouplist* %223, %struct.grouplist** %14, align 8
  %224 = icmp ne %struct.grouplist* %223, null
  br i1 %224, label %225, label %246

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %241, %225
  %227 = load %struct.grouplist*, %struct.grouplist** %14, align 8
  %228 = icmp ne %struct.grouplist* %227, null
  br i1 %228, label %229, label %245

229:                                              ; preds = %226
  %230 = load %struct.grouplist*, %struct.grouplist** %14, align 8
  %231 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %17, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.grouplist*, %struct.grouplist** %14, align 8
  %237 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %235, %229
  %242 = load %struct.grouplist*, %struct.grouplist** %14, align 8
  %243 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %242, i32 0, i32 1
  %244 = load %struct.grouplist*, %struct.grouplist** %243, align 8
  store %struct.grouplist* %244, %struct.grouplist** %14, align 8
  br label %226

245:                                              ; preds = %226
  br label %246

246:                                              ; preds = %245, %215
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %120

248:                                              ; preds = %120
  %249 = load i32*, i32** %7, align 8
  %250 = call i32 @fclose(i32* %249)
  br label %251

251:                                              ; preds = %317, %313, %296, %272, %266, %261, %248
  %252 = load i32, i32* @LINSIZ, align 4
  %253 = load i32*, i32** %8, align 8
  %254 = call i8* @fgets(i8* %26, i32 %252, i32* %253)
  store i8* %254, i8** %18, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %323

256:                                              ; preds = %251
  %257 = load i8*, i8** %18, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 35
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %251

262:                                              ; preds = %256
  %263 = load i8*, i8** %18, align 8
  %264 = call i8* @strpbrk(i8* %263, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i8* %264, i8** %21, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  br label %251

267:                                              ; preds = %262
  %268 = load i8*, i8** %21, align 8
  store i8 0, i8* %268, align 1
  %269 = load i8*, i8** %18, align 8
  %270 = call i8* @strpbrk(i8* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i8* %270, i8** %21, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  br label %251

273:                                              ; preds = %267
  %274 = load i8*, i8** %21, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %21, align 8
  store i8 0, i8* %274, align 1
  %276 = load i8*, i8** %21, align 8
  store i8* %276, i8** %18, align 8
  br label %277

277:                                              ; preds = %289, %273
  %278 = load i8*, i8** %18, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 32
  br i1 %281, label %287, label %282

282:                                              ; preds = %277
  %283 = load i8*, i8** %18, align 8
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 9
  br label %287

287:                                              ; preds = %282, %277
  %288 = phi i1 [ true, %277 ], [ %286, %282 ]
  br i1 %288, label %289, label %292

289:                                              ; preds = %287
  %290 = load i8*, i8** %18, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %18, align 8
  br label %277

292:                                              ; preds = %287
  %293 = load i8*, i8** %18, align 8
  %294 = call i8* @strpbrk(i8* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i8* %294, i8** %21, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  br label %251

297:                                              ; preds = %292
  %298 = load i8*, i8** %21, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %21, align 8
  store i8 0, i8* %298, align 1
  %300 = trunc i64 %28 to i32
  %301 = load i8*, i8** @OPSYS, align 8
  %302 = load i8*, i8** %18, align 8
  %303 = load i8*, i8** %15, align 8
  %304 = call i32 @snprintf(i8* %29, i32 %300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %301, i8* %302, i8* %303)
  %305 = load i32, i32* @dtable, align 4
  %306 = call %struct.grouplist* @lookup(i32 %305, i8* %29)
  %307 = icmp ne %struct.grouplist* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %297
  %309 = load i32, i32* %22, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %308
  %312 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %29)
  br label %313

313:                                              ; preds = %311, %308
  br label %251

314:                                              ; preds = %297
  %315 = load i32, i32* @dtable, align 4
  %316 = call i32 @mstore(i32 %315, i8* %29, i32 0, i32 1)
  br label %317

317:                                              ; preds = %314
  %318 = load i8*, i8** @OPSYS, align 8
  %319 = load i8*, i8** %18, align 8
  %320 = load i8*, i8** %15, align 8
  %321 = load i8*, i8** %18, align 8
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %318, i8* %319, i8* %320, i8* %321)
  br label %251

323:                                              ; preds = %251
  %324 = load i32*, i32** %8, align 8
  %325 = call i32 @fclose(i32* %324)
  %326 = load i32*, i32** %9, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %328, label %370

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %362, %358, %343, %339, %328
  %330 = load i32, i32* @LINSIZ, align 4
  %331 = load i32*, i32** %9, align 8
  %332 = call i8* @fgets(i8* %26, i32 %330, i32* %331)
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %367

334:                                              ; preds = %329
  %335 = getelementptr inbounds i8, i8* %26, i64 0
  %336 = load i8, i8* %335, align 16
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 35
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %329

340:                                              ; preds = %334
  %341 = call i8* @strpbrk(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i8* %341, i8** %18, align 8
  %342 = icmp eq i8* %341, null
  br i1 %342, label %343, label %345

343:                                              ; preds = %340
  %344 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %26)
  br label %329

345:                                              ; preds = %340
  %346 = load i8*, i8** %18, align 8
  %347 = load i8, i8* %346, align 1
  %348 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %347, i8* %348, align 16
  %349 = load i8*, i8** %18, align 8
  store i8 0, i8* %349, align 1
  %350 = load i32, i32* @dtable, align 4
  %351 = call %struct.grouplist* @lookup(i32 %350, i8* %26)
  %352 = icmp ne %struct.grouplist* %351, null
  br i1 %352, label %353, label %359

353:                                              ; preds = %345
  %354 = load i32, i32* %22, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %353
  %357 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %26)
  br label %358

358:                                              ; preds = %356, %353
  br label %329

359:                                              ; preds = %345
  %360 = load i32, i32* @dtable, align 4
  %361 = call i32 @mstore(i32 %360, i8* %26, i32 0, i32 1)
  br label %362

362:                                              ; preds = %359
  %363 = getelementptr inbounds i8, i8* %29, i64 0
  %364 = load i8, i8* %363, align 16
  %365 = load i8*, i8** %18, align 8
  store i8 %364, i8* %365, align 1
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %329

367:                                              ; preds = %329
  %368 = load i32*, i32** %9, align 8
  %369 = call i32 @fclose(i32* %368)
  br label %370

370:                                              ; preds = %367, %323
  %371 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @yp_get_default_domain(i8**) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @_setgrent(...) #2

declare dso_local %struct.group* @_getgrent(...) #2

declare dso_local i32 @mstore(i32, i8*, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @_endgrent(...) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @warnx(i8*, i8*, ...) #2

declare dso_local i64 @atol(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local %struct.grouplist* @lookup(i32, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
