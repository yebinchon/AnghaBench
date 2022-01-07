; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_svn_wc_walk_entries3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_svn_wc_walk_entries3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)*, %struct.TYPE_23__* (i8*, i32*, i8*, i32*)* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_23__* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNKNOWN_KIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"'%s' has an unrecognized node kind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @svn_wc_walk_entries3(i8* %0, i32* %1, %struct.TYPE_22__* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @svn_wc__adm_get_db(i32* %26)
  store i32* %27, i32** %21, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = call i32 @svn_dirent_get_absolute(i8** %20, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %21, align 8
  %33 = load i8*, i8** %20, align 8
  %34 = load i32*, i32** %19, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = call %struct.TYPE_23__* @svn_wc__db_read_info(i64* %24, i64* %23, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %32, i8* %33, i32* %34, i32* %35)
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %22, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %38 = icmp ne %struct.TYPE_23__* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %9
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %47 = call %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__* %46)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %10, align 8
  br label %164

48:                                               ; preds = %39
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %50 = call i32 @svn_error_clear(%struct.TYPE_23__* %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)*, %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)** %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %20, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @svn_dirent_local_style(i8* %57, i32* %58)
  %60 = call %struct.TYPE_23__* @svn_error_createf(i32 %55, i32* null, i32 %56, i32 %59)
  %61 = load i8*, i8** %14, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = call %struct.TYPE_23__* %53(i8* %54, %struct.TYPE_23__* %60, i8* %61, i32* %62)
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %10, align 8
  br label %164

64:                                               ; preds = %9
  %65 = load i64, i64* %23, align 8
  %66 = load i64, i64* @svn_node_file, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %24, align 8
  %70 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %24, align 8
  %74 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %72, %68, %64
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %24, align 8
  %81 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %24, align 8
  %85 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87, %83, %79
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)*, %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)** %93, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %97 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %98 = load i8*, i8** %20, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @svn_dirent_local_style(i8* %98, i32* %99)
  %101 = call %struct.TYPE_23__* @svn_error_createf(i32 %96, i32* null, i32 %97, i32 %100)
  %102 = load i8*, i8** %14, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = call %struct.TYPE_23__* %94(i8* %95, %struct.TYPE_23__* %101, i8* %102, i32* %103)
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %10, align 8
  br label %164

105:                                              ; preds = %87, %76
  %106 = load i32*, i32** %21, align 8
  %107 = load i8*, i8** %20, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i64, i64* @svn_node_file, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = call i32 @svn_wc__get_entry(i32** %25, i32* %106, i8* %107, i32 %108, i64 %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_23__* (i8*, i32*, i8*, i32*)*, %struct.TYPE_23__* (i8*, i32*, i8*, i32*)** %115, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = call %struct.TYPE_23__* %116(i8* %117, i32* %118, i8* %119, i32* %120)
  store %struct.TYPE_23__* %121, %struct.TYPE_23__** %22, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %123 = icmp ne %struct.TYPE_23__* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %105
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)*, %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)** %126, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i32*, i32** %19, align 8
  %132 = call %struct.TYPE_23__* %127(i8* %128, %struct.TYPE_23__* %129, i8* %130, i32* %131)
  store %struct.TYPE_23__* %132, %struct.TYPE_23__** %10, align 8
  br label %164

133:                                              ; preds = %105
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %10, align 8
  br label %164

135:                                              ; preds = %72
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* @svn_node_dir, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i8*, i8** %11, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i8*, i8** %18, align 8
  %148 = load i32*, i32** %19, align 8
  %149 = call %struct.TYPE_23__* @walker_helper(i8* %140, i32* %141, %struct.TYPE_22__* %142, i8* %143, i32 %144, i32 %145, i32 %146, i8* %147, i32* %148)
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %10, align 8
  br label %164

150:                                              ; preds = %135
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)*, %struct.TYPE_23__* (i8*, %struct.TYPE_23__*, i8*, i32*)** %152, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* @SVN_ERR_NODE_UNKNOWN_KIND, align 4
  %156 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i8*, i8** %20, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = call i32 @svn_dirent_local_style(i8* %157, i32* %158)
  %160 = call %struct.TYPE_23__* @svn_error_createf(i32 %155, i32* null, i32 %156, i32 %159)
  %161 = load i8*, i8** %14, align 8
  %162 = load i32*, i32** %19, align 8
  %163 = call %struct.TYPE_23__* %153(i8* %154, %struct.TYPE_23__* %160, i8* %161, i32* %162)
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %10, align 8
  br label %164

164:                                              ; preds = %150, %139, %133, %124, %91, %48, %45
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  ret %struct.TYPE_23__* %165
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__get_entry(i32**, i32*, i8*, i32, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @walker_helper(i8*, i32*, %struct.TYPE_22__*, i8*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
