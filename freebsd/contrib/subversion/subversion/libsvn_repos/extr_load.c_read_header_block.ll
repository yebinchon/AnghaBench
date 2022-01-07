; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_read_header_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_read_header_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Dump stream contains a malformed header (with no ':') at '%.20s'\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Dump stream contains a malformed header (with no value) at '%.20s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i32**, i32*)* @read_header_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_header_block(i32* %0, %struct.TYPE_5__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32* @apr_hash_make(i32* %15)
  %17 = load i32**, i32*** %8, align 8
  store i32* %16, i32** %17, align 8
  br label %18

18:                                               ; preds = %4, %92
  store i64 0, i64* %14, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %13, align 8
  br label %29

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @svn_stream_readline(i32* %25, %struct.TYPE_5__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %13, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = call i64 @svn_stringbuf_isempty(%struct.TYPE_5__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %103

34:                                               ; preds = %29
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32* (...) @stream_ran_dry()
  store i32* %38, i32** %5, align 8
  br label %105

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %66, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 58
  br i1 %49, label %50, label %69

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %64)
  store i32* %65, i32** %5, align 8
  br label %105

66:                                               ; preds = %50
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %14, align 8
  br label %41

69:                                               ; preds = %41
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %11, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %78, 2
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %69
  %86 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %87 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32* @svn_error_createf(i32 %86, i32* null, i32 %87, i8* %90)
  store i32* %91, i32** %5, align 8
  br label %105

92:                                               ; preds = %69
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %12, align 8
  %98 = load i32**, i32*** %8, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @svn_hash_sets(i32* %99, i8* %100, i8* %101)
  br label %18

103:                                              ; preds = %33
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %5, align 8
  br label %105

105:                                              ; preds = %103, %85, %59, %37
  %106 = load i32*, i32** %5, align 8
  ret i32* %106
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_5__**, i8*, i64*, i32*) #1

declare dso_local i64 @svn_stringbuf_isempty(%struct.TYPE_5__*) #1

declare dso_local i32* @stream_ran_dry(...) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
