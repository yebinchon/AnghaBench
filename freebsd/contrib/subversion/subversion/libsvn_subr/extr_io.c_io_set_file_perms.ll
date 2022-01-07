; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_io_set_file_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_io_set_file_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@APR_FINFO_PROT = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_ENOTIMPL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Can't change perms of file '%s'\00", align 1
@APR_LNK = common dso_local global i64 0, align 8
@APR_UREAD = common dso_local global i32 0, align 4
@APR_UWRITE = common dso_local global i32 0, align 4
@APR_GREAD = common dso_local global i32 0, align 4
@APR_GWRITE = common dso_local global i32 0, align 4
@APR_WREAD = common dso_local global i32 0, align 4
@APR_WWRITE = common dso_local global i32 0, align 4
@APR_UEXECUTE = common dso_local global i32 0, align 4
@APR_GEXECUTE = common dso_local global i32 0, align 4
@APR_WEXECUTE = common dso_local global i32 0, align 4
@APR_FILE_ATTR_READONLY = common dso_local global i32 0, align 4
@APR_FILE_ATTR_EXECUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64, i64, i64, i64, i32*)* @io_set_file_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @io_set_file_perms(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_3__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @cstring_from_utf8(i8** %17, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i8*, i8** %17, align 8
  %27 = load i32, i32* @APR_FINFO_PROT, align 4
  %28 = load i32, i32* @APR_FINFO_LINK, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %15, align 8
  %31 = call i64 @apr_stat(%struct.TYPE_3__* %18, i8* %26, i32 %29, i32* %30)
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %7
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i64, i64* %16, align 8
  %39 = call i64 @APR_STATUS_IS_ENOENT(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %16, align 8
  %43 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %8, align 8
  br label %268

47:                                               ; preds = %41, %34
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* @APR_ENOTIMPL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %9, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @svn_dirent_local_style(i8* %54, i32* %55)
  %57 = call i32* @svn_error_wrap_apr(i64 %52, i32 %53, i32 %56)
  store i32* %57, i32** %8, align 8
  br label %268

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %8, align 8
  br label %268

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @APR_LNK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %8, align 8
  br label %268

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %19, align 4
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %68
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* @APR_UREAD, align 4
  %78 = load i32, i32* @APR_UWRITE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %19, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %19, align 4
  br label %116

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @APR_UREAD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @APR_UWRITE, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %19, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %88, %82
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @APR_GREAD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* @APR_GWRITE, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %19, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %99, %93
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @APR_WREAD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @APR_WWRITE, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %19, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %110, %104
  br label %116

116:                                              ; preds = %115, %76
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i64, i64* %12, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %189

120:                                              ; preds = %117
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @APR_UREAD, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @APR_UEXECUTE, align 4
  %131 = load i32, i32* %19, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %129, %123
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @APR_GREAD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @APR_GEXECUTE, align 4
  %141 = load i32, i32* %19, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %139, %133
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @APR_WREAD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* @APR_WEXECUTE, align 4
  %151 = load i32, i32* %19, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %149, %143
  br label %188

154:                                              ; preds = %120
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @APR_UREAD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load i32, i32* @APR_UEXECUTE, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %19, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %19, align 4
  br label %165

165:                                              ; preds = %160, %154
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @APR_GREAD, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, i32* @APR_GEXECUTE, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %19, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %19, align 4
  br label %176

176:                                              ; preds = %171, %165
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @APR_WREAD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load i32, i32* @APR_WEXECUTE, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %19, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %19, align 4
  br label %187

187:                                              ; preds = %182, %176
  br label %188

188:                                              ; preds = %187, %153
  br label %189

189:                                              ; preds = %188, %117
  %190 = load i32, i32* %19, align 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %195, i32** %8, align 8
  br label %268

196:                                              ; preds = %189
  %197 = load i8*, i8** %17, align 8
  %198 = load i32, i32* %19, align 4
  %199 = call i64 @apr_file_perms_set(i8* %197, i32 %198)
  store i64 %199, i64* %16, align 8
  %200 = load i64, i64* %16, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %196
  %203 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %203, i32** %8, align 8
  br label %268

204:                                              ; preds = %196
  %205 = load i64, i64* %16, align 8
  %206 = call i64 @APR_STATUS_IS_EPERM(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i8*, i8** %9, align 8
  %210 = load i32*, i32** %15, align 8
  %211 = call i32 @reown_file(i8* %209, i32* %210)
  %212 = call i32 @SVN_ERR(i32 %211)
  %213 = load i8*, i8** %17, align 8
  %214 = load i32, i32* %19, align 4
  %215 = call i64 @apr_file_perms_set(i8* %213, i32 %214)
  store i64 %215, i64* %16, align 8
  br label %216

216:                                              ; preds = %208, %204
  %217 = load i64, i64* %16, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %220, i32** %8, align 8
  br label %268

221:                                              ; preds = %216
  %222 = load i64, i64* %14, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i64, i64* %16, align 8
  %226 = call i64 @APR_STATUS_IS_ENOENT(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %229, i32** %8, align 8
  br label %268

230:                                              ; preds = %224, %221
  %231 = load i64, i64* %16, align 8
  %232 = load i64, i64* @APR_ENOTIMPL, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %260

234:                                              ; preds = %230
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %235 = load i64, i64* %10, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i32, i32* @APR_FILE_ATTR_READONLY, align 4
  store i32 %238, i32* %20, align 4
  %239 = load i64, i64* %11, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @APR_FILE_ATTR_READONLY, align 4
  store i32 %242, i32* %21, align 4
  br label %243

243:                                              ; preds = %241, %237
  br label %244

244:                                              ; preds = %243, %234
  %245 = load i64, i64* %12, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load i32, i32* @APR_FILE_ATTR_EXECUTABLE, align 4
  store i32 %248, i32* %20, align 4
  %249 = load i64, i64* %13, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i32, i32* @APR_FILE_ATTR_EXECUTABLE, align 4
  store i32 %252, i32* %21, align 4
  br label %253

253:                                              ; preds = %251, %247
  br label %254

254:                                              ; preds = %253, %244
  %255 = load i8*, i8** %17, align 8
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32*, i32** %15, align 8
  %259 = call i64 @apr_file_attrs_set(i8* %255, i32 %256, i32 %257, i32* %258)
  store i64 %259, i64* %16, align 8
  br label %260

260:                                              ; preds = %254, %230
  br label %261

261:                                              ; preds = %260
  %262 = load i64, i64* %16, align 8
  %263 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %264 = load i8*, i8** %9, align 8
  %265 = load i32*, i32** %15, align 8
  %266 = call i32 @svn_dirent_local_style(i8* %264, i32* %265)
  %267 = call i32* @svn_error_wrap_apr(i64 %262, i32 %263, i32 %266)
  store i32* %267, i32** %8, align 8
  br label %268

268:                                              ; preds = %261, %228, %219, %202, %194, %66, %59, %51, %45
  %269 = load i32*, i32** %8, align 8
  ret i32* %269
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_stat(%struct.TYPE_3__*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i64) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @apr_file_perms_set(i8*, i32) #1

declare dso_local i64 @APR_STATUS_IS_EPERM(i64) #1

declare dso_local i32 @reown_file(i8*, i32*) #1

declare dso_local i64 @apr_file_attrs_set(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
