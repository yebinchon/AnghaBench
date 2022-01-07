; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_io_copy_dir_recursively.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_io_copy_dir_recursively.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_FINFO_NAME = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Source '%s' is not a directory\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Destination '%s' is not a directory\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_REG = common dso_local global i64 0, align 8
@APR_LNK = common dso_local global i64 0, align 8
@APR_DIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't read directory '%s'\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error closing directory '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i32, i32* (i8*)*, i8*, i32*)* @hotcopy_io_copy_dir_recursively to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_io_copy_dir_recursively(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* (i8*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32* (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* (i8*)* %5, i32* (i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load i32, i32* @APR_FINFO_TYPE, align 4
  %30 = load i32, i32* @APR_FINFO_NAME, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %23, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = call i32* @svn_pool_create(i32* %32)
  store i32* %33, i32** %24, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i8* @svn_dirent_join(i8* %34, i8* %35, i32* %36)
  store i8* %37, i8** %20, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = call i32* @svn_io_check_path(i8* %38, i64* %18, i32* %39)
  %41 = call i32 @SVN_ERR(i32* %40)
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* @svn_node_dir, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %8
  %46 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @svn_dirent_local_style(i8* %48, i32* %49)
  %51 = call i32* @svn_error_createf(i32 %46, i32* null, i32 %47, i32 %50)
  store i32* %51, i32** %9, align 8
  br label %228

52:                                               ; preds = %8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32*, i32** %24, align 8
  %55 = call i32* @svn_io_check_path(i8* %53, i64* %18, i32* %54)
  %56 = call i32 @SVN_ERR(i32* %55)
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* @svn_node_dir, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %12, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = call i32 @svn_dirent_local_style(i8* %63, i32* %64)
  %66 = call i32* @svn_error_createf(i32 %61, i32* null, i32 %62, i32 %65)
  store i32* %66, i32** %9, align 8
  br label %228

67:                                               ; preds = %52
  %68 = load i8*, i8** %20, align 8
  %69 = load i32*, i32** %24, align 8
  %70 = call i32* @svn_io_check_path(i8* %68, i64* %18, i32* %69)
  %71 = call i32 @SVN_ERR(i32* %70)
  %72 = load i8*, i8** %20, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = call i32* @svn_io_make_dir_recursively(i8* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = load i32*, i32** %24, align 8
  %78 = call i32* @svn_io_dir_open(i32** %21, i8* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32* %78)
  %80 = load i32, i32* %23, align 4
  %81 = load i32*, i32** %21, align 8
  %82 = call i64 @apr_dir_read(%struct.TYPE_3__* %22, i32 %80, i32* %81)
  store i64 %82, i64* %19, align 8
  br label %83

83:                                               ; preds = %197, %67
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* @APR_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %201

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %94, label %116

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %94
  br label %197

116:                                              ; preds = %108, %101, %87
  %117 = load i32* (i8*)*, i32* (i8*)** %15, align 8
  %118 = icmp ne i32* (i8*)* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32* (i8*)*, i32* (i8*)** %15, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = call i32* %120(i8* %121)
  %123 = call i32 @SVN_ERR(i32* %122)
  br label %124

124:                                              ; preds = %119, %116
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load i32*, i32** %24, align 8
  %129 = call i32* @entry_name_to_utf8(i8** %25, i8* %126, i8* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32* %129)
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @APR_REG, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %124
  %136 = load i32*, i32** %10, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = load i8*, i8** %25, align 8
  %140 = load i32*, i32** %24, align 8
  %141 = call i32* @hotcopy_io_dir_file_copy(i32* %136, i8* %137, i8* %138, i8* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32* %141)
  br label %195

143:                                              ; preds = %124
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @APR_LNK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load i8*, i8** %11, align 8
  %150 = load i8*, i8** %25, align 8
  %151 = load i32*, i32** %24, align 8
  %152 = call i8* @svn_dirent_join(i8* %149, i8* %150, i32* %151)
  store i8* %152, i8** %26, align 8
  %153 = load i8*, i8** %20, align 8
  %154 = load i8*, i8** %25, align 8
  %155 = load i32*, i32** %24, align 8
  %156 = call i8* @svn_dirent_join(i8* %153, i8* %154, i32* %155)
  store i8* %156, i8** %27, align 8
  %157 = load i8*, i8** %26, align 8
  %158 = load i8*, i8** %27, align 8
  %159 = load i32*, i32** %24, align 8
  %160 = call i32* @svn_io_copy_link(i8* %157, i8* %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32* %160)
  br label %194

162:                                              ; preds = %143
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @APR_DIR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %162
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = call i64 @strcmp(i8* %168, i8* %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i8*, i8** %25, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = call i64 @strcmp(i8* %173, i8* %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %197

178:                                              ; preds = %172, %167
  %179 = load i8*, i8** %11, align 8
  %180 = load i8*, i8** %25, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = call i8* @svn_dirent_join(i8* %179, i8* %180, i32* %181)
  store i8* %182, i8** %28, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = load i8*, i8** %28, align 8
  %185 = load i8*, i8** %20, align 8
  %186 = load i8*, i8** %25, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i32* (i8*)*, i32* (i8*)** %15, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = load i32*, i32** %24, align 8
  %191 = call i32* @hotcopy_io_copy_dir_recursively(i32* %183, i8* %184, i8* %185, i8* %186, i32 %187, i32* (i8*)* %188, i8* %189, i32* %190)
  %192 = call i32 @SVN_ERR(i32* %191)
  br label %193

193:                                              ; preds = %178, %162
  br label %194

194:                                              ; preds = %193, %148
  br label %195

195:                                              ; preds = %194, %135
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196, %177, %115
  %198 = load i32, i32* %23, align 4
  %199 = load i32*, i32** %21, align 8
  %200 = call i64 @apr_dir_read(%struct.TYPE_3__* %22, i32 %198, i32* %199)
  store i64 %200, i64* %19, align 8
  br label %83

201:                                              ; preds = %83
  %202 = load i64, i64* %19, align 8
  %203 = call i32 @APR_STATUS_IS_ENOENT(i64 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %19, align 8
  %207 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %208 = load i8*, i8** %11, align 8
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 @svn_dirent_local_style(i8* %208, i32* %209)
  %211 = call i32* @svn_error_wrap_apr(i64 %206, i32 %207, i32 %210)
  store i32* %211, i32** %9, align 8
  br label %228

212:                                              ; preds = %201
  %213 = load i32*, i32** %21, align 8
  %214 = call i64 @apr_dir_close(i32* %213)
  store i64 %214, i64* %19, align 8
  %215 = load i64, i64* %19, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load i64, i64* %19, align 8
  %219 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %220 = load i8*, i8** %11, align 8
  %221 = load i32*, i32** %17, align 8
  %222 = call i32 @svn_dirent_local_style(i8* %220, i32* %221)
  %223 = call i32* @svn_error_wrap_apr(i64 %218, i32 %219, i32 %222)
  store i32* %223, i32** %9, align 8
  br label %228

224:                                              ; preds = %212
  %225 = load i32*, i32** %24, align 8
  %226 = call i32 @svn_pool_destroy(i32* %225)
  %227 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %227, i32** %9, align 8
  br label %228

228:                                              ; preds = %224, %217, %205, %60, %45
  %229 = load i32*, i32** %9, align 8
  ret i32* %229
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local i32* @svn_io_dir_open(i32**, i8*, i32*) #1

declare dso_local i64 @apr_dir_read(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32* @entry_name_to_utf8(i8**, i8*, i8*, i32*) #1

declare dso_local i32* @hotcopy_io_dir_file_copy(i32*, i8*, i8*, i8*, i32*) #1

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
