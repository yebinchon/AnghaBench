; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_mtcc_verify_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_mtcc_verify_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Path '%s' already exists\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i32*)* @mtcc_verify_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mtcc_verify_create(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = call i32 @MTCC_UNMODIFIED(%struct.TYPE_5__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @mtcc_op_find(i32** %9, i32* null, i8* %19, i32 %22, i32 %23, i32 %24, i32 %25, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @svn_error_createf(i32 %35, i32* null, i32 %36, i8* %37)
  store i32* %38, i32** %4, align 8
  br label %75

39:                                               ; preds = %18
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @mtcc_op_find(i32** %9, i32* null, i8* %40, i32 %43, i32 %44, i32 %45, i32 %46, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %4, align 8
  br label %75

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %14
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @svn_client__mtcc_check_path(i64* %8, i8* %59, i32 %60, %struct.TYPE_5__* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @svn_node_none, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %6, align 8
  %72 = call i32* @svn_error_createf(i32 %69, i32* null, i32 %70, i8* %71)
  store i32* %72, i32** %4, align 8
  br label %75

73:                                               ; preds = %58
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %73, %68, %55, %34
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i32 @MTCC_UNMODIFIED(%struct.TYPE_5__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mtcc_op_find(i32**, i32*, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_client__mtcc_check_path(i64*, i8*, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
