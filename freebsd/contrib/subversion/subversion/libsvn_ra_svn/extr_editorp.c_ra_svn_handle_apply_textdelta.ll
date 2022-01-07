; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_handle_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i32, i32*, i8**)* }
%struct.TYPE_8__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"s(?c)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Apply-textdelta already active\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_9__*)* @ra_svn_handle_apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_handle_apply_textdelta(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @svn_ra_svn__parse_tuple(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %10, i8** %14)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @lookup_token(%struct.TYPE_9__* %18, i32* %19, i32 %20, %struct.TYPE_8__** %11)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32* @svn_error_create(i32 %28, i32* null, i32 %29)
  store i32* %30, i32** %5, align 8
  br label %62

31:                                               ; preds = %4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @svn_pool_create(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32 (i32, i8*, i32, i32*, i8**)*, i32 (i32, i8*, i32, i32*, i8**)** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %42(i32 %45, i8* %46, i32 %49, i32* %12, i8** %13)
  %51 = call i32 @SVN_CMD_ERR(i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @svn_txdelta_parse_svndiff(i32 %52, i8* %53, i32 %54, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %31, %27
  %63 = load i32*, i32** %5, align 8
  ret i32* %63
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32**, i8**) #1

declare dso_local i32 @lookup_token(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_8__**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_create(i32) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i64 @svn_txdelta_parse_svndiff(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
