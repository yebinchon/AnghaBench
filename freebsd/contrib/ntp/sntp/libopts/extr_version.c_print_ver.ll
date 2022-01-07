; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_version.c_print_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_version.c_print_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@OPTPROC_EMIT_LIMIT = common dso_local global %struct.TYPE_12__* null, align 8
@OPTST_ARG_OPTIONAL = common dso_local global i32 0, align 4
@OPTPROC_GNUUSAGE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zBadVerArg = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@zwriting = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@zstdout_name = common dso_local global i32 0, align 4
@zstderr_name = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32)* @print_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ver(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @OPTPROC_EMIT_LIMIT, align 8
  %12 = icmp ule %struct.TYPE_12__* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %104

14:                                               ; preds = %4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @OPTST_ARG_OPTIONAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 128
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %9, align 1
  br label %55

43:                                               ; preds = %27, %21, %14
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = call i32 @set_usage_flags(%struct.TYPE_12__* %44, i32* null)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OPTPROC_GNUUSAGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 99, i32 118
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %9, align 1
  br label %55

55:                                               ; preds = %43, %35
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  switch i32 %57, label %70 [
    i32 128, label %58
    i32 118, label %58
    i32 86, label %58
    i32 99, label %62
    i32 67, label %62
    i32 110, label %66
    i32 78, label %66
  ]

58:                                               ; preds = %55, %55, %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @emit_simple_ver(%struct.TYPE_12__* %59, i32* %60)
  br label %77

62:                                               ; preds = %55, %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @emit_copy_full(%struct.TYPE_12__* %63, i32* %64)
  br label %77

66:                                               ; preds = %55, %55
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @emit_copy_note(%struct.TYPE_12__* %67, i32* %68)
  br label %77

70:                                               ; preds = %55
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** @zBadVerArg, align 8
  %73 = load i8, i8* %9, align 1
  %74 = call i32 @fprintf(i32 %71, i8* %72, i8 signext %73)
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = call i32 @option_exits(i32 %75)
  br label %77

77:                                               ; preds = %70, %66, %62, %58
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @fflush(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @ferror(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @zwriting, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** @stdout, align 8
  %90 = icmp eq i32* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @zstdout_name, align 4
  br label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @zstderr_name, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = call i32 @fserr_exit(i32 %86, i32 %87, i32 %96)
  br label %98

98:                                               ; preds = %95, %77
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EXIT_SUCCESS, align 4
  %103 = call i32 @option_exits(i32 %102)
  br label %104

104:                                              ; preds = %13, %101, %98
  ret void
}

declare dso_local i32 @set_usage_flags(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @emit_simple_ver(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @emit_copy_full(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @emit_copy_note(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

declare dso_local i32 @option_exits(i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fserr_exit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
