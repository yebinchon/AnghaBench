; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-blame-cmd.c_bench_null_blame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-blame-cmd.c_bench_null_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.file_rev_baton = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@file_rev_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%15s revisions\0A%15s deltas\0A%15s bytes in deltas\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_19__*, i32*)* @bench_null_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bench_null_blame(i8* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, i32 %4, i32 %5, %struct.TYPE_19__* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.file_rev_baton, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  %25 = alloca %struct.TYPE_18__, align 8
  store i8* %0, i8** %10, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = bitcast %struct.file_rev_baton* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 24, i1 false)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %8
  %39 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %40 = call i32* @svn_error_create(i32 %39, i32* null, i32* null)
  store i32* %40, i32** %9, align 8
  br label %141

41:                                               ; preds = %32
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @svn_path_is_url(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %23, align 8
  br label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @svn_dirent_get_absolute(i8** %23, i8* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @svn_client__ra_session_from_path2(i32** %19, i32* null, i8* %53, i32* null, %struct.TYPE_18__* %54, %struct.TYPE_18__* %55, %struct.TYPE_19__* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %23, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @svn_client__get_revision_number(i64* %20, i32* null, i32 %62, i8* %63, i32* %64, %struct.TYPE_18__* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %23, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = call i32 @svn_client__get_revision_number(i64* %21, i32* null, i32 %71, i8* %72, i32* %73, %struct.TYPE_18__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i64, i64* @svn_opt_revision_number, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* %21, align 8
  %82 = call i64 @MAX(i64 %80, i64 %81)
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @svn_client__resolve_rev_and_url(%struct.TYPE_20__** %24, i32* %85, i8* %86, %struct.TYPE_18__* %87, %struct.TYPE_18__* %25, %struct.TYPE_19__* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %19, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @svn_ra_reparent(i32* %92, i32 %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %21, align 8
  %101 = icmp sgt i64 %99, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %22, align 4
  %103 = load i32*, i32** %19, align 8
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %52
  %107 = load i64, i64* %20, align 8
  br label %112

108:                                              ; preds = %52
  %109 = load i64, i64* %20, align 8
  %110 = sub nsw i64 %109, 1
  %111 = call i64 @MAX(i64 0, i64 %110)
  br label %112

112:                                              ; preds = %108, %106
  %113 = phi i64 [ %107, %106 ], [ %111, %108 ]
  %114 = load i64, i64* %21, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @file_rev_handler, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @svn_ra_get_file_revs2(i32* %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %113, i64 %114, i32 %115, i32 %116, %struct.file_rev_baton* %18, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %112
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %125 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %18, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @svn__ui64toa_sep(i32 %126, i8 signext 44, i32* %127)
  %129 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %18, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %17, align 8
  %132 = call i32 @svn__ui64toa_sep(i32 %130, i8 signext 44, i32* %131)
  %133 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %18, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %17, align 8
  %136 = call i32 @svn__ui64toa_sep(i32 %134, i8 signext 44, i32* %135)
  %137 = call i32 @svn_cmdline_printf(i32* %123, i32 %124, i32 %128, i32 %132, i32 %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  br label %139

139:                                              ; preds = %122, %112
  %140 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %140, i32** %9, align 8
  br label %141

141:                                              ; preds = %139, %38
  %142 = load i32*, i32** %9, align 8
  ret i32* %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #2

declare dso_local i64 @svn_path_is_url(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #2

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, i32*, i8*, i32*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @svn_client__get_revision_number(i64*, i32*, i32, i8*, i32*, %struct.TYPE_18__*, i32*) #2

declare dso_local i64 @MAX(i64, i64) #2

declare dso_local i32 @svn_client__resolve_rev_and_url(%struct.TYPE_20__**, i32*, i8*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @svn_ra_reparent(i32*, i32, i32*) #2

declare dso_local i32 @svn_ra_get_file_revs2(i32*, i8*, i64, i64, i32, i32, %struct.file_rev_baton*, i32*) #2

declare dso_local i32 @svn_cmdline_printf(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @svn__ui64toa_sep(i32, i8 signext, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
