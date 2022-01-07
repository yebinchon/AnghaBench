; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_rep_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SVN_ERR_FS_REP_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rep '%s' is not mutable\00", align 1
@rep_kind_fulltext = common dso_local global i64 0, align 8
@rep_kind_delta = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Rep '%s' both mutable and non-fulltext\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32, i8*, i32*, i32*)* @rep_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = call i32 @svn_fs_bdb__read_rep(%struct.TYPE_8__** %16, i32* %17, i8* %18, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @rep_is_mutable(%struct.TYPE_8__* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @SVN_ERR_FS_REP_NOT_MUTABLE, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %10, align 8
  %31 = call i32* @svn_error_createf(i32 %28, i32* null, i32 %29, i8* %30)
  store i32* %31, i32** %8, align 8
  br label %66

32:                                               ; preds = %7
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @rep_kind_fulltext, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @svn_fs_bdb__string_append(i32* %39, i32* %43, i32 %44, i8* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %64

50:                                               ; preds = %32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @rep_kind_delta, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %10, align 8
  %60 = call i32* @svn_error_createf(i32 %57, i32* null, i32 %58, i8* %59)
  store i32* %60, i32** %8, align 8
  br label %66

61:                                               ; preds = %50
  %62 = load i8*, i8** %10, align 8
  %63 = call i32* @UNKNOWN_NODE_KIND(i8* %62)
  store i32* %63, i32** %8, align 8
  br label %66

64:                                               ; preds = %38
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %64, %61, %56, %27
  %67 = load i32*, i32** %8, align 8
  ret i32* %67
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_8__**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @rep_is_mutable(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_bdb__string_append(i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @UNKNOWN_NODE_KIND(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
