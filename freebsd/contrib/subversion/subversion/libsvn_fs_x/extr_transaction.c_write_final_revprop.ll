; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_final_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_final_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_8__*, i32, i32*, i32*, i32*)* @write_final_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_final_revprop(i8** %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @svn_fs_x__txn_proplist(i32** %13, %struct.TYPE_8__* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %23 = call %struct.TYPE_7__* @svn_hash_gets(i32* %21, i32 %22)
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %28 = call i32 @svn_hash_sets(i32* %26, i32 %27, %struct.TYPE_7__* null)
  br label %29

29:                                               ; preds = %25, %6
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %32 = call %struct.TYPE_7__* @svn_hash_gets(i32* %30, i32 %31)
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %37 = call i32 @svn_hash_sets(i32* %35, i32 %36, %struct.TYPE_7__* null)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %41 = call %struct.TYPE_7__* @svn_hash_gets(i32* %39, i32 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %15, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %47 = call i32 @svn_hash_sets(i32* %45, i32 %46, %struct.TYPE_7__* null)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51, %48
  %58 = call i32 (...) @apr_time_now()
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @svn_time_to_cstring(i32 %58, i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strlen(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %68 = call i32 @svn_hash_sets(i32* %66, i32 %67, %struct.TYPE_7__* %14)
  br label %69

69:                                               ; preds = %57, %51
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i8* @svn_fs_x__path_revprops(i32 %72, i32 %73, i32* %74)
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i8**, i8*** %7, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @svn_fs_x__batch_fsync_open_file(i32** %16, i32* %77, i8* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @svn_fs_x__write_non_packed_revprops(i32* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %88
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__txn_proplist(i32**, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @svn_fs_x__path_revprops(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_open_file(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__write_non_packed_revprops(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
