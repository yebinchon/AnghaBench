; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_shelve.c_svn_client_shelves_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_shelve.c_svn_client_shelves_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Shelved change '%s' not found\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @svn_client_shelves_delete(i8* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.TYPE_9__* @svn_client_get_wc_root(i8** %12, i8* %14, i32* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(%struct.TYPE_9__* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call %struct.TYPE_9__* @shelf_delete_patch(i8* %23, i8* %24, i32* %25, i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %13, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @APR_STATUS_IS_ENOENT(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call %struct.TYPE_9__* @svn_error_quick_wrapf(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %6, align 8
  br label %46

40:                                               ; preds = %30, %22
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %42 = call i32 @SVN_ERR(%struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %6, align 8
  br label %46

46:                                               ; preds = %44, %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %47
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_client_get_wc_root(i8**, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @shelf_delete_patch(i8*, i8*, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local %struct.TYPE_9__* @svn_error_quick_wrapf(%struct.TYPE_9__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
