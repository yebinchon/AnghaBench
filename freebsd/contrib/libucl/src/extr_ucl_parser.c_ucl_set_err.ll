; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_set_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_set_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i8*, i32, %struct.ucl_chunk* }
%struct.ucl_chunk = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"error while parsing %s: line: %d, column: %d - '%s', character: '%c'\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"error while parsing %s: line: %d, column: %d - '%s', character: '0x%02x'\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"error while parsing %s: at the end of chunk: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_parser*, i32, i8*, i32**)* @ucl_set_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_set_err(%struct.ucl_parser* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ucl_chunk*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32** %3, i32*** %8, align 8
  %12 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %13 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %12, i32 0, i32 2
  %14 = load %struct.ucl_chunk*, %struct.ucl_chunk** %13, align 8
  store %struct.ucl_chunk* %14, %struct.ucl_chunk** %11, align 8
  %15 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %16 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %21 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  br label %24

23:                                               ; preds = %4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load %struct.ucl_chunk*, %struct.ucl_chunk** %11, align 8
  %26 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ucl_chunk*, %struct.ucl_chunk** %11, align 8
  %29 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ult i32* %27, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load %struct.ucl_chunk*, %struct.ucl_chunk** %11, align 8
  %34 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @isgraph(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %41

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32**, i32*** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.ucl_chunk*, %struct.ucl_chunk** %11, align 8
  %46 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.ucl_chunk*, %struct.ucl_chunk** %11, align 8
  %51 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.ucl_chunk*, %struct.ucl_chunk** %11, align 8
  %55 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32**, i8*, i8*, i8*, ...) @ucl_create_err(i32** %42, i8* %43, i8* %44, i8* %49, i32 %52, i8* %53, i32 %57)
  br label %64

59:                                               ; preds = %24
  %60 = load i32**, i32*** %8, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i32**, i8*, i8*, i8*, ...) @ucl_create_err(i32** %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %59, %41
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %67 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  ret void
}

declare dso_local i64 @isgraph(i32) #1

declare dso_local i32 @ucl_create_err(i32**, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
