; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_bump_30_upgrade_one_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_bump_30_upgrade_one_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_UPGRADE_30_SET_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isb\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*, i32*)* @bump_30_upgrade_one_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bump_30_upgrade_one_conflict(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @svn_sqlite__column_int64(i32* %22, i32 0)
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i8* @svn_sqlite__column_text(i32* %24, i32 1, i32* null)
  store i8* %25, i8** %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i8* @svn_sqlite__column_text(i32* %26, i32 2, i32* null)
  store i8* %27, i8** %16, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @svn_sqlite__column_text(i32* %28, i32 3, i32* null)
  store i8* %29, i8** %17, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i8* @svn_sqlite__column_text(i32* %30, i32 4, i32* null)
  store i8* %31, i8** %18, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @svn_sqlite__column_text(i32* %32, i32 5, i32* null)
  store i8* %33, i8** %19, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i8* @svn_sqlite__column_blob(i32* %34, i32 6, i32* %20, i32* null)
  store i8* %35, i8** %21, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = load i8*, i8** %21, align 8
  %44 = load i32, i32* %20, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @svn_wc__upgrade_conflict_skel_from_raw(i32** %13, i32* %36, i8* %37, i8* %38, i8* %39, i8* %40, i8* %41, i8* %42, i8* %43, i32 %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @SVN_ERR_ASSERT(i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call %struct.TYPE_3__* @svn_skel__unparse(i32* %53, i32* %54)
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %12, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @STMT_UPGRADE_30_SET_CONFLICT, align 4
  %58 = call i32 @svn_sqlite__get_statement(i32** %11, i32* %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @svn_sqlite__bindf(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %62, i32 %65, i32 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @svn_sqlite__step_done(i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %74
}

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__upgrade_conflict_skel_from_raw(i32**, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_3__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
