; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_copy_baton = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_copy(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.op_copy_baton, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = bitcast %struct.op_copy_baton* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @svn_dirent_is_absolute(i8* %17)
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @svn_dirent_is_absolute(i8* %20)
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @svn_dirent_is_absolute(i8* %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 0
  %27 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 6
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__** %26, i32* %27, i32* %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__* %35)
  %37 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 1
  %38 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 5
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__** %37, i32* %38, i32* %39, i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__* %46)
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 4
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @svn_dirent_skip_ancestor(i32 %55, i8* %56)
  %58 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @op_copy_txn(%struct.TYPE_5__* %60, %struct.op_copy_baton* %15, i32* %61)
  %63 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @SVN_WC__DB_WITH_TXN(i32 %62, %struct.TYPE_5__* %64)
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32 @svn_dirent_is_absolute(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__**, i32*, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__*) #2

declare dso_local i32 @svn_dirent_skip_ancestor(i32, i8*) #2

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @op_copy_txn(%struct.TYPE_5__*, %struct.op_copy_baton*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
