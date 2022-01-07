; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_suse_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_suse_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"/etc/SuSE-release\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CODENAME\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @suse_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @suse_release(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_7__* @read_file_contents(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_7__* %18, i32* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @svn_stream_readline(i32* %21, %struct.TYPE_7__** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %9, i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %17
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svn_error_clear(i32* %30)
  store i8* null, i8** %2, align 8
  br label %84

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = call i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %64, %55, %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @svn_stream_readline(i32* %39, %struct.TYPE_7__** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %9, i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %38
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @svn_error_clear(i32* %48)
  br label %65

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = call i8* @stringbuf_split_key(%struct.TYPE_7__* %51, i8 signext 61)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %38

56:                                               ; preds = %50
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %59 = icmp eq i64 0, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %38

65:                                               ; preds = %47
  %66 = load i32*, i32** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i8*, i8** %5, align 8
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %76 ]
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %83 = call i8* @apr_psprintf(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %71, i8* %78, i8* %82)
  store i8* %83, i8** %2, align 8
  br label %84

84:                                               ; preds = %77, %29, %16
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local %struct.TYPE_7__* @read_file_contents(i8*, i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @svn_stream_readline(i32*, %struct.TYPE_7__**, i8*, i64*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_7__*) #1

declare dso_local i8* @stringbuf_split_key(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
