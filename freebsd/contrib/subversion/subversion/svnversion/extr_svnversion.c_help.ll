; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnversion/extr_svnversion.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnversion/extr_svnversion.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1331 x i8] c"usage: svnversion [OPTIONS] [WC_PATH [TRAIL_URL]]\0ASubversion working copy identification tool.\0AType 'svnversion --version' to see the program version.\0A\0A  Produce a compact version identifier for the working copy path\0A  WC_PATH.  TRAIL_URL is the trailing portion of the URL used to\0A  determine if WC_PATH itself is switched (detection of switches\0A  within WC_PATH does not rely on TRAIL_URL).  The version identifier\0A  is written to standard output.  For example:\0A\0A    $ svnversion . /repos/svn/trunk\0A    4168\0A\0A  The version identifier will be a single number if the working\0A  copy is single revision, unmodified, not switched and with\0A  a URL that matches the TRAIL_URL argument.  If the working\0A  copy is unusual the version identifier will be more complex:\0A\0A   4123:4168     mixed revision working copy\0A   4168M         modified working copy\0A   4123S         switched working copy\0A   4123P         partial working copy, from a sparse checkout\0A   4123:4168MS   mixed revision, modified, switched working copy\0A\0A  If WC_PATH is an unversioned path, the program will output\0A  'Unversioned directory' or 'Unversioned file'.  If WC_PATH is\0A  an added or copied or moved path, the program will output\0A  'Uncommitted local addition, copy or move'.\0A\0A  If invoked without arguments WC_PATH will be the current directory.\0A\0AValid options:\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @stdout, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @_(i8* getelementptr inbounds ([1331 x i8], [1331 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %6, i32* %7, i8* %8)
  %10 = call i32 @svn_error_clear(i32 %9)
  br label %11

11:                                               ; preds = %16, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @svn_opt_format_option(i8** %5, %struct.TYPE_4__* %17, i32 %18, i32* %19)
  %21 = load i32, i32* @stdout, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %21, i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 @svn_error_clear(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 1
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %3, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* @stdout, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %29, i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @svn_error_clear(i32 %31)
  ret void
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_opt_format_option(i8**, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
