; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_svn_fs_base__delete_rep_if_mutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_svn_fs_base__delete_rep_if_mutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@rep_kind_fulltext = common dso_local global i64 0, align 8
@rep_kind_delta = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__delete_rep_if_mutable(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
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
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %6, align 8
  br label %70

26:                                               ; preds = %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @rep_kind_fulltext, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @svn_fs_bdb__string_delete(i32* %33, i32 %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %64

43:                                               ; preds = %26
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @rep_kind_delta, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @delta_string_keys(i32** %13, %struct.TYPE_9__* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @delete_strings(i32* %54, i32* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %63

60:                                               ; preds = %43
  %61 = load i8*, i8** %8, align 8
  %62 = call i32* @UNKNOWN_NODE_KIND(i8* %61)
  store i32* %62, i32** %6, align 8
  br label %70

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32* @svn_fs_bdb__delete_rep(i32* %65, i8* %66, i32* %67, i32* %68)
  store i32* %69, i32** %6, align 8
  br label %70

70:                                               ; preds = %64, %60, %24
  %71 = load i32*, i32** %6, align 8
  ret i32* %71
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_9__**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @rep_is_mutable(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @svn_fs_bdb__string_delete(i32*, i32, i32*, i32*) #1

declare dso_local i32 @delta_string_keys(i32**, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @delete_strings(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @UNKNOWN_NODE_KIND(i8*) #1

declare dso_local i32* @svn_fs_bdb__delete_rep(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
