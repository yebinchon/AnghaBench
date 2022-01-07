; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_pg_searchres.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_pg_searchres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i8*, i64, i32* }
%struct.manpage = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid filename %s in %s database\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Status: 303 See Other\0D\0ALocation: /\00", align 1
@scriptname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s\0D\0AContent-Type: text/html; charset=utf-8\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1
@sec_prios = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"amd64/\00", align 1
@FOCUS_NONE = common dso_local global i32 0, align 4
@FOCUS_QUERY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"<table class=\22results\22>\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"  <tr>\0A    <td><a class=\22Xr\22 href=\22/\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s\22>\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"</a></td>\0A    <td><span class=\22Nd\22>\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"</span></td>\0A  </tr>\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"</table>\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"<hr>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, %struct.manpage*, i64)* @pg_searchres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_searchres(%struct.req* %0, %struct.manpage* %1, i64 %2) #0 {
  %4 = alloca %struct.req*, align 8
  %5 = alloca %struct.manpage*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.req* %0, %struct.req** %4, align 8
  store %struct.manpage* %1, %struct.manpage** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.manpage*, %struct.manpage** %5, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.manpage, %struct.manpage* %21, i64 %22
  %24 = getelementptr inbounds %struct.manpage, %struct.manpage* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @validate_filename(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.manpage*, %struct.manpage** %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.manpage, %struct.manpage* %30, i64 %31
  %33 = getelementptr inbounds %struct.manpage, %struct.manpage* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.req*, %struct.req** %4, align 8
  %36 = getelementptr inbounds %struct.req, %struct.req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %38)
  %40 = call i32 (...) @pg_error_internal()
  br label %299

41:                                               ; preds = %28
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.req*, %struct.req** %4, align 8
  %46 = getelementptr inbounds %struct.req, %struct.req* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** @scriptname, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** @scriptname, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.req*, %struct.req** %4, align 8
  %63 = getelementptr inbounds %struct.req, %struct.req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.req*, %struct.req** %4, align 8
  %67 = getelementptr inbounds %struct.req, %struct.req* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i8* %65, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load %struct.req*, %struct.req** %4, align 8
  %75 = getelementptr inbounds %struct.req, %struct.req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %61
  %80 = load %struct.manpage*, %struct.manpage** %5, align 8
  %81 = getelementptr inbounds %struct.manpage, %struct.manpage* %80, i64 0
  %82 = getelementptr inbounds %struct.manpage, %struct.manpage* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %299

85:                                               ; preds = %49, %44
  store i64 0, i64* %11, align 8
  %86 = load %struct.req*, %struct.req** %4, align 8
  %87 = getelementptr inbounds %struct.req, %struct.req* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %199

94:                                               ; preds = %91, %85
  store i32 20, i32* %15, align 4
  store i32 3, i32* %13, align 4
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %189, %94
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %192

99:                                               ; preds = %95
  %100 = load %struct.manpage*, %struct.manpage** %5, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.manpage, %struct.manpage* %100, i64 %101
  %103 = getelementptr inbounds %struct.manpage, %struct.manpage* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %9, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @strcspn(i8* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i8*, i8** %9, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %189

116:                                              ; preds = %99
  %117 = load i32*, i32** @sec_prios, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, 49
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %14, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 47
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 10
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %131, %116
  %135 = load %struct.req*, %struct.req** %4, align 8
  %136 = getelementptr inbounds %struct.req, %struct.req* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %181

140:                                              ; preds = %134
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = call i8* @strchr(i8* %142, i8 signext 47)
  store i8* %143, i8** %7, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %166

146:                                              ; preds = %140
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = call i8* @strchr(i8* %148, i8 signext 47)
  store i8* %149, i8** %8, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %164

152:                                              ; preds = %146
  %153 = load i8*, i8** %7, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = call i64 @strncmp(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 2, i32 1
  br label %164

164:                                              ; preds = %152, %151
  %165 = phi i32 [ 0, %151 ], [ %163, %152 ]
  br label %166

166:                                              ; preds = %164, %145
  %167 = phi i32 [ 3, %145 ], [ %165, %164 ]
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %15, align 4
  %174 = load i64, i64* %10, align 8
  store i64 %174, i64* %11, align 8
  br label %189

175:                                              ; preds = %166
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %189

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %134
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %15, align 4
  %188 = load i64, i64* %10, align 8
  store i64 %188, i64* %11, align 8
  br label %189

189:                                              ; preds = %186, %185, %179, %171, %115
  %190 = load i64, i64* %10, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %10, align 8
  br label %95

192:                                              ; preds = %95
  %193 = load %struct.manpage*, %struct.manpage** %5, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds %struct.manpage, %struct.manpage* %193, i64 %194
  %196 = getelementptr inbounds %struct.manpage, %struct.manpage* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @resp_begin_html(i32 200, i32* null, i8* %197)
  br label %201

199:                                              ; preds = %91
  %200 = call i32 @resp_begin_html(i32 200, i32* null, i8* null)
  br label %201

201:                                              ; preds = %199, %192
  %202 = load %struct.req*, %struct.req** %4, align 8
  %203 = load %struct.req*, %struct.req** %4, align 8
  %204 = getelementptr inbounds %struct.req, %struct.req* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %209, 1
  br i1 %210, label %211, label %213

211:                                              ; preds = %208, %201
  %212 = load i32, i32* @FOCUS_NONE, align 4
  br label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @FOCUS_QUERY, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = call i32 @resp_searchform(%struct.req* %202, i32 %216)
  %218 = load i64, i64* %6, align 8
  %219 = icmp ugt i64 %218, 1
  br i1 %219, label %220, label %279

220:                                              ; preds = %215
  %221 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %222

222:                                              ; preds = %274, %220
  %223 = load i64, i64* %10, align 8
  %224 = load i64, i64* %6, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %277

226:                                              ; preds = %222
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %228 = load i8*, i8** @scriptname, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i8*, i8** @scriptname, align 8
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %232, %226
  %236 = load %struct.req*, %struct.req** %4, align 8
  %237 = getelementptr inbounds %struct.req, %struct.req* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.req*, %struct.req** %4, align 8
  %241 = getelementptr inbounds %struct.req, %struct.req* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @strcmp(i8* %239, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %235
  %248 = load %struct.req*, %struct.req** %4, align 8
  %249 = getelementptr inbounds %struct.req, %struct.req* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %247, %235
  %254 = load %struct.manpage*, %struct.manpage** %5, align 8
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds %struct.manpage, %struct.manpage* %254, i64 %255
  %257 = getelementptr inbounds %struct.manpage, %struct.manpage* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %258)
  %260 = load %struct.manpage*, %struct.manpage** %5, align 8
  %261 = load i64, i64* %10, align 8
  %262 = getelementptr inbounds %struct.manpage, %struct.manpage* %260, i64 %261
  %263 = getelementptr inbounds %struct.manpage, %struct.manpage* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @html_print(i32 %264)
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %267 = load %struct.manpage*, %struct.manpage** %5, align 8
  %268 = load i64, i64* %10, align 8
  %269 = getelementptr inbounds %struct.manpage, %struct.manpage* %267, i64 %268
  %270 = getelementptr inbounds %struct.manpage, %struct.manpage* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @html_print(i32 %271)
  %273 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %274

274:                                              ; preds = %253
  %275 = load i64, i64* %10, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %10, align 8
  br label %222

277:                                              ; preds = %222
  %278 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %215
  %280 = load %struct.req*, %struct.req** %4, align 8
  %281 = getelementptr inbounds %struct.req, %struct.req* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %279
  %286 = load i64, i64* %6, align 8
  %287 = icmp eq i64 %286, 1
  br i1 %287, label %288, label %297

288:                                              ; preds = %285, %279
  %289 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %290 = load %struct.req*, %struct.req** %4, align 8
  %291 = load %struct.manpage*, %struct.manpage** %5, align 8
  %292 = load i64, i64* %11, align 8
  %293 = getelementptr inbounds %struct.manpage, %struct.manpage* %291, i64 %292
  %294 = getelementptr inbounds %struct.manpage, %struct.manpage* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @resp_show(%struct.req* %290, i8* %295)
  br label %297

297:                                              ; preds = %288, %285
  %298 = call i32 (...) @resp_end_html()
  br label %299

299:                                              ; preds = %297, %79, %29
  ret void
}

declare dso_local i64 @validate_filename(i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

declare dso_local i32 @pg_error_internal(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @resp_begin_html(i32, i32*, i8*) #1

declare dso_local i32 @resp_searchform(%struct.req*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @html_print(i32) #1

declare dso_local i32 @resp_show(%struct.req*, i8*) #1

declare dso_local i32 @resp_end_html(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
