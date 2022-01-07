; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_open_uniquely_named.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_open_uniquely_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_file_cleanup_s = type { i32*, i32* }
%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tempfile\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@svn_io_file_del_on_pool_cleanup = common dso_local global i64 0, align 8
@temp_file_plain_cleanup_handler = common dso_local global i32 0, align 4
@temp_file_child_cleanup_handler = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_EXCL = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_BINARY = common dso_local global i32 0, align 4
@svn_io_file_del_on_close = common dso_local global i64 0, align 8
@APR_DELONCLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s.%u%s\00", align 1
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_DIR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Can't open '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_IO_UNIQUE_NAMES_EXHAUSTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to make name for '%s'\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@ERROR_SHARING_VIOLATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_open_uniquely_named(i32** %0, i8** %1, i8* %2, i8* %3, i8* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.temp_file_cleanup_s*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_3__, align 8
  %28 = alloca i64, align 8
  store i32** %0, i32*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.temp_file_cleanup_s* null, %struct.temp_file_cleanup_s** %20, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %21, align 4
  %30 = load i32**, i32*** %10, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load i8**, i8*** %11, align 8
  %34 = icmp ne i8** %33, null
  br label %35

35:                                               ; preds = %32, %8
  %36 = phi i1 [ true, %8 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i8*, i8** %12, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @svn_io_temp_dir(i8** %12, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i8*, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i8* @svn_dirent_join(i8* %54, i8* %55, i32* %56)
  store i8* %57, i8** %18, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @svn_io_file_del_on_pool_cleanup, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  %62 = load i32*, i32** %16, align 8
  %63 = call %struct.temp_file_cleanup_s* @apr_palloc(i32* %62, i32 16)
  store %struct.temp_file_cleanup_s* %63, %struct.temp_file_cleanup_s** %20, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %20, align 8
  %66 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %20, align 8
  %68 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %20, align 8
  %71 = load i32, i32* @temp_file_plain_cleanup_handler, align 4
  %72 = load i32, i32* @temp_file_child_cleanup_handler, align 4
  %73 = call i32 @apr_pool_cleanup_register(i32* %69, %struct.temp_file_cleanup_s* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %53
  store i32 1, i32* %19, align 4
  br label %75

75:                                               ; preds = %207, %74
  %76 = load i32, i32* %19, align 4
  %77 = icmp ule i32 %76, 99999
  br i1 %77, label %78, label %210

78:                                               ; preds = %75
  %79 = load i32, i32* @APR_READ, align 4
  %80 = load i32, i32* @APR_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @APR_CREATE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @APR_EXCL, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @APR_BUFFERED, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @APR_BINARY, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %26, align 4
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @svn_io_file_del_on_close, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @APR_DELONCLOSE, align 4
  %95 = load i32, i32* %26, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %26, align 4
  br label %97

97:                                               ; preds = %93, %78
  %98 = load i32, i32* %19, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32*, i32** %17, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %102, i8* %103)
  store i8* %104, i8** %22, align 8
  br label %111

105:                                              ; preds = %97
  %106 = load i32*, i32** %17, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %107, i32 %108, i8* %109)
  store i8* %110, i8** %22, align 8
  br label %111

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i8*, i8** %22, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = call i32 @cstring_from_utf8(i8** %23, i8* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32, i32* %19, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i8*, i8** %23, align 8
  %123 = load i8*, i8** %22, align 8
  %124 = call i32 @strcmp(i8* %122, i8* %123)
  store i32 %124, i32* %21, align 4
  br label %125

125:                                              ; preds = %121, %114
  br label %128

126:                                              ; preds = %111
  %127 = load i8*, i8** %22, align 8
  store i8* %127, i8** %23, align 8
  br label %128

128:                                              ; preds = %126, %125
  %129 = load i8*, i8** %23, align 8
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* @APR_OS_DEFAULT, align 4
  %132 = load i32, i32* @FALSE, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = call i64 @file_open(i32** %24, i8* %129, i32 %130, i32 %131, i32 %132, i32* %133)
  store i64 %134, i64* %25, align 8
  %135 = load i64, i64* %25, align 8
  %136 = call i64 @APR_STATUS_IS_EEXIST(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %207

139:                                              ; preds = %128
  %140 = load i64, i64* %25, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %139
  %143 = load i64, i64* %25, align 8
  %144 = call i64 @APR_STATUS_IS_EACCES(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %142
  %147 = load i8*, i8** %23, align 8
  %148 = load i32, i32* @APR_FINFO_TYPE, align 4
  %149 = load i32*, i32** %17, align 8
  %150 = call i64 @apr_stat(%struct.TYPE_3__* %27, i8* %147, i32 %148, i32* %149)
  store i64 %150, i64* %28, align 8
  %151 = load i64, i64* %28, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @APR_DIR, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %207

159:                                              ; preds = %153, %146
  br label %160

160:                                              ; preds = %159, %142
  %161 = load i32**, i32*** %10, align 8
  %162 = icmp ne i32** %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32**, i32*** %10, align 8
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i8**, i8*** %11, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i8**, i8*** %11, align 8
  store i8* null, i8** %169, align 8
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i64, i64* %25, align 8
  %172 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i8*, i8** %22, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = call i32 @svn_dirent_local_style(i8* %173, i32* %174)
  %176 = call i32* @svn_error_wrap_apr(i64 %171, i32 %172, i32 %175)
  store i32* %176, i32** %9, align 8
  br label %227

177:                                              ; preds = %139
  %178 = load i64, i64* %15, align 8
  %179 = load i64, i64* @svn_io_file_del_on_pool_cleanup, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i32*, i32** %16, align 8
  %183 = load i8*, i8** %23, align 8
  %184 = call i8* @apr_pstrdup(i32* %182, i8* %183)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %20, align 8
  %187 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %186, i32 0, i32 0
  store i32* %185, i32** %187, align 8
  br label %188

188:                                              ; preds = %181, %177
  %189 = load i32**, i32*** %10, align 8
  %190 = icmp ne i32** %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32*, i32** %24, align 8
  %193 = load i32**, i32*** %10, align 8
  store i32* %192, i32** %193, align 8
  br label %197

194:                                              ; preds = %188
  %195 = load i32*, i32** %24, align 8
  %196 = call i32 @apr_file_close(i32* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i8**, i8*** %11, align 8
  %199 = icmp ne i8** %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i32*, i32** %16, align 8
  %202 = load i8*, i8** %22, align 8
  %203 = call i8* @apr_pstrdup(i32* %201, i8* %202)
  %204 = load i8**, i8*** %11, align 8
  store i8* %203, i8** %204, align 8
  br label %205

205:                                              ; preds = %200, %197
  %206 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %206, i32** %9, align 8
  br label %227

207:                                              ; preds = %158, %138
  %208 = load i32, i32* %19, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %75

210:                                              ; preds = %75
  %211 = load i32**, i32*** %10, align 8
  %212 = icmp ne i32** %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32**, i32*** %10, align 8
  store i32* null, i32** %214, align 8
  br label %215

215:                                              ; preds = %213, %210
  %216 = load i8**, i8*** %11, align 8
  %217 = icmp ne i8** %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i8**, i8*** %11, align 8
  store i8* null, i8** %219, align 8
  br label %220

220:                                              ; preds = %218, %215
  %221 = load i32, i32* @SVN_ERR_IO_UNIQUE_NAMES_EXHAUSTED, align 4
  %222 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %223 = load i8*, i8** %18, align 8
  %224 = load i32*, i32** %17, align 8
  %225 = call i32 @svn_dirent_local_style(i8* %223, i32* %224)
  %226 = call i32* @svn_error_createf(i32 %221, i32* null, i32 %222, i32 %225)
  store i32* %226, i32** %9, align 8
  br label %227

227:                                              ; preds = %220, %205, %170
  %228 = load i32*, i32** %9, align 8
  ret i32* %228
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_temp_dir(i8**, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local %struct.temp_file_cleanup_s* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.temp_file_cleanup_s*, i32, i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @file_open(i32**, i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EEXIST(i64) #1

declare dso_local i64 @APR_STATUS_IS_EACCES(i64) #1

declare dso_local i64 @apr_stat(%struct.TYPE_3__*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_file_close(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
