; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.op_delete_baton_t = type { i8*, i32, i32, i32*, i32* }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Cannot move '%s' to '%s' because they are not in the same working copy\00", align 1
@TRUE = common dso_local global i32 0, align 4
@op_delete_txn = common dso_local global i32 0, align 4
@do_delete_notify = common dso_local global i32 0, align 4
@STMT_FINALIZE_DELETE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_delete(i32* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5, i32 %6, i8* %7, i64 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.op_delete_baton_t, align 8
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i64 %8, i64* %21, align 8
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @svn_dirent_is_absolute(i8* %29)
  %31 = call i32 @SVN_ERR_ASSERT(i32 %30)
  %32 = load i32*, i32** %13, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i32*, i32** %23, align 8
  %35 = load i32*, i32** %23, align 8
  %36 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_8__** %24, i8** %26, i32* %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %39 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_8__* %38)
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %11
  %43 = load i32*, i32** %13, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i32*, i32** %23, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_8__** %25, i8** %27, i32* %43, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %50 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %42
  %60 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %14, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = call i32 @svn_dirent_local_style(i8* %62, i32* %63)
  %65 = load i8*, i8** %15, align 8
  %66 = load i32*, i32** %23, align 8
  %67 = call i32 @svn_dirent_local_style(i8* %65, i32* %66)
  %68 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i32 %64, i32 %67)
  store i32* %68, i32** %12, align 8
  br label %114

69:                                               ; preds = %42
  br label %71

70:                                               ; preds = %11
  store i8* null, i8** %27, align 8
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i8*, i8** %27, align 8
  %73 = getelementptr inbounds %struct.op_delete_baton_t, %struct.op_delete_baton_t* %28, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = getelementptr inbounds %struct.op_delete_baton_t, %struct.op_delete_baton_t* %28, i32 0, i32 4
  store i32* %74, i32** %75, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = getelementptr inbounds %struct.op_delete_baton_t, %struct.op_delete_baton_t* %28, i32 0, i32 3
  store i32* %76, i32** %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = getelementptr inbounds %struct.op_delete_baton_t, %struct.op_delete_baton_t* %28, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %71
  %83 = load i32, i32* @TRUE, align 4
  %84 = getelementptr inbounds %struct.op_delete_baton_t, %struct.op_delete_baton_t* %28, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %86 = load i8*, i8** %26, align 8
  %87 = load i32, i32* @op_delete_txn, align 4
  %88 = load i32, i32* @do_delete_notify, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i8*, i8** %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = load i32, i32* @STMT_FINALIZE_DELETE, align 4
  %94 = load i32*, i32** %23, align 8
  %95 = call i32 @with_finalization(%struct.TYPE_8__* %85, i8* %86, i32 %87, %struct.op_delete_baton_t* %28, i32 %88, i32* null, i32 %89, i8* %90, i64 %91, i8* %92, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %106

97:                                               ; preds = %71
  %98 = load i32, i32* @FALSE, align 4
  %99 = getelementptr inbounds %struct.op_delete_baton_t, %struct.op_delete_baton_t* %28, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %101 = load i8*, i8** %26, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @delete_node(%struct.op_delete_baton_t* %28, %struct.TYPE_8__* %100, i8* %101, i32* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %105 = call i32 @SVN_WC__DB_WITH_TXN(i32 %103, %struct.TYPE_8__* %104)
  br label %106

106:                                              ; preds = %97, %82
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i32, i32* @svn_depth_infinity, align 4
  %110 = load i32*, i32** %23, align 8
  %111 = call i32 @flush_entries(%struct.TYPE_8__* %107, i8* %108, i32 %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %12, align 8
  br label %114

114:                                              ; preds = %106, %59
  %115 = load i32*, i32** %12, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_8__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @with_finalization(%struct.TYPE_8__*, i8*, i32, %struct.op_delete_baton_t*, i32, i32*, i32, i8*, i64, i8*, i32, i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @delete_node(%struct.op_delete_baton_t*, %struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @flush_entries(%struct.TYPE_8__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
