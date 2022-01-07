; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_new_revision_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_new_revision_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton_t = type { i32, i32, %struct.TYPE_2__*, i32, i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i64 }

@FALSE = common dso_local global i8* null, align 8
@SVN_REPOS_DUMPFILE_REVISION_NUMBER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @new_revision_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_revision_record(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.revision_baton_t*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i8* @apr_palloc(i32* %11, i32 48)
  %13 = load i8**, i8*** %5, align 8
  store i8* %12, i8** %13, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.revision_baton_t*
  store %struct.revision_baton_t* %16, %struct.revision_baton_t** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  %19 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %20 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %19, i32 0, i32 2
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %20, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %23 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %26 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %29 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @apr_hash_make(i32* %30)
  %32 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %33 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @headers_dup(i32* %34, i32* %35)
  %37 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %38 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @SVN_REPOS_DUMPFILE_REVISION_NUMBER, align 4
  %41 = call i8* @svn_hash_gets(i32* %39, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @SVN_STR_TO_REV(i8* %42)
  %44 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %45 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %47 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %4
  %53 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %54 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %57 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %55, %60
  %62 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %63 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %70

64:                                               ; preds = %4
  %65 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %66 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %69 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %52
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @headers_dup(i32*, i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_STR_TO_REV(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
