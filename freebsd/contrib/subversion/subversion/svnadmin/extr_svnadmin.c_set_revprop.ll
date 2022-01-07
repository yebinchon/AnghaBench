; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_set_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_set_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i32, i32, %struct.TYPE_12__, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.svnadmin_opt_state*, i32*)* @set_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_revprop(i8* %0, i8* %1, %struct.svnadmin_opt_state* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svnadmin_opt_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svnadmin_opt_state* %2, %struct.svnadmin_opt_state** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_stringbuf_from_file2(%struct.TYPE_13__** %11, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.TYPE_14__* @svn_string_create_empty(i32* %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @svn_subst_translate_string2(%struct.TYPE_14__** %10, i32* null, i32* null, %struct.TYPE_14__* %33, i32* null, i32 %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %40

39:                                               ; preds = %4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %42 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @open_repos(i32** %9, i32 %43, %struct.svnadmin_opt_state* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %49 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load i32*, i32** %9, align 8
  %54 = call i32* @svn_repos_fs(i32* %53)
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %57 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @svn_fs_open_txn(i32** %13, i32* %55, i64 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %13, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @svn_fs_change_txn_prop(i32* %62, i8* %63, %struct.TYPE_14__* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %86

68:                                               ; preds = %40
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %71 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %78 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %81 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @svn_repos_fs_change_rev_prop4(i32* %69, i32 %74, i32* null, i8* %75, i32* null, %struct.TYPE_14__* %76, i32 %79, i32 %82, i32* null, i32* null, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %68, %52
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stringbuf_from_file2(%struct.TYPE_13__**, i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_string_create_empty(i32*) #1

declare dso_local i32 @svn_subst_translate_string2(%struct.TYPE_14__**, i32*, i32*, %struct.TYPE_14__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local i32* @svn_repos_fs(i32*) #1

declare dso_local i32 @svn_fs_open_txn(i32**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_change_txn_prop(i32*, i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_repos_fs_change_rev_prop4(i32*, i32, i32*, i8*, i32*, %struct.TYPE_14__*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
