; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grepdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grepdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.stats*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@suppress_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"warning: %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"recursive directory loop\00", align 1
@included_patterns = common dso_local global i32 0, align 4
@excluded_patterns = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@no_filenames = common dso_local global i32 0, align 4
@out_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stats*)* @grepdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grepdir(i8* %0, %struct.stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stats*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stats, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stats* %1, %struct.stats** %5, align 8
  store i32 1, i32* %6, align 4
  %15 = load %struct.stats*, %struct.stats** %5, align 8
  %16 = getelementptr inbounds %struct.stats, %struct.stats* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %2
  %21 = load %struct.stats*, %struct.stats** %5, align 8
  store %struct.stats* %21, %struct.stats** %7, align 8
  br label %22

22:                                               ; preds = %56, %20
  %23 = load %struct.stats*, %struct.stats** %7, align 8
  %24 = getelementptr inbounds %struct.stats, %struct.stats* %23, i32 0, i32 0
  %25 = load %struct.stats*, %struct.stats** %24, align 8
  store %struct.stats* %25, %struct.stats** %7, align 8
  %26 = icmp ne %struct.stats* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.stats*, %struct.stats** %7, align 8
  %29 = getelementptr inbounds %struct.stats, %struct.stats* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.stats*, %struct.stats** %5, align 8
  %33 = getelementptr inbounds %struct.stats, %struct.stats* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %27
  %38 = load %struct.stats*, %struct.stats** %7, align 8
  %39 = getelementptr inbounds %struct.stats, %struct.stats* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.stats*, %struct.stats** %5, align 8
  %43 = getelementptr inbounds %struct.stats, %struct.stats* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* @suppress_errors, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %50, %47
  store i32 1, i32* %3, align 4
  br label %160

56:                                               ; preds = %37, %27
  br label %22

57:                                               ; preds = %22
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i8*, i8** %4, align 8
  %60 = load %struct.stats*, %struct.stats** %5, align 8
  %61 = getelementptr inbounds %struct.stats, %struct.stats* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @included_patterns, align 4
  %65 = load i32, i32* @excluded_patterns, align 4
  %66 = call i8* @savedir(i8* %59, i32 %63, i32 %64, i32 %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %58
  %70 = load i64, i64* @errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* @errno, align 8
  %75 = call i32 @suppressible_error(i8* %73, i64 %74)
  br label %78

76:                                               ; preds = %69
  %77 = call i32 (...) @xalloc_die()
  br label %78

78:                                               ; preds = %76, %72
  br label %158

79:                                               ; preds = %58
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @strlen(i8* %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @FILESYSTEM_PREFIX_LEN(i8* %83)
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @IS_SLASH(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %86, %79
  %95 = phi i1 [ true, %79 ], [ %93, %86 ]
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %98 = load i8*, i8** %8, align 8
  store i8* %98, i8** %12, align 8
  %99 = load %struct.stats*, %struct.stats** %5, align 8
  %100 = getelementptr inbounds %struct.stats, %struct.stats* %13, i32 0, i32 0
  store %struct.stats* %99, %struct.stats** %100, align 8
  %101 = load i32, i32* @no_filenames, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* @out_file, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* @out_file, align 4
  br label %107

107:                                              ; preds = %111, %94
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %107
  %112 = load i8*, i8** %12, align 8
  %113 = call i64 @strlen(i8* %112)
  store i64 %113, i64* %14, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %116, %117
  %119 = add i64 %118, 1
  %120 = call i8* @xrealloc(i8* %114, i64 %119)
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @strcpy(i8* %121, i8* %122)
  %124 = load i8*, i8** %11, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 47, i8* %126, align 1
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @strcpy(i8* %132, i8* %133)
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, 1
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8* %138, i8** %12, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @grepfile(i8* %139, %struct.stats* %13)
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %107

143:                                              ; preds = %107
  %144 = load i32, i32* @no_filenames, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* @out_file, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* @out_file, align 4
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %152, %143
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @free(i8* %156)
  br label %158

158:                                              ; preds = %155, %78
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %55
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @error(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @savedir(i8*, i32, i32, i32) #1

declare dso_local i32 @suppressible_error(i8*, i64) #1

declare dso_local i32 @xalloc_die(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @FILESYSTEM_PREFIX_LEN(i8*) #1

declare dso_local i64 @IS_SLASH(i8 signext) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @grepfile(i8*, %struct.stats*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
