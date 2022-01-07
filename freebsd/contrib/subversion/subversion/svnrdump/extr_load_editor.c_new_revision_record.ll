; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_new_revision_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_new_revision_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { i64, i32, i32, %struct.parse_baton*, i64, i32* }
%struct.parse_baton = type { i64, i32*, i32*, i32 }

@SVN_REPOS_DUMPFILE_REVISION_NUMBER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @new_revision_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_revision_record(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.revision_baton*, align 8
  %10 = alloca %struct.parse_baton*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call %struct.revision_baton* @apr_pcalloc(i32* %13, i32 40)
  store %struct.revision_baton* %14, %struct.revision_baton** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.parse_baton*
  store %struct.parse_baton* %16, %struct.parse_baton** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @svn_pool_create(i32* %17)
  %19 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %20 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %22 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %23 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %22, i32 0, i32 3
  store %struct.parse_baton* %21, %struct.parse_baton** %23, align 8
  %24 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %25 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @SVN_REPOS_DUMPFILE_REVISION_NUMBER, align 4
  %28 = call i8* @svn_hash_gets(i32* %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @SVN_STR_TO_REV(i8* %32)
  %34 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %35 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %38 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @svn_ra_get_latest_revnum(i32 %39, i64* %12, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %44 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %46, 1
  %48 = sub nsw i64 %45, %47
  %49 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %50 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %52 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %36
  %56 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %57 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @SVN_IS_VALID_REVNUM(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %63 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %66 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %55, %36
  %68 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %69 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %68, i32 0, i32 3
  %70 = load %struct.parse_baton*, %struct.parse_baton** %69, align 8
  %71 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %73 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %72, i32 0, i32 3
  %74 = load %struct.parse_baton*, %struct.parse_baton** %73, align 8
  %75 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %77 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @apr_hash_make(i32 %78)
  %80 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %81 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %83 = bitcast %struct.revision_baton* %82 to i8*
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local %struct.revision_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @SVN_STR_TO_REV(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_latest_revnum(i32, i64*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @apr_hash_make(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
