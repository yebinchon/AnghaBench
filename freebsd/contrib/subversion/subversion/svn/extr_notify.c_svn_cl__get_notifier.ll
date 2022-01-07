; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_notify.c_svn_cl__get_notifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_notify.c_svn_cl__get_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notify_baton = type { i32, i32*, i8*, i64, i64, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@notify = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__get_notifier(i32* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.notify_baton*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call %struct.notify_baton* @apr_pcalloc(i32* %10, i32 80)
  store %struct.notify_baton* %11, %struct.notify_baton** %9, align 8
  %12 = load i8*, i8** @FALSE, align 8
  %13 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %14 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %13, i32 0, i32 9
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %17 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %20 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %23 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %26 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %28 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %30 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %33 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %36 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %38 = getelementptr inbounds %struct.notify_baton, %struct.notify_baton* %37, i32 0, i32 0
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @svn_dirent_get_absolute(i32* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32, i32* @notify, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.notify_baton*, %struct.notify_baton** %9, align 8
  %45 = bitcast %struct.notify_baton* %44 to i8*
  %46 = load i8**, i8*** %6, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local %struct.notify_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
