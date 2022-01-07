; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_svn_fs_fs__hotcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_svn_fs_fs__hotcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.hotcopy_body_baton = type { i8*, i32 (i8*)*, i8*, i32, i64, %struct.TYPE_15__*, %struct.TYPE_15__* }

@PATH_FORMAT = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__hotcopy(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i8* %2, i8* %3, i64 %4, i32 %5, i8* %6, i32 (i8*)* %7, i8* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
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
  %25 = alloca %struct.hotcopy_body_baton, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %14, align 8
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
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @svn_fs_fs__open(%struct.TYPE_15__* %37, i8* %38, i32* %39)
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
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %23, align 8
  %66 = call i32 @svn_fs_fs__open(%struct.TYPE_15__* %63, i8* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %70 = load i32*, i32** %23, align 8
  %71 = call i32 @hotcopy_incremental_check_preconditions(%struct.TYPE_15__* %68, %struct.TYPE_15__* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %74 = load i32*, i32** %22, align 8
  %75 = load i32*, i32** %23, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = call i32 @svn_fs_fs__initialize_shared_data(%struct.TYPE_15__* %73, i32* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = load i32*, i32** %23, align 8
  %81 = call i32 @svn_fs_fs__initialize_caches(%struct.TYPE_15__* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %130

83:                                               ; preds = %59
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %28, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %23, align 8
  %99 = call i32 @svn_fs_fs__create_file_tree(%struct.TYPE_15__* %87, i8* %88, i32 %91, i32 %94, i32 %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = call i32 @svn_fs_fs__set_uuid(%struct.TYPE_15__* %101, i32 %104, i32* null, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %109 = load i32*, i32** %23, align 8
  %110 = call i32 @svn_fs_fs__path_rev(%struct.TYPE_15__* %108, i32 0, i32* %109)
  %111 = load i32*, i32** %23, align 8
  %112 = call i32 @hotcopy_remove_file(i32 %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %115 = load i32*, i32** %23, align 8
  %116 = call i32 @svn_fs_fs__path_revprops(%struct.TYPE_15__* %114, i32 0, i32* %115)
  %117 = load i32*, i32** %23, align 8
  %118 = call i32 @hotcopy_remove_file(i32 %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %121 = load i32*, i32** %22, align 8
  %122 = load i32*, i32** %23, align 8
  %123 = load i32*, i32** %24, align 8
  %124 = call i32 @svn_fs_fs__initialize_shared_data(%struct.TYPE_15__* %120, i32* %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %127 = load i32*, i32** %23, align 8
  %128 = call i32 @svn_fs_fs__initialize_caches(%struct.TYPE_15__* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %130

130:                                              ; preds = %83, %62
  %131 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %132 = icmp ne i32 (i8*)* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %135 = load i8*, i8** %21, align 8
  %136 = call i32 %134(i8* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  br label %138

138:                                              ; preds = %133, %130
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %140 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 6
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %142 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 5
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %142, align 8
  %143 = load i64, i64* %17, align 8
  %144 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 4
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* %18, align 4
  %146 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 3
  store i32 %145, i32* %146, align 8
  %147 = load i8*, i8** %19, align 8
  %148 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 2
  store i8* %147, i8** %148, align 8
  %149 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %150 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 1
  store i32 (i8*)* %149, i32 (i8*)** %150, align 8
  %151 = load i8*, i8** %21, align 8
  %152 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %25, i32 0, i32 0
  store i8* %151, i8** %152, align 8
  %153 = load i64, i64* %17, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %138
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %157 = load i32*, i32** %23, align 8
  %158 = call i32 @svn_fs_fs__with_all_locks(%struct.TYPE_15__* %156, i32 (%struct.hotcopy_body_baton*, i32*)* @hotcopy_body, %struct.hotcopy_body_baton* %25, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  br label %164

160:                                              ; preds = %138
  %161 = load i32*, i32** %23, align 8
  %162 = call i32 @hotcopy_body(%struct.hotcopy_body_baton* %25, i32* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  br label %164

164:                                              ; preds = %160, %155
  %165 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %165
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__open(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @hotcopy_incremental_check_preconditions(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_fs_fs__initialize_shared_data(%struct.TYPE_15__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__initialize_caches(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_fs_fs__create_file_tree(%struct.TYPE_15__*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__set_uuid(%struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @hotcopy_remove_file(i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_rev(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_revprops(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__with_all_locks(%struct.TYPE_15__*, i32 (%struct.hotcopy_body_baton*, i32*)*, %struct.hotcopy_body_baton*, i32*) #1

declare dso_local i32 @hotcopy_body(%struct.hotcopy_body_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
