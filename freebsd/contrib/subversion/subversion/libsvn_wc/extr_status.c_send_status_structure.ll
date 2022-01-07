; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_send_status_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_send_status_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_status_baton = type { i32, i32, i32, i64 }
%struct.svn_wc__db_info_t = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.walk_status_baton*, i8*, i8*, i8*, i8*, %struct.svn_wc__db_info_t*, i32*, i32, i32 (i8*, i8*, i32*, i32*)*, i8*, i32*)* @send_status_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_status_structure(%struct.walk_status_baton* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.svn_wc__db_info_t* %5, i32* %6, i32 %7, i32 (i8*, i8*, i32*, i32*)* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.walk_status_baton*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.svn_wc__db_info_t*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32 (i8*, i8*, i32*, i32*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_3__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store %struct.walk_status_baton* %0, %struct.walk_status_baton** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store %struct.svn_wc__db_info_t* %5, %struct.svn_wc__db_info_t** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 (i8*, i8*, i32*, i32*)* %8, i32 (i8*, i8*, i32*, i32*)** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* null, i32** %25, align 8
  %29 = load %struct.walk_status_baton*, %struct.walk_status_baton** %13, align 8
  %30 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %11
  %34 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load %struct.walk_status_baton*, %struct.walk_status_baton** %13, align 8
  %39 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = call i32 @get_repos_root_url_relpath(i8** %26, i8** %27, i8** %28, %struct.svn_wc__db_info_t* %34, i8* %35, i8* %36, i8* %37, i32 %40, i8* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i8*, i8** %26, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load %struct.walk_status_baton*, %struct.walk_status_baton** %13, align 8
  %50 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %26, align 8
  %53 = load i32*, i32** %23, align 8
  %54 = call i32 @svn_fspath__join(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %52, i32* %53)
  %55 = call i32* @svn_hash_gets(i64 %51, i32 %54)
  store i32* %55, i32** %25, align 8
  br label %56

56:                                               ; preds = %48, %33
  br label %57

57:                                               ; preds = %56, %11
  %58 = load %struct.walk_status_baton*, %struct.walk_status_baton** %13, align 8
  %59 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %20, align 4
  %68 = load %struct.walk_status_baton*, %struct.walk_status_baton** %13, align 8
  %69 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.walk_status_baton*, %struct.walk_status_baton** %13, align 8
  %72 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %25, align 8
  %75 = load i32*, i32** %23, align 8
  %76 = load i32*, i32** %23, align 8
  %77 = call i32 @assemble_status(%struct.TYPE_3__** %24, i32 %60, i8* %61, i8* %62, i8* %63, i8* %64, %struct.svn_wc__db_info_t* %65, i32* %66, i32 %67, i32 %70, i32 %73, i32* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %57
  %82 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %21, align 8
  %83 = icmp ne i32 (i8*, i8*, i32*, i32*)* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %21, align 8
  %86 = load i8*, i8** %22, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %23, align 8
  %91 = call i32 %85(i8* %86, i8* %87, i32* %89, i32* %90)
  %92 = call i32* @svn_error_trace(i32 %91)
  store i32* %92, i32** %12, align 8
  br label %95

93:                                               ; preds = %81, %57
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %12, align 8
  br label %95

95:                                               ; preds = %93, %84
  %96 = load i32*, i32** %12, align 8
  ret i32* %96
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_repos_root_url_relpath(i8**, i8**, i8**, %struct.svn_wc__db_info_t*, i8*, i8*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @assemble_status(%struct.TYPE_3__**, i32, i8*, i8*, i8*, i8*, %struct.svn_wc__db_info_t*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
