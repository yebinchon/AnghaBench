; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_svn_cl__merge_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_svn_cl__merge_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_merge_baton = type { i8*, i8*, i8*, i32*, i32*, i32*, i64, i64, i64, i32*, i32*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"Merging '%s'.\0A\00", align 1
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@file_merge_diff_output_fns = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Merge of '%s' aborted.\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [89 x i8] c"Could not write merged result to '%s', saved instead at '%s'.\0A'%s' remains in conflict.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Merge of '%s' completed (remains in conflict).\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Merge of '%s' completed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__merge_file(i8** %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.file_merge_baton, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  store i8** %0, i8*** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %39 = load i8*, i8** %20, align 8
  %40 = load i8*, i8** %19, align 8
  %41 = call i8* @svn_dirent_skip_ancestor(i8* %39, i8* %40)
  store i8* %41, i8** %38, align 8
  %42 = load i8*, i8** %38, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %12
  %45 = load i8*, i8** %38, align 8
  %46 = load i32*, i32** %25, align 8
  %47 = call i8* @svn_dirent_local_style(i8* %45, i32* %46)
  store i8* %47, i8** %37, align 8
  br label %52

48:                                               ; preds = %12
  %49 = load i8*, i8** %19, align 8
  %50 = load i32*, i32** %25, align 8
  %51 = call i8* @svn_dirent_local_style(i8* %49, i32* %50)
  store i8* %51, i8** %37, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %25, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %37, align 8
  %56 = call i32 @svn_cmdline_printf(i32* %53, i32 %54, i8* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* @APR_READ, align 4
  %60 = load i32, i32* @APR_BUFFERED, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @APR_OS_DEFAULT, align 4
  %63 = load i32*, i32** %25, align 8
  %64 = call i32 @svn_io_file_open(i32** %28, i8* %58, i32 %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* @APR_READ, align 4
  %68 = load i32, i32* @APR_BUFFERED, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @APR_OS_DEFAULT, align 4
  %71 = load i32*, i32** %25, align 8
  %72 = call i32 @svn_io_file_open(i32** %29, i8* %66, i32 %69, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* @APR_READ, align 4
  %76 = load i32, i32* @APR_BUFFERED, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @APR_OS_DEFAULT, align 4
  %79 = load i32*, i32** %25, align 8
  %80 = call i32 @svn_io_file_open(i32** %30, i8* %74, i32 %77, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32, i32* @svn_io_file_del_none, align 4
  %83 = load i32*, i32** %25, align 8
  %84 = load i32*, i32** %25, align 8
  %85 = call i32 @svn_io_open_unique_file3(i32** %31, i8** %32, i32* null, i32 %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %25, align 8
  %88 = call i32* @svn_diff_file_options_create(i32* %87)
  store i32* %88, i32** %27, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i32*, i32** %27, align 8
  %93 = load i32*, i32** %25, align 8
  %94 = call i32 @svn_diff_file_diff3_2(i32** %26, i8* %89, i8* %90, i8* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32*, i32** %28, align 8
  %97 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 11
  store i32* %96, i32** %97, align 8
  %98 = load i32*, i32** %29, align 8
  %99 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 10
  store i32* %98, i32** %99, align 8
  %100 = load i32*, i32** %30, align 8
  %101 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 9
  store i32* %100, i32** %101, align 8
  %102 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 8
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 7
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load i32*, i32** %31, align 8
  %106 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 5
  store i32* %105, i32** %106, align 8
  %107 = load i8*, i8** @FALSE, align 8
  %108 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** %21, align 8
  %110 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = load i32*, i32** %22, align 8
  %112 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 4
  store i32* %111, i32** %112, align 8
  %113 = load i8*, i8** @FALSE, align 8
  %114 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 2
  store i8* %113, i8** %114, align 8
  %115 = load i32*, i32** %25, align 8
  %116 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 3
  store i32* %115, i32** %116, align 8
  %117 = load i32*, i32** %26, align 8
  %118 = load i32, i32* %23, align 4
  %119 = load i8*, i8** %24, align 8
  %120 = call i32 @svn_diff_output2(i32* %117, %struct.file_merge_baton* %33, i32* @file_merge_diff_output_fns, i32 %118, i8* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i32*, i32** %28, align 8
  %123 = load i32*, i32** %25, align 8
  %124 = call i32 @svn_io_file_close(i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32*, i32** %29, align 8
  %127 = load i32*, i32** %25, align 8
  %128 = call i32 @svn_io_file_close(i32* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32*, i32** %30, align 8
  %131 = load i32*, i32** %25, align 8
  %132 = call i32 @svn_io_file_close(i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i32*, i32** %31, align 8
  %135 = load i32*, i32** %25, align 8
  %136 = call i32 @svn_io_file_close(i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i8**, i8*** %14, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %52
  %141 = load i8*, i8** @TRUE, align 8
  %142 = load i8**, i8*** %14, align 8
  store i8* %141, i8** %142, align 8
  br label %143

143:                                              ; preds = %140, %52
  %144 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load i8*, i8** %32, align 8
  %149 = load i8*, i8** @TRUE, align 8
  %150 = load i32*, i32** %25, align 8
  %151 = call i32 @svn_io_remove_file2(i8* %148, i8* %149, i32* %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  %153 = load i32*, i32** %25, align 8
  %154 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i8*, i8** %37, align 8
  %156 = call i32 @svn_cmdline_printf(i32* %153, i32 %154, i8* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %158, i32** %13, align 8
  br label %227

159:                                              ; preds = %143
  %160 = load i8*, i8** %18, align 8
  %161 = load i32*, i32** %25, align 8
  %162 = call i32 @svn_io_is_file_executable(i8** %34, i8* %160, i32* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  %164 = load i8*, i8** %20, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = call i8* @svn_dirent_skip_ancestor(i8* %164, i8* %165)
  store i8* %166, i8** %36, align 8
  %167 = load i8*, i8** %36, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load i8*, i8** %36, align 8
  %171 = load i32*, i32** %25, align 8
  %172 = call i8* @svn_dirent_local_style(i8* %170, i32* %171)
  store i8* %172, i8** %35, align 8
  br label %177

173:                                              ; preds = %159
  %174 = load i8*, i8** %18, align 8
  %175 = load i32*, i32** %25, align 8
  %176 = call i8* @svn_dirent_local_style(i8* %174, i32* %175)
  store i8* %176, i8** %35, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i8*, i8** %32, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = load i8*, i8** @FALSE, align 8
  %181 = load i32*, i32** %25, align 8
  %182 = call i32 @svn_io_copy_file(i8* %178, i8* %179, i8* %180, i32* %181)
  %183 = load i32*, i32** %25, align 8
  %184 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  %185 = load i8*, i8** %35, align 8
  %186 = load i8*, i8** %32, align 8
  %187 = load i32*, i32** %25, align 8
  %188 = call i8* @svn_dirent_local_style(i8* %186, i32* %187)
  %189 = load i8*, i8** %37, align 8
  %190 = call i32 @apr_psprintf(i32* %183, i32 %184, i8* %185, i8* %188, i8* %189)
  %191 = call i32 @SVN_ERR_W(i32 %182, i32 %190)
  %192 = load i8*, i8** %18, align 8
  %193 = load i8*, i8** %34, align 8
  %194 = load i8*, i8** @FALSE, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = call i32 @svn_io_set_file_executable(i8* %192, i8* %193, i8* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i8*, i8** %32, align 8
  %199 = load i8*, i8** @TRUE, align 8
  %200 = load i32*, i32** %25, align 8
  %201 = call i32 @svn_io_remove_file2(i8* %198, i8* %199, i32* %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  %203 = load i8**, i8*** %14, align 8
  %204 = icmp ne i8** %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %177
  %206 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i8**, i8*** %14, align 8
  store i8* %207, i8** %208, align 8
  br label %209

209:                                              ; preds = %205, %177
  %210 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %33, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32*, i32** %25, align 8
  %215 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %216 = load i8*, i8** %37, align 8
  %217 = call i32 @svn_cmdline_printf(i32* %214, i32 %215, i8* %216)
  %218 = call i32 @SVN_ERR(i32 %217)
  br label %225

219:                                              ; preds = %209
  %220 = load i32*, i32** %25, align 8
  %221 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %222 = load i8*, i8** %37, align 8
  %223 = call i32 @svn_cmdline_printf(i32* %220, i32 %221, i8* %222)
  %224 = call i32 @SVN_ERR(i32 %223)
  br label %225

225:                                              ; preds = %219, %213
  %226 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %226, i32** %13, align 8
  br label %227

227:                                              ; preds = %225, %147
  %228 = load i32*, i32** %13, align 8
  ret i32* %228
}

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_diff_file_options_create(i32*) #1

declare dso_local i32 @svn_diff_file_diff3_2(i32**, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_diff_output2(i32*, %struct.file_merge_baton*, i32*, i32, i8*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_is_file_executable(i8**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @svn_io_set_file_executable(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
