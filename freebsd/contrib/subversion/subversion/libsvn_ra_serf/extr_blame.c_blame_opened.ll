; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blame.c_blame_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blame.c_blame_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32 (i32, i8*, i32, i32, i32, i32*, i8**, i32, i32*)*, i32* }

@FILE_REV = common dso_local global i32 0, align 4
@TXDELTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"merged-revision\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*)* @blame_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blame_opened(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FILE_REV, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %5
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @svn_ra_serf__xml_state_pool(i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @apr_hash_make(i32* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @apr_array_make(i32* %33, i32 5, i32 4)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %92

42:                                               ; preds = %5
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TXDELTA, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @svn_ra_serf__xml_state_pool(i32* %47)
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @FILE_REV, align 4
  %51 = call i32* @svn_ra_serf__xml_gather_since(i32* %49, i32 %50)
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i8* @svn_hash_gets(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %15, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i8* @svn_hash_gets(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %16, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 @svn_cstring_atoi64(i64* %20, i8* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %14, align 8
  %60 = call i8* @svn_hash_gets(i32* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %60, i8** %17, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32 (i32, i8*, i32, i32, i32, i32*, i8**, i32, i32*)*, i32 (i32, i8*, i32, i32, i32, i32*, i8**, i32, i32*)** %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i64, i64* %20, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = icmp ne i8* %73, null
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 %63(i32 %66, i8* %67, i32 %69, i32 %72, i32 %75, i32* %18, i8** %19, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32, i32* %18, align 4
  %83 = load i8*, i8** %19, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @svn_txdelta_parse_svndiff(i32 %82, i8* %83, i32 %84, i32* %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i32* @svn_base64_decode(i32 %86, i32* %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %46, %42
  br label %92

92:                                               ; preds = %91, %26
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i32* @svn_ra_serf__xml_state_pool(i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_ra_serf__xml_gather_since(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32* @svn_base64_decode(i32, i32*) #1

declare dso_local i32 @svn_txdelta_parse_svndiff(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
