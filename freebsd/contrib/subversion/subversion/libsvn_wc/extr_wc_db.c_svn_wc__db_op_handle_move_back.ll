; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_handle_move_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_handle_move_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_handle_move_back(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @svn_dirent_is_absolute(i8* %17)
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_7__** %14, i8** %15, i32* %20, i8* %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_7__* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %6
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* @svn_dirent_skip_ancestor(i32 %36, i8* %37)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @add_work_items(i32 %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %7, align 8
  br label %72

55:                                               ; preds = %43
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @handle_move_back(i32* %56, %struct.TYPE_7__* %57, i8* %58, i8* %59, i32* %60, i32* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = call i32 @SVN_WC__DB_WITH_TXN(i32 %62, %struct.TYPE_7__* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* @svn_depth_infinity, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @flush_entries(%struct.TYPE_7__* %65, i8* %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %55, %46
  %73 = load i32*, i32** %7, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_7__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_7__*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @add_work_items(i32, i32*, i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @handle_move_back(i32*, %struct.TYPE_7__*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @flush_entries(%struct.TYPE_7__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
