; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc__upgrade_add_external_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc__upgrade_add_external_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__upgrade_add_external_info(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %26 [
    i32 130, label %23
    i32 129, label %24
    i32 128, label %25
  ]

23:                                               ; preds = %10
  store i32 130, i32* %21, align 4
  br label %28

24:                                               ; preds = %10
  store i32 129, i32* %21, align 4
  br label %28

25:                                               ; preds = %10
  store i32 128, i32* %21, align 4
  br label %28

26:                                               ; preds = %10
  %27 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %28

28:                                               ; preds = %26, %25, %24, %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %21, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = call i32 @svn_dirent_dirname(i8* %34, i32* %35)
  %37 = load i8*, i8** %14, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = call i32 @svn_wc__db_upgrade_insert_external(i32 %31, i8* %32, i32 %33, i32 %36, i8* %37, i8* %38, i8* %39, i8* %40, i32 %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_upgrade_insert_external(i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
