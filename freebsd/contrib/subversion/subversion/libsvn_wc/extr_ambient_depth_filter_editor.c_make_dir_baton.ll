; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 }
%struct.dir_baton = type { i64, %struct.edit_baton*, i8*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton**, i8*, %struct.edit_baton*, %struct.dir_baton*, i32, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_dir_baton(%struct.dir_baton** %0, i8* %1, %struct.edit_baton* %2, %struct.dir_baton* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dir_baton**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.dir_baton** %0, %struct.dir_baton*** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %10, align 8
  store %struct.dir_baton* %3, %struct.dir_baton** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %23 = icmp ne %struct.dir_baton* %22, null
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ true, %6 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %30 = icmp ne %struct.dir_baton* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %38 = load %struct.dir_baton**, %struct.dir_baton*** %8, align 8
  store %struct.dir_baton* %37, %struct.dir_baton** %38, align 8
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %7, align 8
  br label %141

40:                                               ; preds = %31, %25
  %41 = load i32*, i32** %13, align 8
  %42 = call %struct.dir_baton* @apr_pcalloc(i32* %41, i32 32)
  store %struct.dir_baton* %42, %struct.dir_baton** %14, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @svn_dirent_join(i32 %48, i8* %49, i32* %50)
  %52 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %53 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %62

54:                                               ; preds = %40
  %55 = load i32*, i32** %13, align 8
  %56 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %57 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @apr_pstrdup(i32* %55, i32 %58)
  %60 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %61 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %54, %45
  %63 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %64 = icmp ne %struct.dir_baton* %63, null
  br i1 %64, label %65, label %131

65:                                               ; preds = %62
  %66 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %67 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @svn_depth_unknown, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %65
  %72 = load i8*, i8** @TRUE, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %78 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %81 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @ambient_read_info(i64* %16, i64* %17, i32* null, i32 %79, i32 %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %89

86:                                               ; preds = %71
  %87 = load i64, i64* @svn_wc__db_status_not_present, align 8
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* @svn_node_unknown, align 8
  store i64 %88, i64* %17, align 8
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* @svn_node_unknown, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %95 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @svn_depth_empty, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %89
  %100 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %101 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @svn_depth_files, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %89
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %15, align 4
  br label %120

110:                                              ; preds = %99
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %117, %105
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i8*, i8** @TRUE, align 8
  %125 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %126 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %128 = load %struct.dir_baton**, %struct.dir_baton*** %8, align 8
  store %struct.dir_baton* %127, %struct.dir_baton** %128, align 8
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %129, i32** %7, align 8
  br label %141

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %65, %62
  %132 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %133 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %134 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %133, i32 0, i32 1
  store %struct.edit_baton* %132, %struct.edit_baton** %134, align 8
  %135 = load i64, i64* @svn_depth_unknown, align 8
  %136 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %137 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %139 = load %struct.dir_baton**, %struct.dir_baton*** %8, align 8
  store %struct.dir_baton* %138, %struct.dir_baton** %139, align 8
  %140 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %140, i32** %7, align 8
  br label %141

141:                                              ; preds = %131, %123, %36
  %142 = load i32*, i32** %7, align 8
  ret i32* %142
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ambient_read_info(i64*, i64*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
