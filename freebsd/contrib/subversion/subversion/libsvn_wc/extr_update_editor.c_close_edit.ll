; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.edit_baton = type { i8*, i64, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@update_keywords_after_switch_cb = common dso_local global i32 0, align 4
@cleanup_edit_baton = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32*)* @close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @close_edit(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.edit_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.edit_baton*
  store %struct.edit_baton* %12, %struct.edit_baton** %6, align 8
  %13 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %14 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %2
  %21 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %29 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %32 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %31, i32 0, i32 18
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @svn_wc__db_temp_op_end_directory_update(i32 %30, i32 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %37

37:                                               ; preds = %27, %20, %2
  %38 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 17
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %139, label %42

42:                                               ; preds = %37
  %43 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %44 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %50 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %53 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %56 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %59 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %62 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %61, i32 0, i32 14
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %66 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %69 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %72 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %78 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %81 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %84 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @svn_wc__db_op_bump_revisions_post_update(i32 %45, i32 %48, i64 %51, i64 %54, i32 %57, i32 %60, i32 %64, i32 %67, i32 %70, i32 %76, i32 %79, i32 %82, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %89 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %138

94:                                               ; preds = %42
  %95 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %96 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %99 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call %struct.TYPE_8__* @svn_wc__db_base_get_info(i64* %8, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %97, i32 %100, i32* %101, i32* %102)
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %9, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %94
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %113)
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %3, align 8
  br label %205

115:                                              ; preds = %106
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %117 = call i32 @svn_error_clear(%struct.TYPE_8__* %116)
  br label %137

118:                                              ; preds = %94
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %124 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %127 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32, i32* @FALSE, align 4
  %131 = load i32, i32* @FALSE, align 4
  %132 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @svn_wc__db_base_remove(i32 %125, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32* null, i32* null, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %122, %118
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %42
  br label %139

139:                                              ; preds = %138, %37
  %140 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %141 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %139
  %145 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %146 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @svn_depth_empty, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %152 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %10, align 8
  br label %156

154:                                              ; preds = %144
  %155 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %155, i64* %10, align 8
  br label %156

156:                                              ; preds = %154, %150
  %157 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %158 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %161 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load i32, i32* @FALSE, align 4
  %165 = load i32, i32* @update_keywords_after_switch_cb, align 4
  %166 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %167 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %168 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %171 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @svn_wc__db_read_props_streamily(i32 %159, i32 %162, i64 %163, i32 %164, i32* null, i32 %165, %struct.edit_baton* %166, i32 %169, i32 %172, i32* %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  br label %176

176:                                              ; preds = %156, %139
  %177 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %178 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %181 = load i32, i32* @cleanup_edit_baton, align 4
  %182 = call i32 @apr_pool_cleanup_kill(i32* %179, %struct.edit_baton* %180, i32 %181)
  %183 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %184 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %187 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %190 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %193 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %196 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @svn_wc__wq_run(i32 %185, i32 %188, i32 %191, i32 %194, i32* %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %201 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @svn_pool_destroy(i32* %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %204, %struct.TYPE_8__** %3, align 8
  br label %205

205:                                              ; preds = %176, %112
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %206
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_temp_op_end_directory_update(i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_bump_revisions_post_update(i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc__db_base_get_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_wc__db_base_remove(i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_props_streamily(i32, i32, i64, i32, i32*, i32, %struct.edit_baton*, i32, i32, i32*) #1

declare dso_local i32 @apr_pool_cleanup_kill(i32*, %struct.edit_baton*, i32) #1

declare dso_local i32 @svn_wc__wq_run(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
