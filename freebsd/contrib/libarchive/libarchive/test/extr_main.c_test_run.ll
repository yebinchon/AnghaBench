; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_test_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 (...)* }

@failures = common dso_local global i32 0, align 4
@skips = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%3d: %-64s\00", align 1
@tests = common dso_local global %struct.TYPE_2__* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%3d: %s\0A\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"ERROR: Can't chdir to top work dir %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.log\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@logfile = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@testworkdir = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"ERROR: Can't chdir to work dir %s\0A\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"ERROR: Couldn't chdir to temp dir %s\0A\00", align 1
@keep_temp_files = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"rm -rf %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rm %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_run(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @failures, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @skips, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @verbosity, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
    i32 129, label %14
  ]

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %21)
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %32)
  br label %34

34:                                               ; preds = %25, %14, %13
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @assertChdir(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** @stderr, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %34
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %53 = call i32* @fopen(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %53, i32** @logfile, align 8
  %54 = load i32*, i32** @logfile, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @fprintf(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @snprintf(i8* %62, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %63, i8* %69)
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8* %71, i8** @testworkdir, align 8
  %72 = load i8*, i8** @testworkdir, align 8
  %73 = call i32 @assertMakeDir(i8* %72, i32 493)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %43
  %76 = load i8*, i8** @testworkdir, align 8
  %77 = call i64 @assertChdir(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75, %43
  %80 = load i32*, i32** @stderr, align 8
  %81 = load i8*, i8** @testworkdir, align 8
  %82 = call i32 @fprintf(i32* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %75
  %85 = load i32, i32* @LC_ALL, align 4
  %86 = call i32 @setlocale(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %87 = call i32 @umask(i32 0)
  store i32 %87, i32* %9, align 4
  %88 = call i32 @umask(i32 %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32 (...)*, i32 (...)** %93, align 8
  %95 = call i32 (...) %94()
  store i8* null, i8** @testworkdir, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @umask(i32 %96)
  %98 = load i32, i32* @LC_ALL, align 4
  %99 = call i32 @setlocale(i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @assertChdir(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %84
  %104 = load i32*, i32** @stderr, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @fprintf(i32* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %84
  %109 = load i32, i32* @failures, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %111, i32* %116, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @skips, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @test_summarize(i32 %122, i32 %125)
  %127 = load i32*, i32** @logfile, align 8
  %128 = call i32 @fclose(i32* %127)
  store i32* null, i32** @logfile, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %108
  %137 = load i32, i32* @keep_temp_files, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %4, align 8
  %141 = call i64 @assertChdir(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @systemf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %149)
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %152 = call i32 @systemf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %143, %139, %136
  br label %154

154:                                              ; preds = %153, %108
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  ret i32 %160
}

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @assertChdir(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @test_summarize(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @systemf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
