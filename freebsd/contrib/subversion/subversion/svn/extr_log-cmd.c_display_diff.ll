; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_log-cmd.c_display_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_log-cmd.c_display_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@TRUE = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*, %struct.TYPE_10__*, i32, i8*, i32*, i32*, i32*, i32*)* @display_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @display_diff(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_10__* %2, i32 %3, i8* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32*, i32** %18, align 8
  %28 = call i32* @svn_cstring_split(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, i32* %27)
  store i32* %28, i32** %19, align 8
  br label %30

29:                                               ; preds = %9
  store i32* null, i32** %19, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i8*, i8** @svn_opt_revision_number, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** @svn_opt_revision_number, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @svn_stream_puts(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %19, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @svn_cmdline_output_encoding(i32* %61)
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @svn_client_diff_peg6(i32* %49, i8* %50, %struct.TYPE_10__* %51, %struct.TYPE_10__* %20, %struct.TYPE_10__* %21, i32* null, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %62, i32* %63, i32* %64, i32* null, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %15, align 8
  %70 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @svn_stream_puts(i32* %69, i8* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local i32* @svn_cstring_split(i8*, i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_puts(i32*, i8*) #1

declare dso_local i32 @svn_client_diff_peg6(i32*, i8*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cmdline_output_encoding(i32*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
