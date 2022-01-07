; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_svnserve.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_svnserve.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [147 x i8] c"usage: svnserve [-d | -i | -t | -X] [options]\0ASubversion repository server.\0AType 'svnserve --version' to see the program version.\0A\0AValid options:\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@svnserve__options = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 @_(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stdout, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @svn_cmdline_fputs(i32 %5, i32 %6, i32* %7)
  %9 = call i32 @svn_error_clear(i32 %8)
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %38, %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @svnserve__options, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @svnserve__options, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %10
  %25 = phi i1 [ false, %10 ], [ %23, %17 ]
  br i1 %25, label %26, label %41

26:                                               ; preds = %24
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @svnserve__options, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @svn_opt_format_option(i8** %4, %struct.TYPE_3__* %29, i32 %30, i32* %31)
  %33 = load i32, i32* @stdout, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %33, i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @svn_error_clear(i32 %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %10

41:                                               ; preds = %24
  %42 = load i32, i32* @stdout, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %42, i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @svn_error_clear(i32 %44)
  ret void
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_cmdline_fputs(i32, i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_opt_format_option(i8**, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
