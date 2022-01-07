; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_to_tmpdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_to_tmpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Source '%s' is unexpected kind\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_io_file_del_on_close = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i64*, i32*, i8*, i8*, i8*, i64, i64, %struct.TYPE_3__*, i64, i64, i32, i8*, i32*, i32*)* @copy_to_tmpdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_to_tmpdir(i32** %0, i64* %1, i32* %2, i8* %3, i8* %4, i8* %5, i64 %6, i64 %7, %struct.TYPE_3__* %8, i64 %9, i64 %10, i32 %11, i8* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_3__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i32** %0, i32*** %17, align 8
  store i64* %1, i64** %18, align 8
  store i32* %2, i32** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i8* %5, i8** %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i32 %11, i32* %28, align 4
  store i8* %12, i8** %29, align 8
  store i32* %13, i32** %30, align 8
  store i32* %14, i32** %31, align 8
  %37 = load i64*, i64** %18, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %15
  store i64* %35, i64** %18, align 8
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i32**, i32*** %17, align 8
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %18, align 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %32, align 8
  br label %58

52:                                               ; preds = %40
  %53 = load i8*, i8** %20, align 8
  %54 = load i64*, i64** %18, align 8
  %55 = load i32*, i32** %31, align 8
  %56 = call i32 @svn_io_check_special_path(i8* %53, i64* %54, i64* %32, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i64*, i64** %18, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @svn_node_none, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %16, align 8
  br label %234

65:                                               ; preds = %58
  %66 = load i64*, i64** %18, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @svn_node_unknown, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %73 = load i8*, i8** %20, align 8
  %74 = load i32*, i32** %31, align 8
  %75 = call i32 @svn_dirent_local_style(i8* %73, i32* %74)
  %76 = call i32* @svn_error_createf(i32 %71, i32* null, i32 %72, i32 %75)
  store i32* %76, i32** %16, align 8
  br label %234

77:                                               ; preds = %65
  %78 = load i64*, i64** %18, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @svn_node_dir, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %32, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82, %77
  %86 = load i32, i32* @svn_io_file_del_on_close, align 4
  store i32 %86, i32* %33, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @svn_io_file_del_none, align 4
  store i32 %88, i32* %33, align 4
  br label %89

89:                                               ; preds = %87, %85
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %23, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %91
  %95 = load i64, i64* %24, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %146, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %99 = icmp ne %struct.TYPE_3__* %98, null
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @svn_node_file, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i64, i64* %26, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load i64, i64* %27, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i64, i64* @FALSE, align 8
  store i64 %123, i64* %36, align 8
  br label %131

124:                                              ; preds = %116, %110, %106, %100, %97
  %125 = load i32*, i32** %19, align 8
  %126 = load i8*, i8** %20, align 8
  %127 = load i64, i64* @FALSE, align 8
  %128 = load i32*, i32** %31, align 8
  %129 = call i32 @svn_wc__internal_file_modified_p(i64* %36, i32* %125, i8* %126, i64 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %124, %122
  %132 = load i64, i64* %36, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %131
  %135 = load i32**, i32*** %17, align 8
  %136 = load i32*, i32** %19, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = load i32, i32* @TRUE, align 4
  %140 = load i32*, i32** %30, align 8
  %141 = load i32*, i32** %31, align 8
  %142 = call i32 @svn_wc__wq_build_file_install(i32** %135, i32* %136, i8* %137, i32* null, i64 %138, i32 %139, i32* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %144, i32** %16, align 8
  br label %234

145:                                              ; preds = %131
  br label %164

146:                                              ; preds = %94, %91
  %147 = load i64*, i64** %18, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @svn_node_dir, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load i64, i64* %23, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  %155 = load i32**, i32*** %17, align 8
  %156 = load i32*, i32** %19, align 8
  %157 = load i8*, i8** %21, align 8
  %158 = load i32*, i32** %30, align 8
  %159 = load i32*, i32** %31, align 8
  %160 = call i32 @svn_wc__wq_build_dir_install(i32** %155, i32* %156, i8* %157, i32* %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %162, i32** %16, align 8
  br label %234

163:                                              ; preds = %151, %146
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i8*, i8** %22, align 8
  %166 = load i32, i32* %33, align 4
  %167 = load i32*, i32** %31, align 8
  %168 = load i32*, i32** %31, align 8
  %169 = call i32 @svn_io_open_unique_file3(i32* null, i8** %34, i8* %165, i32 %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32 %169)
  %171 = load i64*, i64** %18, align 8
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @svn_node_dir, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %164
  %176 = load i64, i64* %23, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load i8*, i8** %20, align 8
  %180 = load i8*, i8** %22, align 8
  %181 = load i8*, i8** %34, align 8
  %182 = load i32*, i32** %31, align 8
  %183 = call i32 @svn_dirent_basename(i8* %181, i32* %182)
  %184 = load i32, i32* @TRUE, align 4
  %185 = load i32, i32* %28, align 4
  %186 = load i8*, i8** %29, align 8
  %187 = load i32*, i32** %31, align 8
  %188 = call i32 @svn_io_copy_dir_recursively(i8* %179, i8* %180, i32 %183, i32 %184, i32 %185, i8* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  br label %196

190:                                              ; preds = %175
  %191 = load i8*, i8** %34, align 8
  %192 = load i32, i32* @APR_OS_DEFAULT, align 4
  %193 = load i32*, i32** %31, align 8
  %194 = call i32 @svn_io_dir_make(i8* %191, i32 %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  br label %196

196:                                              ; preds = %190, %178
  br label %214

197:                                              ; preds = %164
  %198 = load i64, i64* %32, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load i8*, i8** %20, align 8
  %202 = load i8*, i8** %34, align 8
  %203 = load i32, i32* @TRUE, align 4
  %204 = load i32*, i32** %31, align 8
  %205 = call i32 @svn_io_copy_file(i8* %201, i8* %202, i32 %203, i32* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  br label %213

207:                                              ; preds = %197
  %208 = load i8*, i8** %20, align 8
  %209 = load i8*, i8** %34, align 8
  %210 = load i32*, i32** %31, align 8
  %211 = call i32 @svn_io_copy_link(i8* %208, i8* %209, i32* %210)
  %212 = call i32 @SVN_ERR(i32 %211)
  br label %213

213:                                              ; preds = %207, %200
  br label %214

214:                                              ; preds = %213, %196
  %215 = load i64, i64* %23, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i8*, i8** %34, align 8
  %219 = load i64, i64* @FALSE, align 8
  %220 = load i32*, i32** %31, align 8
  %221 = call i32 @svn_io_set_file_read_write(i8* %218, i64 %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  br label %223

223:                                              ; preds = %217, %214
  %224 = load i32**, i32*** %17, align 8
  %225 = load i32*, i32** %19, align 8
  %226 = load i8*, i8** %21, align 8
  %227 = load i8*, i8** %34, align 8
  %228 = load i8*, i8** %21, align 8
  %229 = load i32*, i32** %30, align 8
  %230 = load i32*, i32** %31, align 8
  %231 = call i32 @svn_wc__wq_build_file_move(i32** %224, i32* %225, i8* %226, i8* %227, i8* %228, i32* %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  %233 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %233, i32** %16, align 8
  br label %234

234:                                              ; preds = %223, %154, %134, %70, %63
  %235 = load i32*, i32** %16, align 8
  ret i32* %235
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i64*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i64*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32*, i8*, i32*, i64, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_dir_install(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_copy_dir_recursively(i8*, i8*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_io_copy_link(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_set_file_read_write(i8*, i64, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_move(i32**, i32*, i8*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
