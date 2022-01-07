; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@svn_depth_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"(?r)cb?w3?3\00", align 1
@svn_authz_read = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  %21 = load i32, i32* @svn_depth_unknown, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @svn_ra_svn__parse_tuple(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %10, i8** %11, i64* %14, i8** %13, i64* %15, i64* %16)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i8*, i8** %11, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @svn_relpath_canonicalize(i8* %25, i32* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @svn_depth_from_word(i8* %31)
  store i32 %32, i32* %17, align 4
  br label %36

33:                                               ; preds = %4
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i64 %34)
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @svn_fspath__join(i32 %43, i8* %44, i32* %45)
  store i8* %46, i8** %12, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = load i32, i32* @svn_authz_read, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @must_have_access(i32* %47, i32* %48, %struct.TYPE_9__* %49, i32 %50, i8* %51, i32 %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @SVN_IS_VALID_REVNUM(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %36
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @svn_fs_youngest_rev(i32* %10, i32 %63, i32* %64)
  %66 = call i32 @SVN_CMD_ERR(i32 %65)
  br label %67

67:                                               ; preds = %58, %36
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @svn_tristate_true, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* @svn_tristate_true, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @accept_report(i64* %18, i32* null, i32* %68, i32* %69, %struct.TYPE_9__* %70, i32 %71, i8* %72, i32* null, i32 %73, i32 %74, i32 %78, i32 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i64, i64* %18, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %67
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @svn_log__checkout(i8* %91, i32 %92, i32 %93, i32* %94)
  %96 = call i32 @log_command(%struct.TYPE_9__* %88, i32* %89, i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  br label %113

98:                                               ; preds = %67
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* @svn_tristate_true, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @svn_log__update(i8* %102, i32 %103, i32 %104, i32 %108, i32* %109)
  %111 = call i32 @log_command(%struct.TYPE_9__* %99, i32* %100, i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  br label %113

113:                                              ; preds = %98, %87
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %114
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32*, i8**, i64*, i8**, i64*, i64*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_depth_from_word(i8*) #1

declare dso_local i32 @SVN_DEPTH_INFINITY_OR_FILES(i64) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @must_have_access(i32*, i32*, %struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @accept_report(i64*, i32*, i32*, i32*, %struct.TYPE_9__*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @log_command(%struct.TYPE_9__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__checkout(i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_log__update(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
