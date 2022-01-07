; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_svn_repos_check_revision_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_svn_repos_check_revision_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@svn_repos_revision_access_full = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_repos_revision_access_none = common dso_local global i32 0, align 4
@svn_repos_revision_access_partial = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_check_revision_access(i32* %0, i32* %1, i32 %2, i32 (i64*, i32*, i8*, i8*, i32*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i64*, i32*, i8*, i8*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (i64*, i32*, i8*, i8*, i32*)* %3, i32 (i64*, i32*, i8*, i8*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @svn_repos_fs(i32* %25)
  store i32* %26, i32** %14, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %19, align 8
  %29 = load i32, i32* @svn_repos_revision_access_full, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %11, align 8
  %32 = icmp ne i32 (i64*, i32*, i8*, i8*, i32*)* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %6
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %7, align 8
  br label %154

35:                                               ; preds = %6
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @svn_fs_revision_root(i32** %15, i32* %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_fs_paths_changed3(i32** %16, i32* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @svn_fs_path_change_get(%struct.TYPE_5__** %17, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %35
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %7, align 8
  br label %154

53:                                               ; preds = %35
  %54 = load i32*, i32** %13, align 8
  %55 = call i32* @svn_pool_create(i32* %54)
  store i32* %55, i32** %20, align 8
  br label %56

56:                                               ; preds = %132, %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %136

59:                                               ; preds = %56
  %60 = load i32*, i32** %20, align 8
  %61 = call i32 @svn_pool_clear(i32* %60)
  %62 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %11, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 %62(i64* %21, i32* %63, i8* %67, i8* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i64, i64* %21, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %59
  %75 = load i64, i64* @TRUE, align 8
  store i64 %75, i64* %19, align 8
  br label %78

76:                                               ; preds = %59
  %77 = load i64, i64* @TRUE, align 8
  store i64 %77, i64* %18, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, i64* %18, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %19, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %137

85:                                               ; preds = %81, %78
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %131 [
    i32 131, label %89
    i32 128, label %89
    i32 130, label %130
    i32 129, label %130
  ]

89:                                               ; preds = %85, %85
  %90 = load i32*, i32** %15, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = call i32 @svn_fs_copied_from(i32* %23, i8** %22, i32* %90, i8* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i8*, i8** %22, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %129

100:                                              ; preds = %89
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @SVN_IS_VALID_REVNUM(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %23, align 4
  %107 = load i32*, i32** %20, align 8
  %108 = call i32 @svn_fs_revision_root(i32** %24, i32* %105, i32 %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %11, align 8
  %111 = load i32*, i32** %24, align 8
  %112 = load i8*, i8** %22, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = call i32 %110(i64* %21, i32* %111, i8* %112, i8* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i64, i64* %21, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %104
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %19, align 8
  br label %121

121:                                              ; preds = %119, %104
  %122 = load i64, i64* %18, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i64, i64* %19, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %137

128:                                              ; preds = %124, %121
  br label %129

129:                                              ; preds = %128, %100, %89
  br label %132

130:                                              ; preds = %85, %85
  br label %131

131:                                              ; preds = %85, %130
  br label %132

132:                                              ; preds = %131, %129
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @svn_fs_path_change_get(%struct.TYPE_5__** %17, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %56

136:                                              ; preds = %56
  br label %137

137:                                              ; preds = %136, %127, %84
  %138 = load i32*, i32** %20, align 8
  %139 = call i32 @svn_pool_destroy(i32* %138)
  %140 = load i64, i64* %18, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @svn_repos_revision_access_none, align 4
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  br label %152

145:                                              ; preds = %137
  %146 = load i64, i64* %19, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* @svn_repos_revision_access_partial, align 4
  %150 = load i32*, i32** %8, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %145
  br label %152

152:                                              ; preds = %151, %142
  %153 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %153, i32** %7, align 8
  br label %154

154:                                              ; preds = %152, %51, %33
  %155 = load i32*, i32** %7, align 8
  ret i32* %155
}

declare dso_local i32* @svn_repos_fs(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_paths_changed3(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_path_change_get(%struct.TYPE_5__**, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
