; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_related_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_related_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.repos_move_info = type { i32 }
%struct.copy_info = type { i32, i32, i32, i32 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.repos_move_info**, %struct.copy_info*, i8*, i32, i8*, i32*, i8*, i8*, i32*, i32*, i32*, i32*)* @find_related_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @find_related_move(%struct.repos_move_info** %0, %struct.copy_info* %1, i8* %2, i32 %3, i8* %4, i32* %5, i8* %6, i8* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.repos_move_info**, align 8
  %15 = alloca %struct.copy_info*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_8__*, align 8
  store %struct.repos_move_info** %0, %struct.repos_move_info*** %14, align 8
  store %struct.copy_info* %1, %struct.copy_info** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32* %5, i32** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %28 = load %struct.repos_move_info**, %struct.repos_move_info*** %14, align 8
  store %struct.repos_move_info* null, %struct.repos_move_info** %28, align 8
  %29 = load %struct.copy_info*, %struct.copy_info** %15, align 8
  %30 = getelementptr inbounds %struct.copy_info, %struct.copy_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.copy_info*, %struct.copy_info** %15, align 8
  %33 = getelementptr inbounds %struct.copy_info, %struct.copy_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @rev_below(i32 %36)
  %38 = load i8*, i8** %20, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = load i32*, i32** %23, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = load i32*, i32** %25, align 8
  %43 = load i32*, i32** %25, align 8
  %44 = call %struct.TYPE_8__* @find_yca(i32** %26, i32 %31, i32 %34, i8* %35, i32 %37, i8* %38, i8* %39, i32* %40, i32* %41, i32* %42, i32* %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %27, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %12
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %55 = call i32 @svn_error_clear(%struct.TYPE_8__* %54)
  store i32* null, i32** %26, align 8
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %58 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %13, align 8
  br label %86

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %12
  %61 = load i32*, i32** %26, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load %struct.repos_move_info**, %struct.repos_move_info*** %14, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load %struct.copy_info*, %struct.copy_info** %15, align 8
  %67 = getelementptr inbounds %struct.copy_info, %struct.copy_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.copy_info*, %struct.copy_info** %15, align 8
  %70 = getelementptr inbounds %struct.copy_info, %struct.copy_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.copy_info*, %struct.copy_info** %15, align 8
  %73 = getelementptr inbounds %struct.copy_info, %struct.copy_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i8*, i8** %18, align 8
  %77 = load i32*, i32** %19, align 8
  %78 = load i32*, i32** %23, align 8
  %79 = load i8*, i8** %20, align 8
  %80 = load i32*, i32** %24, align 8
  %81 = load i32*, i32** %25, align 8
  %82 = call i32 @add_new_move(%struct.repos_move_info** %64, i8* %65, i32 %68, i32 %71, i32 %74, i32 %75, i8* %76, i32* %77, i32* %78, i8* %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %84

84:                                               ; preds = %63, %60
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %13, align 8
  br label %86

86:                                               ; preds = %84, %56
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  ret %struct.TYPE_8__* %87
}

declare dso_local %struct.TYPE_8__* @find_yca(i32**, i32, i32, i8*, i32, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rev_below(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @add_new_move(%struct.repos_move_info**, i8*, i32, i32, i32, i32, i8*, i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
