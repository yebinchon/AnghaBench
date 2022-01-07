; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, i32, i32, i64, i64, %struct.edit_baton_t* }
%struct.edit_baton_t = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*, i8**, i32, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)* }
%struct.file_baton_t = type { i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i8*, i8* }
%struct.svn_wc__db_info_t = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dir_baton_t*, align 8
  %12 = alloca %struct.edit_baton_t*, align 8
  %13 = alloca %struct.file_baton_t*, align 8
  %14 = alloca %struct.svn_wc__db_info_t*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.dir_baton_t*
  store %struct.dir_baton_t* %16, %struct.dir_baton_t** %11, align 8
  %17 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %18 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %17, i32 0, i32 6
  %19 = load %struct.edit_baton_t*, %struct.edit_baton_t** %18, align 8
  store %struct.edit_baton_t* %19, %struct.edit_baton_t** %12, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.file_baton_t* @make_file_baton(i8* %20, i32 %21, %struct.dir_baton_t* %22, i32* %23)
  store %struct.file_baton_t* %24, %struct.file_baton_t** %13, align 8
  %25 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %26 = bitcast %struct.file_baton_t* %25 to i8*
  %27 = load i8**, i8*** %10, align 8
  store i8* %26, i8** %27, align 8
  %28 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %29 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %35 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  br label %149

36:                                               ; preds = %5
  %37 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %38 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %44 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %43, i32 0, i32 10
  store i8* %42, i8** %44, align 8
  br label %148

45:                                               ; preds = %36
  %46 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @ensure_local_info(%struct.dir_baton_t* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %51 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %54 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.svn_wc__db_info_t* @svn_hash_gets(i32 %52, i32 %55)
  store %struct.svn_wc__db_info_t* %56, %struct.svn_wc__db_info_t** %14, align 8
  %57 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %14, align 8
  %58 = icmp ne %struct.svn_wc__db_info_t* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %45
  %60 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %14, align 8
  %61 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @svn_node_file, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %14, align 8
  %67 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @NOT_PRESENT(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %59, %45
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %74 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %73, i32 0, i32 10
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %77 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %76, i32 0, i32 10
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %123, label %80

80:                                               ; preds = %75
  %81 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %14, align 8
  %82 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %120 [
    i32 128, label %84
    i32 129, label %84
    i32 130, label %85
    i32 131, label %106
  ]

84:                                               ; preds = %80, %80
  br label %122

85:                                               ; preds = %80
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %88 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %14, align 8
  %90 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %85
  %94 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %95 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %98 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %101 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @apr_pstrdup(i32 %99, i32 %102)
  %104 = call i32 @svn_hash_sets(i32 %96, i32 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %93, %85
  br label %122

106:                                              ; preds = %80
  %107 = load %struct.edit_baton_t*, %struct.edit_baton_t** %12, align 8
  %108 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %114 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %113, i32 0, i32 11
  store i8* %112, i8** %114, align 8
  br label %119

115:                                              ; preds = %106
  %116 = load i8*, i8** @TRUE, align 8
  %117 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %118 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %117, i32 0, i32 10
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  br label %122

120:                                              ; preds = %80
  %121 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %122

122:                                              ; preds = %120, %119, %105, %84
  br label %123

123:                                              ; preds = %122, %75
  %124 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %125 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %124, i32 0, i32 10
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %147, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %130 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %131 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @svn_diff__source_create(i32 %129, i32 %132)
  %134 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %135 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %137 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %140 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %143 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @apr_pstrdup(i32 %141, i32 %144)
  %146 = call i32 @svn_hash_sets(i32 %138, i32 %145, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %147

147:                                              ; preds = %128, %123
  br label %148

148:                                              ; preds = %147, %41
  br label %149

149:                                              ; preds = %148, %32
  %150 = load %struct.edit_baton_t*, %struct.edit_baton_t** %12, align 8
  %151 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %154 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @svn_diff__source_create(i32 %152, i32 %155)
  %157 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %158 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %160 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %159, i32 0, i32 8
  %161 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %162 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %161, i32 0, i32 7
  %163 = load %struct.edit_baton_t*, %struct.edit_baton_t** %12, align 8
  %164 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %167 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %170 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %173 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %160, i32* null, i32* null, i32* null, i32* %162, i32* null, i32 %165, i32 %168, i32 %171, i32 %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load %struct.edit_baton_t*, %struct.edit_baton_t** %12, align 8
  %178 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32 (i32*, i8**, i32, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)*, i32 (i32*, i8**, i32, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)** %180, align 8
  %182 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %183 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %182, i32 0, i32 5
  %184 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %185 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %184, i32 0, i32 4
  %186 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %187 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %190 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %193 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.dir_baton_t*, %struct.dir_baton_t** %11, align 8
  %196 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.edit_baton_t*, %struct.edit_baton_t** %12, align 8
  %199 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %202 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.file_baton_t*, %struct.file_baton_t** %13, align 8
  %205 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 %181(i32* %183, i8** %185, i32 %188, i8* %191, i8* %194, i32* null, i32 %197, %struct.TYPE_2__* %200, i32 %203, i32 %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %209
}

declare dso_local %struct.file_baton_t* @make_file_baton(i8*, i32, %struct.dir_baton_t*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_local_info(%struct.dir_baton_t*, i32*) #1

declare dso_local %struct.svn_wc__db_info_t* @svn_hash_gets(i32, i32) #1

declare dso_local i64 @NOT_PRESENT(i32) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i8*) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i8* @svn_diff__source_create(i32, i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
