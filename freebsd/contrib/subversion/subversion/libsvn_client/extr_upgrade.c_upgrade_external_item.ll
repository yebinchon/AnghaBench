; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_upgrade.c_upgrade_external_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_upgrade.c_upgrade_external_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.repos_info_baton = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_30__*, i8*, i8*, i8*, %struct.TYPE_28__*, %struct.repos_info_baton*, i32*)* @upgrade_external_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @upgrade_external_item(%struct.TYPE_30__* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_28__* %4, %struct.repos_info_baton* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.repos_info_baton*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %13, align 8
  store %struct.repos_info_baton* %5, %struct.repos_info_baton** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = call i8* @svn_dirent_join(i8* %25, i32 %28, i32* %29)
  store i8* %30, i8** %17, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call %struct.TYPE_29__* @svn_wc__resolve_relative_external_url(i8** %16, %struct.TYPE_28__* %31, i8* %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(%struct.TYPE_29__* %36)
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call %struct.TYPE_29__* @svn_wc_read_kind2(i32* %21, i32 %40, i8* %41, i32 %42, i32 %43, i32* %44)
  store %struct.TYPE_29__* %45, %struct.TYPE_29__** %24, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %47 = icmp ne %struct.TYPE_29__* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %7
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %56 = call i32 @svn_error_clear(%struct.TYPE_29__* %55)
  %57 = load i8*, i8** %17, align 8
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = call %struct.TYPE_29__* @svn_client_upgrade(i8* %57, %struct.TYPE_30__* %58, i32* %59)
  %61 = call i32 @SVN_ERR(%struct.TYPE_29__* %60)
  br label %69

62:                                               ; preds = %48, %7
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %64 = icmp ne %struct.TYPE_29__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %67 = call %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__* %66)
  store %struct.TYPE_29__* %67, %struct.TYPE_29__** %8, align 8
  br label %154

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %54
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = call %struct.TYPE_29__* @svn_wc_read_kind2(i32* %21, i32 %72, i8* %73, i32 %74, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(%struct.TYPE_29__* %77)
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call %struct.TYPE_29__* @svn_wc__node_get_repos_info(i32* null, i8** %18, i8** %19, i8** %20, i32 %81, i8* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(%struct.TYPE_29__* %85)
  %87 = load i8*, i8** %16, align 8
  %88 = load i8*, i8** %19, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @svn_path_url_add_component2(i8* %88, i8* %89, i32* %90)
  %92 = call i64 @strcmp(i8* %87, i32 %91)
  %93 = icmp ne i64 0, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %69
  %95 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call %struct.TYPE_29__* @fetch_repos_info(i8** %19, i8** %20, %struct.repos_info_baton* %95, i8* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(%struct.TYPE_29__* %99)
  %101 = load i8*, i8** %19, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = call i8* @svn_uri_skip_ancestor(i8* %101, i8* %102, i32* %103)
  store i8* %104, i8** %18, align 8
  %105 = load i32, i32* @svn_node_unknown, align 4
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %94, %69
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @svn_opt_revision_number, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  br label %121

119:                                              ; preds = %106
  %120 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %121

121:                                              ; preds = %119, %113
  %122 = phi i32 [ %118, %113 ], [ %120, %119 ]
  store i32 %122, i32* %22, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @svn_opt_revision_number, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  br label %137

135:                                              ; preds = %121
  %136 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi i32 [ %134, %129 ], [ %136, %135 ]
  store i32 %138, i32* %23, align 4
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %17, align 8
  %143 = load i32, i32* %21, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = load i8*, i8** %20, align 8
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32*, i32** %15, align 8
  %151 = call %struct.TYPE_29__* @svn_wc__upgrade_add_external_info(i32 %141, i8* %142, i32 %143, i8* %144, i8* %145, i8* %146, i8* %147, i32 %148, i32 %149, i32* %150)
  %152 = call i32 @SVN_ERR(%struct.TYPE_29__* %151)
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %153, %struct.TYPE_29__** %8, align 8
  br label %154

154:                                              ; preds = %137, %65
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  ret %struct.TYPE_29__* %155
}

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @svn_wc__resolve_relative_external_url(i8**, %struct.TYPE_28__*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_wc_read_kind2(i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @svn_client_upgrade(i8*, %struct.TYPE_30__*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_error_trace(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @svn_wc__node_get_repos_info(i32*, i8**, i8**, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_29__* @fetch_repos_info(i8**, i8**, %struct.repos_info_baton*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_wc__upgrade_add_external_info(i32, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
