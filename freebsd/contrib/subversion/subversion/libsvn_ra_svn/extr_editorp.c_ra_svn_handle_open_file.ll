; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (i8*, i32, i32, i32, i32*)* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"css(?r)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_11__*)* @ra_svn_handle_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_handle_open_file(i32* %0, i32* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @svn_ra_svn__parse_tuple(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, i32** %10, i32** %11, i32* %12)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @lookup_token(%struct.TYPE_11__* %18, i32* %19, i32 %20, %struct.TYPE_10__** %13)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @svn_relpath_is_canonical(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @svn_relpath_canonicalize(i8* %31, i32* %32)
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %30, %4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_10__* @store_token(%struct.TYPE_11__* %35, i32* null, i32* %36, i32 %37, i32 %40)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %14, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32 (i8*, i32, i32, i32, i32*)*, i32 (i8*, i32, i32, i32, i32*)** %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 %46(i8* %47, i32 %50, i32 %51, i32 %54, i32* %56)
  %58 = call i32 @SVN_CMD_ERR(i32 %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32**, i32**, i32*) #1

declare dso_local i32 @lookup_token(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @store_token(%struct.TYPE_11__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
