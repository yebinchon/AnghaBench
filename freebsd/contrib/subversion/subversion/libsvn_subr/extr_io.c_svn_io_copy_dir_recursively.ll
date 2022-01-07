; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_copy_dir_recursively.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_copy_dir_recursively.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_FINFO_NAME = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Source '%s' is not a directory\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Destination '%s' is not a directory\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Destination '%s' already exists\00", align 1
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_REG = common dso_local global i64 0, align 8
@APR_LNK = common dso_local global i64 0, align 8
@APR_DIR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't read directory '%s'\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error closing directory '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_copy_dir_recursively(i8* %0, i8* %1, i8* %2, i32 %3, i32* (i8*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32* (i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* (i8*)* %4, i32* (i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32, i32* @APR_FINFO_TYPE, align 4
  %28 = load i32, i32* @APR_FINFO_NAME, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %21, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %22, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i8* @svn_dirent_join(i8* %32, i8* %33, i32* %34)
  store i8* %35, i8** %18, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32*, i32** %22, align 8
  %38 = call i32* @svn_io_check_path(i8* %36, i64* %16, i32* %37)
  %39 = call i32 @SVN_ERR(i32* %38)
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @svn_node_dir, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %7
  %44 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @svn_dirent_local_style(i8* %46, i32* %47)
  %49 = call i32* @svn_error_createf(i32 %44, i32* null, i32 %45, i32 %48)
  store i32* %49, i32** %8, align 8
  br label %236

50:                                               ; preds = %7
  %51 = load i8*, i8** %10, align 8
  %52 = load i32*, i32** %22, align 8
  %53 = call i32* @svn_io_check_path(i8* %51, i64* %16, i32* %52)
  %54 = call i32 @SVN_ERR(i32* %53)
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @svn_node_dir, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %10, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @svn_dirent_local_style(i8* %61, i32* %62)
  %64 = call i32* @svn_error_createf(i32 %59, i32* null, i32 %60, i32 %63)
  store i32* %64, i32** %8, align 8
  br label %236

65:                                               ; preds = %50
  %66 = load i8*, i8** %18, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = call i32* @svn_io_check_path(i8* %66, i64* %16, i32* %67)
  %69 = call i32 @SVN_ERR(i32* %68)
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @svn_node_none, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i8*, i8** %18, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @svn_dirent_local_style(i8* %76, i32* %77)
  %79 = call i32* @svn_error_createf(i32 %74, i32* null, i32 %75, i32 %78)
  store i32* %79, i32** %8, align 8
  br label %236

80:                                               ; preds = %65
  %81 = load i8*, i8** %18, align 8
  %82 = load i32, i32* @APR_OS_DEFAULT, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = call i32* @svn_io_dir_make(i8* %81, i32 %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32* %84)
  %86 = load i8*, i8** %9, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = call i32* @svn_io_dir_open(i32** %19, i8* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32* %88)
  %90 = load i32, i32* %21, align 4
  %91 = load i32*, i32** %19, align 8
  %92 = call i64 @apr_dir_read(%struct.TYPE_3__* %20, i32 %90, i32* %91)
  store i64 %92, i64* %17, align 8
  br label %93

93:                                               ; preds = %205, %80
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* @APR_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %209

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %104, label %126

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118, %104
  br label %205

126:                                              ; preds = %118, %111, %97
  %127 = load i32* (i8*)*, i32* (i8*)** %13, align 8
  %128 = icmp ne i32* (i8*)* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32* (i8*)*, i32* (i8*)** %13, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i32* %130(i8* %131)
  %133 = call i32 @SVN_ERR(i32* %132)
  br label %134

134:                                              ; preds = %129, %126
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = call i32* @entry_name_to_utf8(i8** %24, i8* %136, i8* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32* %139)
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = load i32*, i32** %22, align 8
  %144 = call i8* @svn_dirent_join(i8* %141, i8* %142, i32* %143)
  store i8* %144, i8** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @APR_REG, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %134
  %150 = load i8*, i8** %18, align 8
  %151 = load i8*, i8** %24, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = call i8* @svn_dirent_join(i8* %150, i8* %151, i32* %152)
  store i8* %153, i8** %25, align 8
  %154 = load i8*, i8** %23, align 8
  %155 = load i8*, i8** %25, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %22, align 8
  %158 = call i32* @svn_io_copy_file(i8* %154, i8* %155, i32 %156, i32* %157)
  %159 = call i32 @SVN_ERR(i32* %158)
  br label %203

160:                                              ; preds = %134
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @APR_LNK, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load i8*, i8** %18, align 8
  %167 = load i8*, i8** %24, align 8
  %168 = load i32*, i32** %22, align 8
  %169 = call i8* @svn_dirent_join(i8* %166, i8* %167, i32* %168)
  store i8* %169, i8** %26, align 8
  %170 = load i8*, i8** %23, align 8
  %171 = load i8*, i8** %26, align 8
  %172 = load i32*, i32** %22, align 8
  %173 = call i32* @svn_io_copy_link(i8* %170, i8* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32* %173)
  br label %202

175:                                              ; preds = %160
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @APR_DIR, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %175
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = call i64 @strcmp(i8* %181, i8* %182)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i8*, i8** %24, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = call i64 @strcmp(i8* %186, i8* %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %205

191:                                              ; preds = %185, %180
  %192 = load i8*, i8** %23, align 8
  %193 = load i8*, i8** %18, align 8
  %194 = load i8*, i8** %24, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load i32* (i8*)*, i32* (i8*)** %13, align 8
  %197 = load i8*, i8** %14, align 8
  %198 = load i32*, i32** %22, align 8
  %199 = call i32* @svn_io_copy_dir_recursively(i8* %192, i8* %193, i8* %194, i32 %195, i32* (i8*)* %196, i8* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32* %199)
  br label %201

201:                                              ; preds = %191, %175
  br label %202

202:                                              ; preds = %201, %165
  br label %203

203:                                              ; preds = %202, %149
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %190, %125
  %206 = load i32, i32* %21, align 4
  %207 = load i32*, i32** %19, align 8
  %208 = call i64 @apr_dir_read(%struct.TYPE_3__* %20, i32 %206, i32* %207)
  store i64 %208, i64* %17, align 8
  br label %93

209:                                              ; preds = %93
  %210 = load i64, i64* %17, align 8
  %211 = call i32 @APR_STATUS_IS_ENOENT(i64 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %17, align 8
  %215 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %216 = load i8*, i8** %9, align 8
  %217 = load i32*, i32** %15, align 8
  %218 = call i32 @svn_dirent_local_style(i8* %216, i32* %217)
  %219 = call i32* @svn_error_wrap_apr(i64 %214, i32 %215, i32 %218)
  store i32* %219, i32** %8, align 8
  br label %236

220:                                              ; preds = %209
  %221 = load i32*, i32** %19, align 8
  %222 = call i64 @apr_dir_close(i32* %221)
  store i64 %222, i64* %17, align 8
  %223 = load i64, i64* %17, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load i64, i64* %17, align 8
  %227 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %228 = load i8*, i8** %9, align 8
  %229 = load i32*, i32** %15, align 8
  %230 = call i32 @svn_dirent_local_style(i8* %228, i32* %229)
  %231 = call i32* @svn_error_wrap_apr(i64 %226, i32 %227, i32 %230)
  store i32* %231, i32** %8, align 8
  br label %236

232:                                              ; preds = %220
  %233 = load i32*, i32** %22, align 8
  %234 = call i32 @svn_pool_destroy(i32* %233)
  %235 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %235, i32** %8, align 8
  br label %236

236:                                              ; preds = %232, %225, %213, %73, %58, %43
  %237 = load i32*, i32** %8, align 8
  ret i32* %237
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32* @svn_io_dir_open(i32**, i8*, i32*) #1

declare dso_local i64 @apr_dir_read(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32* @entry_name_to_utf8(i8**, i8*, i8*, i32*) #1

declare dso_local i32* @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i32* @svn_io_copy_link(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i64 @apr_dir_close(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
