; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_contents_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_contents_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@SVN_ERR_FS_REP_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rep '%s' is not mutable\00", align 1
@rep_kind_fulltext = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32*, i32*)* @rep_contents_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_contents_clear(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @svn_fs_bdb__read_rep(%struct.TYPE_9__** %12, i32* %14, i8* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @rep_is_mutable(%struct.TYPE_9__* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @SVN_ERR_FS_REP_NOT_MUTABLE, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i8* %27)
  store i32* %28, i32** %6, align 8
  br label %69

29:                                               ; preds = %5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @rep_kind_fulltext, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @SVN_ERR_ASSERT(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %29
  %45 = load i8*, i8** %13, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @svn_fs_bdb__string_clear(i32* %50, i8* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @svn_fs_bdb__write_rep(i32* %60, i8* %61, %struct.TYPE_9__* %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  br label %67

67:                                               ; preds = %49, %44, %29
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %6, align 8
  br label %69

69:                                               ; preds = %67, %24
  %70 = load i32*, i32** %6, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_9__**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @rep_is_mutable(%struct.TYPE_9__*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_fs_bdb__string_clear(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_bdb__write_rep(i32*, i8*, %struct.TYPE_9__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
