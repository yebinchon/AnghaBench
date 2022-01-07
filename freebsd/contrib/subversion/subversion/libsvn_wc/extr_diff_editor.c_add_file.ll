; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, i32, i32, i64, i64, %struct.edit_baton_t* }
%struct.edit_baton_t = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*, i8**, i32, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)* }
%struct.file_baton_t = type { i32, i8*, i8*, i32, i8*, i32, i32, i8*, i8* }
%struct.svn_wc__db_info_t = type { i64, i64 }

@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.dir_baton_t*, align 8
  %15 = alloca %struct.edit_baton_t*, align 8
  %16 = alloca %struct.file_baton_t*, align 8
  %17 = alloca %struct.svn_wc__db_info_t*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.dir_baton_t*
  store %struct.dir_baton_t* %19, %struct.dir_baton_t** %14, align 8
  %20 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %21 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %20, i32 0, i32 6
  %22 = load %struct.edit_baton_t*, %struct.edit_baton_t** %21, align 8
  store %struct.edit_baton_t* %22, %struct.edit_baton_t** %15, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call %struct.file_baton_t* @make_file_baton(i8* %23, i8* %24, %struct.dir_baton_t* %25, i32* %26)
  store %struct.file_baton_t* %27, %struct.file_baton_t** %16, align 8
  %28 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %29 = bitcast %struct.file_baton_t* %28 to i8*
  %30 = load i8**, i8*** %13, align 8
  store i8* %29, i8** %30, align 8
  %31 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %32 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %38 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %7, align 8
  br label %171

40:                                               ; preds = %6
  %41 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %42 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.edit_baton_t*, %struct.edit_baton_t** %15, align 8
  %47 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** @TRUE, align 8
  %52 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %53 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  br label %127

54:                                               ; preds = %45
  %55 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @ensure_local_info(%struct.dir_baton_t* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %60 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %63 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.svn_wc__db_info_t* @svn_hash_gets(i32 %61, i32 %64)
  store %struct.svn_wc__db_info_t* %65, %struct.svn_wc__db_info_t** %17, align 8
  %66 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %17, align 8
  %67 = icmp ne %struct.svn_wc__db_info_t* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %54
  %69 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %17, align 8
  %70 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @svn_node_file, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %17, align 8
  %76 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @NOT_PRESENT(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74, %68, %54
  %81 = load i8*, i8** @TRUE, align 8
  %82 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %83 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %86 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %85, i32 0, i32 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %17, align 8
  %91 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @svn_wc__db_status_added, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i8*, i8** @TRUE, align 8
  %97 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %98 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %89, %84
  %100 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %101 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %100, i32 0, i32 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %106 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %107 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @svn_diff__source_create(i32 %105, i32 %108)
  %110 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %111 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %114 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %116 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %119 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %122 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @apr_pstrdup(i32 %120, i32 %123)
  %125 = call i32 @svn_hash_sets(i32 %117, i32 %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %104, %99
  br label %127

127:                                              ; preds = %126, %50
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.edit_baton_t*, %struct.edit_baton_t** %15, align 8
  %130 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %133 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @svn_diff__source_create(i32 %131, i32 %134)
  %136 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %137 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.edit_baton_t*, %struct.edit_baton_t** %15, align 8
  %139 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32 (i32*, i8**, i32, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)*, i32 (i32*, i8**, i32, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)** %141, align 8
  %143 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %144 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %143, i32 0, i32 5
  %145 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %146 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %145, i32 0, i32 4
  %147 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %148 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %151 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %154 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %157 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.edit_baton_t*, %struct.edit_baton_t** %15, align 8
  %160 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %163 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.file_baton_t*, %struct.file_baton_t** %16, align 8
  %166 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %142(i32* %144, i8** %146, i32 %149, i8* %152, i8* %155, i32* null, i32 %158, %struct.TYPE_2__* %161, i32 %164, i32 %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %170, i32** %7, align 8
  br label %171

171:                                              ; preds = %128, %35
  %172 = load i32*, i32** %7, align 8
  ret i32* %172
}

declare dso_local %struct.file_baton_t* @make_file_baton(i8*, i8*, %struct.dir_baton_t*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_local_info(%struct.dir_baton_t*, i32*) #1

declare dso_local %struct.svn_wc__db_info_t* @svn_hash_gets(i32, i32) #1

declare dso_local i64 @NOT_PRESENT(i64) #1

declare dso_local i8* @svn_diff__source_create(i32, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i8*) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
