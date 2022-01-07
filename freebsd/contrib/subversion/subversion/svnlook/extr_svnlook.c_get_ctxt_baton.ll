; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_get_ctxt_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_get_ctxt_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svnlook_opt_state = type { i64, i8*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@warning_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, %struct.svnlook_opt_state*, i32*)* @get_ctxt_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_ctxt_baton(%struct.TYPE_4__** %0, %struct.svnlook_opt_state* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.svnlook_opt_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store %struct.svnlook_opt_state* %1, %struct.svnlook_opt_state** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call %struct.TYPE_4__* @apr_pcalloc(i32* %8, i32 80)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 16
  %12 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %13 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @svn_repos_open3(i32* %11, i32 %14, i32* null, i32* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @svn_repos_fs(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @warning_func, align 4
  %29 = call i32 @svn_fs_set_warning_func(i32 %27, i32 %28, i32* null)
  %30 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %31 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 15
  store i32 %32, i32* %34, align 8
  %35 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %36 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 14
  store i32 %37, i32* %39, align 4
  %40 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %41 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 8
  %45 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %46 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 12
  store i32 %47, i32* %49, align 4
  %50 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %51 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 8
  %55 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %56 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 4
  %60 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %61 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  %65 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %66 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  %72 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %73 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %79 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @apr_pstrdup(i32* %77, i32* %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %85 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %3
  %89 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %90 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %3
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i8* [ %91, %88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %92 ]
  %95 = load i32, i32* @TRUE, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @svn_cstring_split(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 8
  %100 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %101 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %106 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %5, align 8
  %111 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %93
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @svn_fs_open_txn(i32* %121, i32 %124, i64 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %147

131:                                              ; preds = %93
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @svn_fs_youngest_rev(i64* %139, i32 %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %137, %131
  br label %147

147:                                              ; preds = %146, %119
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %148, %struct.TYPE_4__** %149, align 8
  %150 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %150
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_open3(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_repos_fs(i32) #1

declare dso_local i32 @svn_fs_set_warning_func(i32, i32, i32*) #1

declare dso_local i64 @apr_pstrdup(i32*, i32*) #1

declare dso_local i32 @svn_cstring_split(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_open_txn(i32*, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_youngest_rev(i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
