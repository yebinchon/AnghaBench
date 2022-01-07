; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_hotcopy.c_svn_fs_x__hotcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_hotcopy.c_svn_fs_x__hotcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i8*, i32 (i8*)*, i8*, i32, i64, %struct.TYPE_20__*, %struct.TYPE_20__* }

@PATH_FORMAT = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__hotcopy(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, i8* %2, i8* %3, i64 %4, i32 %5, i8* %6, i32 (i8*)* %7, i8* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32 (i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_21__, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 (i8*)* %7, i32 (i8*)** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %29 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %30 = icmp ne i32 (i8*)* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %12
  %32 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %33 = load i8*, i8** %21, align 8
  %34 = call i32 %32(i8* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  br label %36

36:                                               ; preds = %31, %12
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @svn_fs_x__open(%struct.TYPE_20__* %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i64, i64* %17, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load i8*, i8** %16, align 8
  %46 = load i32, i32* @PATH_FORMAT, align 4
  %47 = load i32*, i32** %23, align 8
  %48 = call i8* @svn_dirent_join(i8* %45, i32 %46, i32* %47)
  store i8* %48, i8** %26, align 8
  %49 = load i8*, i8** %26, align 8
  %50 = load i32*, i32** %23, align 8
  %51 = call i32 @svn_io_check_path(i8* %49, i64* %27, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i64, i64* %27, align 8
  %54 = load i64, i64* @svn_node_none, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %56, %44
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i64, i64* %17, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %23, align 8
  %66 = call i32 @svn_fs_x__open(%struct.TYPE_20__* %63, i8* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %70 = call i32 @hotcopy_incremental_check_preconditions(%struct.TYPE_20__* %68, %struct.TYPE_20__* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = call i32 @svn_fs_x__initialize_shared_data(%struct.TYPE_20__* %72, i32* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %79 = load i32*, i32** %23, align 8
  %80 = call i32 @svn_fs_x__initialize_caches(%struct.TYPE_20__* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %127

82:                                               ; preds = %59
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %28, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %23, align 8
  %95 = call i32 @svn_fs_x__create_file_tree(%struct.TYPE_20__* %86, i8* %87, i32 %90, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TRUE, align 4
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @svn_fs_x__set_uuid(%struct.TYPE_20__* %97, i32 %100, i32* null, i32 %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %106 = load i32*, i32** %23, align 8
  %107 = call i32 @svn_fs_x__path_rev(%struct.TYPE_20__* %105, i32 0, i32* %106)
  %108 = load i32*, i32** %23, align 8
  %109 = call i32 @hotcopy_remove_file(i32 %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %112 = load i32*, i32** %23, align 8
  %113 = call i32 @svn_fs_x__path_revprops(%struct.TYPE_20__* %111, i32 0, i32* %112)
  %114 = load i32*, i32** %23, align 8
  %115 = call i32 @hotcopy_remove_file(i32 %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %118 = load i32*, i32** %22, align 8
  %119 = load i32*, i32** %23, align 8
  %120 = load i32*, i32** %24, align 8
  %121 = call i32 @svn_fs_x__initialize_shared_data(%struct.TYPE_20__* %117, i32* %118, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %124 = load i32*, i32** %23, align 8
  %125 = call i32 @svn_fs_x__initialize_caches(%struct.TYPE_20__* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %127

127:                                              ; preds = %82, %62
  %128 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %129 = icmp ne i32 (i8*)* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = call i32 %131(i8* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  br label %135

135:                                              ; preds = %130, %127
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 6
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 5
  store %struct.TYPE_20__* %138, %struct.TYPE_20__** %139, align 8
  %140 = load i64, i64* %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 4
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %18, align 4
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  store i32 %142, i32* %143, align 8
  %144 = load i8*, i8** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  store i8* %144, i8** %145, align 8
  %146 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  store i32 (i8*)* %146, i32 (i8*)** %147, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  store i8* %148, i8** %149, align 8
  %150 = load i64, i64* %17, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %135
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %154 = load i32*, i32** %23, align 8
  %155 = call i32 @svn_fs_x__with_all_locks(%struct.TYPE_20__* %153, i32 (%struct.TYPE_21__*, i32*)* @hotcopy_body, %struct.TYPE_21__* %25, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %161

157:                                              ; preds = %135
  %158 = load i32*, i32** %23, align 8
  %159 = call i32 @hotcopy_body(%struct.TYPE_21__* %25, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  br label %161

161:                                              ; preds = %157, %152
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %162
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__open(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @hotcopy_incremental_check_preconditions(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @svn_fs_x__initialize_shared_data(%struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__initialize_caches(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__create_file_tree(%struct.TYPE_20__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__set_uuid(%struct.TYPE_20__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @hotcopy_remove_file(i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_rev(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_revprops(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__with_all_locks(%struct.TYPE_20__*, i32 (%struct.TYPE_21__*, i32*)*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @hotcopy_body(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
