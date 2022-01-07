; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@svn_depth_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cb?(?r)?w\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @status(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  %18 = load i32, i32* @svn_depth_unknown, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_ra_svn__parse_tuple(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %13, i32* %10, i8** %12)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i8*, i8** %11, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @svn_relpath_canonicalize(i8* %22, i32* %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @svn_depth_from_word(i8* %28)
  store i32 %29, i32* %14, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @SVN_DEPTH_INFINITY_OR_EMPTY(i32 %31)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = call i32 @trivial_auth_request(i32* %34, i32* %35, %struct.TYPE_9__* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @SVN_IS_VALID_REVNUM(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @svn_fs_youngest_rev(i32* %10, i32 %47, i32* %48)
  %50 = call i32 @SVN_CMD_ERR(i32 %49)
  br label %51

51:                                               ; preds = %42, %33
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i8* @svn_fspath__join(i32 %58, i8* %59, i32* %60)
  store i8* %61, i8** %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @svn_log__status(i8* %65, i32 %66, i32 %67, i32* %68)
  %70 = call i32 @log_command(%struct.TYPE_9__* %62, i32* %63, i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32* @accept_report(i32* null, i32* null, i32* %72, i32* %73, %struct.TYPE_9__* %74, i32 %75, i8* %76, i32* null, i32 %77, i32 %78, i32 %79, i32 %80)
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32*, i32*, i8**) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_depth_from_word(i8*) #1

declare dso_local i32 @SVN_DEPTH_INFINITY_OR_EMPTY(i32) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @log_command(%struct.TYPE_9__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__status(i8*, i32, i32, i32*) #1

declare dso_local i32* @accept_report(i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i32, i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
