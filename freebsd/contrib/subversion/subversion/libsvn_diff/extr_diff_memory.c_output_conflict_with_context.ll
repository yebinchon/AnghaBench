; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_memory.c_output_conflict_with_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_memory.c_output_conflict_with_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"@@\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32, i32, i32*)* @output_conflict_with_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @output_conflict_with_context(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %17, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @svn_stream_puts(i64 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @SVN_ERR(i32 %43)
  br label %45

45:                                               ; preds = %39, %29
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @flush_context_saver(%struct.TYPE_8__* %48, i64 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %45, %8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @output_conflict_with_context_marker(%struct.TYPE_7__* %60, i32 %65, i32 %66, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @output_merge_token_range(%struct.TYPE_7__* %70, i32 1, i32 %71, i32 %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @output_conflict_with_context_marker(%struct.TYPE_7__* %75, i32 %80, i32 %81, i32 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @output_merge_token_range(%struct.TYPE_7__* %85, i32 0, i32 %86, i32 %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %91 = call i32 @output_merge_marker(%struct.TYPE_7__* %90, i32 2)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @output_merge_token_range(%struct.TYPE_7__* %93, i32 2, i32 %94, i32 %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @output_conflict_with_context_marker(%struct.TYPE_7__* %98, i32 %103, i32 %104, i32 %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %109 = call i32 @make_trailing_context_printer(%struct.TYPE_7__* %108)
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_puts(i64, i8*) #1

declare dso_local i32 @flush_context_saver(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @output_conflict_with_context_marker(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @output_merge_token_range(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @output_merge_marker(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @make_trailing_context_printer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
