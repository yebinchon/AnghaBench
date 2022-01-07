; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_dump_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_edit_baton = type { i32, i64 }
%struct.dir_baton = type { i8* }
%struct.file_baton = type { i8* }

@SVN_REPOS_DUMPFILE_NODE_PATH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@SVN_REPOS_DUMPFILE_NODE_ACTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.dump_edit_baton*, i8*, %struct.dir_baton*, %struct.file_baton*, i32, i32, i8*, i32, i32*)* @dump_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dump_node(i32** %0, %struct.dump_edit_baton* %1, i8* %2, %struct.dir_baton* %3, %struct.file_baton* %4, i32 %5, i32 %6, i8* %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca %struct.dump_edit_baton*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca %struct.file_baton*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store i32** %0, i32*** %11, align 8
  store %struct.dump_edit_baton* %1, %struct.dump_edit_baton** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.dir_baton* %3, %struct.dir_baton** %14, align 8
  store %struct.file_baton* %4, %struct.file_baton** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %23 = load i8*, i8** %13, align 8
  store i8* %23, i8** %21, align 8
  %24 = load i32*, i32** %20, align 8
  %25 = call i32* @svn_repos__dumpfile_headers_create(i32* %24)
  store i32* %25, i32** %22, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @svn_relpath_is_canonical(i8* %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %18, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %10
  %32 = load i8*, i8** %18, align 8
  %33 = call i32 @svn_relpath_is_canonical(i8* %32)
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %10
  %36 = phi i1 [ true, %10 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %40 = icmp ne %struct.dir_baton* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %43 = icmp ne %struct.file_baton* %42, null
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %12, align 8
  %50 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %12, align 8
  %55 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = load i32*, i32** %20, align 8
  %59 = call i8* @svn_relpath_join(i64 %56, i8* %57, i32* %58)
  store i8* %59, i8** %21, align 8
  br label %60

60:                                               ; preds = %53, %44
  %61 = load i32*, i32** %22, align 8
  %62 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_PATH, align 4
  %63 = load i8*, i8** %21, align 8
  %64 = call i32 @svn_repos__dumpfile_header_push(i32* %61, i32 %62, i8* %63)
  %65 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %66 = icmp ne %struct.file_baton* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32*, i32** %22, align 8
  %69 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %70 = call i32 @svn_repos__dumpfile_header_push(i32* %68, i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %79

71:                                               ; preds = %60
  %72 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %73 = icmp ne %struct.dir_baton* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %22, align 8
  %76 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %77 = call i32 @svn_repos__dumpfile_header_push(i32* %75, i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78, %67
  %80 = load i32, i32* %16, align 4
  switch i32 %80, label %152 [
    i32 130, label %81
    i32 129, label %85
    i32 128, label %89
    i32 131, label %120
  ]

81:                                               ; preds = %79
  %82 = load i32*, i32** %22, align 8
  %83 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %84 = call i32 @svn_repos__dumpfile_header_push(i32* %82, i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %152

85:                                               ; preds = %79
  %86 = load i32*, i32** %22, align 8
  %87 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %88 = call i32 @svn_repos__dumpfile_header_push(i32* %86, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %152

89:                                               ; preds = %79
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %22, align 8
  %94 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %95 = call i32 @svn_repos__dumpfile_header_push(i32* %93, i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %97 = icmp ne %struct.file_baton* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i8*, i8** @TRUE, align 8
  %100 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %101 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %110

102:                                              ; preds = %92
  %103 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %104 = icmp ne %struct.dir_baton* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i8*, i8** @TRUE, align 8
  %107 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %108 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %98
  br label %152

111:                                              ; preds = %89
  %112 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %12, align 8
  %113 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = call i32 @dump_node_delete(i32 %114, i8* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  br label %119

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %79, %119
  %121 = load i32*, i32** %22, align 8
  %122 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %123 = call i32 @svn_repos__dumpfile_header_push(i32* %121, i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load i32*, i32** %22, align 8
  %128 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, align 4
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @svn_repos__dumpfile_header_pushf(i32* %127, i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %22, align 8
  %132 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, align 4
  %133 = load i8*, i8** %18, align 8
  %134 = call i32 @svn_repos__dumpfile_header_push(i32* %131, i32 %132, i8* %133)
  br label %151

135:                                              ; preds = %120
  %136 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %137 = icmp ne %struct.file_baton* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** @TRUE, align 8
  %140 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %141 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %150

142:                                              ; preds = %135
  %143 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %144 = icmp ne %struct.dir_baton* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i8*, i8** @TRUE, align 8
  %147 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %148 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %142
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %126
  br label %152

152:                                              ; preds = %79, %151, %110, %85, %81
  %153 = load i32*, i32** %22, align 8
  %154 = load i32**, i32*** %11, align 8
  store i32* %153, i32** %154, align 8
  %155 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %155
}

declare dso_local i32* @svn_repos__dumpfile_headers_create(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i8* @svn_relpath_join(i64, i8*, i32*) #1

declare dso_local i32 @svn_repos__dumpfile_header_push(i32*, i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_node_delete(i32, i8*, i32*) #1

declare dso_local i32 @svn_repos__dumpfile_header_pushf(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
