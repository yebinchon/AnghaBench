; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_find_src_op_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_find_src_op_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@STMT_SELECT_HIGHEST_WORKING_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"'%s' is not deleted\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_4__*, i8*, i32, i32*)* @find_src_op_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_src_op_depth(i32* %0, %struct.TYPE_4__* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STMT_SELECT_HIGHEST_WORKING_NODE, align 4
  %18 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %16, i32 %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %12, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @svn_sqlite__bindf(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @svn_sqlite__step(i64* %13, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_sqlite__column_int(i32* %34, i32 0)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %5
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @svn_sqlite__reset(i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @path_for_error_message(%struct.TYPE_4__* %46, i8* %47, i32* %48)
  %50 = call i32* @svn_error_createf(i32 %44, i32* null, i32 %45, i32 %49)
  store i32* %50, i32** %6, align 8
  br label %53

51:                                               ; preds = %37
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i32*, i32** %6, align 8
  ret i32* %54
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
