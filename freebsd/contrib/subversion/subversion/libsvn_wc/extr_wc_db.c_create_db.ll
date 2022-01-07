; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_create_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_create_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_sqlite__mode_rwcreate = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32*, i32*)* @create_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_db(i32** %0, i32* %1, i32* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store i32** %0, i32*** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i8* %7, i8** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %29 = load i32**, i32*** %15, align 8
  %30 = load i8*, i8** %18, align 8
  %31 = load i8*, i8** %21, align 8
  %32 = load i32, i32* @svn_sqlite__mode_rwcreate, align 4
  %33 = load i32, i32* %25, align 4
  %34 = load i32, i32* %26, align 4
  %35 = load i32*, i32** %27, align 8
  %36 = load i32*, i32** %28, align 8
  %37 = call i32 @svn_wc__db_util_open_db(i32** %29, i8* %30, i8* %31, i32 %32, i32 %33, i32 %34, i32* null, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %16, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = load i32**, i32*** %15, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = load i8*, i8** %20, align 8
  %45 = load i8*, i8** %22, align 8
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %24, align 4
  %48 = load i32*, i32** %28, align 8
  %49 = call i32 @init_db(i32* %39, i32* %40, i32* %42, i8* %43, i8* %44, i8* %45, i32 %46, i32 %47, i32* %48)
  %50 = load i32**, i32*** %15, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @SVN_SQLITE__WITH_LOCK(i32 %49, i32* %51)
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_util_open_db(i32**, i8*, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_SQLITE__WITH_LOCK(i32, i32*) #1

declare dso_local i32 @init_db(i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
