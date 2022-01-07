; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_open_source_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_open_source_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVNSYNC_PROP_FROM_URL = common dso_local global i32 0, align 4
@SVNSYNC_PROP_FROM_UUID = common dso_local global i32 0, align 4
@SVNSYNC_PROP_LAST_MERGED_REV = common dso_local global i32 0, align 4
@APR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Destination repository has not been initialized\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__**, i8*, i32*, i32*, i32*, i8*, i32*)* @open_source_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_source_session(i32** %0, %struct.TYPE_4__** %1, i8* %2, i32* %3, i32* %4, i32* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %10, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = call i32 @svn_ra_rev_proplist(i32* %21, i32 0, i32** %18, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %18, align 8
  %26 = load i32, i32* @SVNSYNC_PROP_FROM_URL, align 4
  %27 = call %struct.TYPE_4__* @svn_hash_gets(i32* %25, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %19, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = load i32, i32* @SVNSYNC_PROP_FROM_UUID, align 4
  %30 = call %struct.TYPE_4__* @svn_hash_gets(i32* %28, i32 %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %20, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = load i32, i32* @SVNSYNC_PROP_LAST_MERGED_REV, align 4
  %33 = call %struct.TYPE_4__* @svn_hash_gets(i32* %31, i32 %32)
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %37, %8
  %45 = load i32, i32* @APR_EINVAL, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %47 = call i32* @svn_error_create(i32 %45, i32* null, i32 %46)
  store i32* %47, i32** %9, align 8
  br label %71

48:                                               ; preds = %40
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @svn_opt__arg_canonicalize_url(i8** %12, i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32**, i32*** %10, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @svn_ra_open4(i32** %59, i32* null, i8* %60, i32 %63, i32* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %58, %44
  %72 = load i32*, i32** %9, align 8
  ret i32* %72
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_rev_proplist(i32*, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_opt__arg_canonicalize_url(i8**, i32, i32*) #1

declare dso_local i32 @svn_ra_open4(i32**, i32*, i8*, i32, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
