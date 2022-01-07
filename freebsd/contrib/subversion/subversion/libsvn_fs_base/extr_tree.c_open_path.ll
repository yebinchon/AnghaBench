; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_open_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_open_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@copy_id_inherit_self = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@open_path_last_optional = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Failure opening '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__**, %struct.TYPE_21__*, i8*, i32, i8*, i32*, i32*)* @open_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @open_path(%struct.TYPE_23__** %0, %struct.TYPE_21__* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__**, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_22__*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_23__** %0, %struct.TYPE_23__*** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %16, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i8* @svn_fs__canonicalize_abspath(i8* %32, i32* %33)
  store i8* %34, i8** %20, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call %struct.TYPE_22__* @root_node(i32** %17, %struct.TYPE_21__* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(%struct.TYPE_22__* %38)
  %40 = load i32*, i32** %17, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call %struct.TYPE_23__* @make_parent_path(i32* %40, i8* null, %struct.TYPE_23__* null, i32* %41)
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %18, align 8
  %43 = load i32, i32* @copy_id_inherit_self, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %20, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %19, align 8
  br label %48

48:                                               ; preds = %164, %7
  %49 = load i8*, i8** %19, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i8* @svn_fs__next_entry_name(i8** %22, i8* %49, i32* %50)
  store i8* %51, i8** %23, align 8
  %52 = load i8*, i8** %21, align 8
  %53 = load i8*, i8** %23, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i8* @svn_fspath__join(i8* %52, i8* %53, i32* %54)
  store i8* %55, i8** %21, align 8
  %56 = load i8*, i8** %23, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32*, i32** %17, align 8
  store i32* %61, i32** %24, align 8
  br label %146

62:                                               ; preds = %48
  store i8* null, i8** %26, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %27, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32* @dag_node_cache_get(%struct.TYPE_21__* %64, i8* %65, i32* %66)
  store i32* %67, i32** %28, align 8
  %68 = load i32*, i32** %28, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32*, i32** %28, align 8
  store i32* %71, i32** %24, align 8
  br label %78

72:                                               ; preds = %62
  %73 = load i32*, i32** %17, align 8
  %74 = load i8*, i8** %23, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call %struct.TYPE_22__* @svn_fs_base__dag_open(i32** %24, i32* %73, i8* %74, i32* %75, i32* %76)
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %27, align 8
  br label %78

78:                                               ; preds = %72, %70
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %80 = icmp ne %struct.TYPE_22__* %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %89 = call i32 @svn_error_clear(%struct.TYPE_22__* %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @open_path_last_optional, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load i8*, i8** %22, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8*, i8** %22, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97, %94
  %103 = load i8*, i8** %23, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call %struct.TYPE_23__* @make_parent_path(i32* null, i8* %103, %struct.TYPE_23__* %104, i32* %105)
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %18, align 8
  br label %167

107:                                              ; preds = %97, %87
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call %struct.TYPE_22__* @SVN_FS__NOT_FOUND(%struct.TYPE_21__* %108, i8* %109)
  store %struct.TYPE_22__* %110, %struct.TYPE_22__** %8, align 8
  br label %171

111:                                              ; preds = %81, %78
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %113 = call i32 @SVN_ERR(%struct.TYPE_22__* %112)
  %114 = load i32*, i32** %24, align 8
  %115 = load i8*, i8** %23, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = call %struct.TYPE_23__* @make_parent_path(i32* %114, i8* %115, %struct.TYPE_23__* %116, i32* %117)
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %18, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %111
  %122 = load i32*, i32** %16, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = call %struct.TYPE_22__* @get_copy_inheritance(i32* %25, i8** %26, i32* %122, %struct.TYPE_23__* %123, i8* %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(%struct.TYPE_22__* %127)
  %129 = load i32, i32* %25, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = load i8*, i8** %26, align 8
  %134 = call i32 @apr_pstrdup(i32* %132, i8* %133)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %121, %111
  %138 = load i32*, i32** %28, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %142 = load i8*, i8** %21, align 8
  %143 = load i32*, i32** %24, align 8
  %144 = call i32 @dag_node_cache_set(%struct.TYPE_21__* %141, i8* %142, i32* %143)
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %60
  %147 = load i8*, i8** %22, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %167

150:                                              ; preds = %146
  %151 = load i32*, i32** %24, align 8
  %152 = call i64 @svn_fs_base__dag_node_kind(i32* %151)
  %153 = load i64, i64* @svn_node_dir, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load i32*, i32** %16, align 8
  %157 = load i8*, i8** %21, align 8
  %158 = call i32 @SVN_FS__ERR_NOT_DIRECTORY(i32* %156, i8* %157)
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i8*, i8** %11, align 8
  %162 = call i32 @apr_psprintf(i32* %159, i32 %160, i8* %161)
  %163 = call i32 @SVN_ERR_W(i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %155, %150
  %165 = load i8*, i8** %22, align 8
  store i8* %165, i8** %19, align 8
  %166 = load i32*, i32** %24, align 8
  store i32* %166, i32** %17, align 8
  br label %48

167:                                              ; preds = %149, %102
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %169 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  store %struct.TYPE_23__* %168, %struct.TYPE_23__** %169, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %170, %struct.TYPE_22__** %8, align 8
  br label %171

171:                                              ; preds = %167, %107
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  ret %struct.TYPE_22__* %172
}

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @root_node(i32**, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @make_parent_path(i32*, i8*, %struct.TYPE_23__*, i32*) #1

declare dso_local i8* @svn_fs__next_entry_name(i8**, i8*, i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32* @dag_node_cache_get(%struct.TYPE_21__*, i8*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_fs_base__dag_open(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @SVN_FS__NOT_FOUND(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_22__* @get_copy_inheritance(i32*, i8**, i32*, %struct.TYPE_23__*, i8*, i32*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @dag_node_cache_set(%struct.TYPE_21__*, i8*, i32*) #1

declare dso_local i64 @svn_fs_base__dag_node_kind(i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @SVN_FS__ERR_NOT_DIRECTORY(i32*, i8*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
