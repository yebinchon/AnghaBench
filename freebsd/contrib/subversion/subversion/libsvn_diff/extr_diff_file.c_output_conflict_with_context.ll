; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_file.c_output_conflict_with_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_file.c_output_conflict_with_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"@@\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)* @output_conflict_with_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @output_conflict_with_context(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %7
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 9
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @svn_stream_puts(i64 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @flush_context_saver(%struct.TYPE_8__* %43, i64 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %40, %7
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @output_conflict_with_context_marker(%struct.TYPE_7__* %55, i32 %58, i32 %59, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @output_hunk(%struct.TYPE_7__* %63, i32 1, i32 %64, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @output_conflict_with_context_marker(%struct.TYPE_7__* %68, i32 %71, i32 %72, i32 %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @output_hunk(%struct.TYPE_7__* %76, i32 0, i32 %77, i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @svn_stream_printf(i64 %83, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @output_hunk(%struct.TYPE_7__* %95, i32 2, i32 %96, i32 %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @output_conflict_with_context_marker(%struct.TYPE_7__* %100, i32 %103, i32 %104, i32 %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = call i32 @make_trailing_context_printer(%struct.TYPE_7__* %108)
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_puts(i64, i8*) #1

declare dso_local i32 @flush_context_saver(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @output_conflict_with_context_marker(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @output_hunk(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @svn_stream_printf(i64, i32, i8*, i32, i32) #1

declare dso_local i32 @make_trailing_context_printer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
