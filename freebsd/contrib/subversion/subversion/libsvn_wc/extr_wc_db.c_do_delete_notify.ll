; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_do_delete_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_do_delete_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_DELETE_LIST = common dso_local global i32 0, align 4
@svn_wc_notify_delete = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_3__*, i32 (i8*)*, i8*, i32 (i8*, i32, i32*)*, i8*, i32*)* @do_delete_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_delete_notify(i8* %0, %struct.TYPE_3__* %1, i32 (i8*)* %2, i8* %3, i32 (i8*, i32, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32 (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i32, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32 (i8*)* %2, i32 (i8*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 (i8*, i32, i32*)* %4, i32 (i8*, i32, i32*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @STMT_SELECT_DELETE_LIST, align 4
  %24 = call i32 @svn_sqlite__get_statement(i32** %15, i32 %22, i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %15, align 8
  %27 = call i32 @svn_sqlite__step(i64* %16, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %14, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %17, align 8
  br label %31

31:                                               ; preds = %34, %7
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32*, i32** %17, align 8
  %36 = call i32 @svn_pool_clear(i32* %35)
  %37 = load i32*, i32** %15, align 8
  %38 = call i8* @svn_sqlite__column_text(i32* %37, i32 0, i32* null)
  store i8* %38, i8** %18, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %18, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = call i8* @svn_dirent_join(i32 %41, i8* %42, i32* %43)
  store i8* %44, i8** %19, align 8
  %45 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %19, align 8
  %48 = load i32, i32* @svn_wc_notify_delete, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @svn_wc_create_notify(i8* %47, i32 %48, i32* %49)
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 %45(i8* %46, i32 %50, i32* %51)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @svn_sqlite__step(i64* %16, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %31

56:                                               ; preds = %31
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @svn_pool_destroy(i32* %57)
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @svn_sqlite__reset(i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %63 = icmp ne i32 (i8*)* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 %65(i8* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %64, %56
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
