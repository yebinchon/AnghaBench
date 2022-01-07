; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__perform_file_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__perform_file_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_wc_merge_unchanged = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c".r%ld%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".mine%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__perform_file_merge(i32** %0, i32** %1, i32* %2, i32* %3, i8* %4, i8* %5, i32* %6, i32* %7, i32* %8, %struct.TYPE_6__* %9, i64 %10, i64 %11, %struct.TYPE_6__* %12, i8* %13, i32 %14, i8* %15, i32* %16, i32* %17) #0 {
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_6__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_6__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  store i32** %0, i32*** %19, align 8
  store i32** %1, i32*** %20, align 8
  store i32* %2, i32** %21, align 8
  store i32* %3, i32** %22, align 8
  store i8* %4, i8** %23, align 8
  store i8* %5, i8** %24, align 8
  store i32* %6, i32** %25, align 8
  store i32* %7, i32** %26, align 8
  store i32* %8, i32** %27, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %28, align 8
  store i64 %10, i64* %29, align 8
  store i64 %11, i64* %30, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %31, align 8
  store i8* %13, i8** %32, align 8
  store i32 %14, i32* %33, align 4
  store i8* %15, i8** %34, align 8
  store i32* %16, i32** %35, align 8
  store i32* %17, i32** %36, align 8
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %41, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %47 = load i32, i32* @svn_wc_merge_unchanged, align 4
  store i32 %47, i32* %44, align 4
  %48 = load i32**, i32*** %19, align 8
  store i32* null, i32** %48, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = load i8*, i8** %24, align 8
  %51 = load i32*, i32** %25, align 8
  %52 = load i32*, i32** %36, align 8
  %53 = load i32*, i32** %36, align 8
  %54 = call i32 @svn_wc__db_pristine_get_path(i8** %43, i32* %49, i8* %50, i32* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %18
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i8*, i8** %23, align 8
  %65 = load i32*, i32** %36, align 8
  %66 = call i32 @svn_path_splitext(i32* null, i8** %42, i8* %64, i32* %65)
  %67 = load i8*, i8** %42, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i8*, i8** %42, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %74 = call i64 @svn_cstring_match_glob_list(i8* %72, %struct.TYPE_6__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %63
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  br label %77

77:                                               ; preds = %76, %71
  br label %78

78:                                               ; preds = %77, %58, %18
  %79 = load i64, i64* %29, align 8
  %80 = call i32 @SVN_IS_VALID_REVNUM(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i64 0, i64* %29, align 8
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32*, i32** %36, align 8
  %85 = load i64, i64* %29, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8*, i8** %42, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %93 = load i8*, i8** %42, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i8*, i8** %42, align 8
  br label %100

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i8* [ %98, %97 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %99 ]
  %102 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %92, i8* %101)
  store i8* %102, i8** %37, align 8
  %103 = load i32*, i32** %36, align 8
  %104 = load i64, i64* %30, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8*, i8** %42, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %112 = load i8*, i8** %42, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i8*, i8** %42, align 8
  br label %119

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i8* [ %117, %116 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %118 ]
  %121 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %105, i8* %111, i8* %120)
  store i8* %121, i8** %38, align 8
  %122 = load i32*, i32** %36, align 8
  %123 = load i8*, i8** %42, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %129 = load i8*, i8** %42, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = load i8*, i8** %42, align 8
  br label %136

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i8* [ %134, %133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %135 ]
  %138 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %128, i8* %137)
  store i8* %138, i8** %39, align 8
  %139 = load i32*, i32** %26, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = load i32*, i32** %22, align 8
  %143 = load i8*, i8** %24, align 8
  %144 = load i32*, i32** %35, align 8
  %145 = load i32*, i32** %36, align 8
  %146 = call i32 @get_empty_tmp_file(i8** %40, i32* %142, i8* %143, i32* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %41, align 4
  br label %157

149:                                              ; preds = %136
  %150 = load i32*, i32** %22, align 8
  %151 = load i8*, i8** %24, align 8
  %152 = load i32*, i32** %26, align 8
  %153 = load i32*, i32** %35, align 8
  %154 = load i32*, i32** %36, align 8
  %155 = call i32 @svn_wc__db_pristine_get_path(i8** %40, i32* %150, i8* %151, i32* %152, i32* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %157

157:                                              ; preds = %149, %141
  %158 = load i32**, i32*** %20, align 8
  %159 = load i32*, i32** %22, align 8
  %160 = load i8*, i8** %40, align 8
  %161 = load i8*, i8** %43, align 8
  %162 = load i8*, i8** %23, align 8
  %163 = load i8*, i8** %24, align 8
  %164 = load i8*, i8** %37, align 8
  %165 = load i8*, i8** %38, align 8
  %166 = load i8*, i8** %39, align 8
  %167 = load i32*, i32** %27, align 8
  %168 = load i32, i32* @FALSE, align 4
  %169 = load i8*, i8** %32, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %171 = load i32, i32* %33, align 4
  %172 = load i8*, i8** %34, align 8
  %173 = load i32*, i32** %35, align 8
  %174 = load i32*, i32** %36, align 8
  %175 = call i32 @svn_wc__internal_merge(i32** %45, i32** %158, i32* %44, i32* %159, i8* %160, i8* %161, i8* %162, i8* %163, i8* %164, i8* %165, i8* %166, i32* %167, i32 %168, i8* %169, i32* null, %struct.TYPE_6__* %170, i32 %171, i8* %172, i32* %173, i32* %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load i32**, i32*** %19, align 8
  %178 = load i32*, i32** %177, align 8
  %179 = load i32*, i32** %45, align 8
  %180 = load i32*, i32** %35, align 8
  %181 = call i32* @svn_wc__wq_merge(i32* %178, i32* %179, i32* %180)
  %182 = load i32**, i32*** %19, align 8
  store i32* %181, i32** %182, align 8
  %183 = load i32, i32* %44, align 4
  %184 = load i32, i32* @svn_wc_merge_conflict, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32*, i32** %21, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* %41, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %157
  %191 = load i32*, i32** %22, align 8
  %192 = load i8*, i8** %24, align 8
  %193 = load i8*, i8** %40, align 8
  %194 = load i32*, i32** %35, align 8
  %195 = load i32*, i32** %36, align 8
  %196 = call i32 @svn_wc__wq_build_file_remove(i32** %45, i32* %191, i8* %192, i8* %193, i32* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i32**, i32*** %19, align 8
  %199 = load i32*, i32** %198, align 8
  %200 = load i32*, i32** %45, align 8
  %201 = load i32*, i32** %35, align 8
  %202 = call i32* @svn_wc__wq_merge(i32* %199, i32* %200, i32* %201)
  %203 = load i32**, i32*** %19, align 8
  store i32* %202, i32** %203, align 8
  br label %204

204:                                              ; preds = %190, %157
  %205 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %205
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_path_splitext(i32*, i8**, i8*, i32*) #1

declare dso_local i64 @svn_cstring_match_glob_list(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @get_empty_tmp_file(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_merge(i32**, i32**, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32, i8*, i32*, %struct.TYPE_6__*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
