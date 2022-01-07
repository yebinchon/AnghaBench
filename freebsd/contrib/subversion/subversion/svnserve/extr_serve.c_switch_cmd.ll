; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_switch_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_switch_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@svn_depth_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(?r)cbc?w?33\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i64 0, align 8
@svn_tristate_false = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @switch_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @switch_cmd(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  %22 = load i32, i32* @svn_depth_unknown, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @svn_ra_svn__parse_tuple(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %10, i8** %11, i32* %15, i8** %13, i8** %12, i64* %17, i64* %18)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i8*, i8** %11, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @svn_relpath_canonicalize(i8* %26, i32* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @svn_uri_canonicalize(i8* %29, i32* %30)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @svn_depth_from_word(i8* %35)
  store i32 %36, i32* %16, align 4
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i32 %38)
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = call i32 @trivial_auth_request(i32* %41, i32* %42, %struct.TYPE_9__* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @SVN_IS_VALID_REVNUM(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @svn_fs_youngest_rev(i32* %10, i32 %54, i32* %55)
  %57 = call i32 @SVN_CMD_ERR(i32 %56)
  br label %58

58:                                               ; preds = %49, %40
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @svn_path_uri_decode(i8* %63, i32* %64)
  %66 = load i8*, i8** %13, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @svn_path_uri_decode(i8* %66, i32* %67)
  %69 = call i32 @get_fs_path(i32 %65, i32 %68, i8** %14)
  %70 = call i32 @SVN_CMD_ERR(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i8* @svn_fspath__join(i32 %77, i8* %78, i32* %79)
  store i8* %80, i8** %19, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @svn_log__switch(i8* %84, i8* %85, i32 %86, i32 %87, i32* %88)
  %90 = call i32 @log_command(%struct.TYPE_9__* %81, i32* %82, i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* @svn_tristate_true, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* @svn_tristate_false, align 8
  %106 = icmp ne i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32* @accept_report(i32* null, i32* null, i32* %92, i32* %93, %struct.TYPE_9__* %94, i32 %95, i8* %96, i8* %97, i32 %98, i32 %99, i32 %103, i32 %107)
  ret i32* %108
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32*, i8**, i32*, i8**, i8**, i64*, i64*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i8* @svn_uri_canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_depth_from_word(i8*) #1

declare dso_local i32 @SVN_DEPTH_INFINITY_OR_FILES(i32) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @get_fs_path(i32, i32, i8**) #1

declare dso_local i32 @svn_path_uri_decode(i8*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @log_command(%struct.TYPE_9__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__switch(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32* @accept_report(i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
