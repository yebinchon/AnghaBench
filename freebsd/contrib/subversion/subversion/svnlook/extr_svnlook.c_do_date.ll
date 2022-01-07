; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @do_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_date(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @get_property(%struct.TYPE_3__** %5, i32* %8, i32 %9, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @svn_time_from_cstring(i32* %6, i64 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @svn_time_to_human_cstring(i32 %27, i32* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32*, i8*, ...) @svn_cmdline_printf(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %20, %15, %2
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 (i32*, i8*, ...) @svn_cmdline_printf(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %38
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_property(%struct.TYPE_3__**, i32*, i32, i32*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i64, i32*) #1

declare dso_local i8* @svn_time_to_human_cstring(i32, i32*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
