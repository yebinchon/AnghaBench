; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (i8*, i32, i8*, i32, i32, i32*)* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"css(?cr)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_11__*)* @ra_svn_handle_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_handle_add_file(i32* %0, i32* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_ra_svn__parse_tuple(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, i32** %11, i32** %12, i8** %10, i32* %13)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @lookup_token(%struct.TYPE_11__* %19, i32* %20, i32 %21, %struct.TYPE_10__** %14)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @svn_relpath_is_canonical(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @svn_relpath_canonicalize(i8* %32, i32* %33)
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %31, %4
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @svn_path_is_url(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i8* @svn_uri_canonicalize(i8* %43, i32* %44)
  store i8* %45, i8** %10, align 8
  br label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @svn_fspath__canonicalize(i8* %47, i32* %48)
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_10__* @store_token(%struct.TYPE_11__* %52, i32* null, i32* %53, i32 %54, i32 %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %15, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32 (i8*, i32, i8*, i32, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32, i32*)** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = call i32 %63(i8* %64, i32 %67, i8* %68, i32 %69, i32 %72, i32* %74)
  %76 = call i32 @SVN_CMD_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32**, i32**, i8**, i32*) #1

declare dso_local i32 @lookup_token(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_uri_canonicalize(i8*, i32*) #1

declare dso_local i8* @svn_fspath__canonicalize(i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @store_token(%struct.TYPE_11__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
