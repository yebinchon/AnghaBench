; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_dictionary_compression.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_dictionary_compression.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wrong arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s [FILES] dictionary\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"All %u files compressed. \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  store i32 3, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i32 1, i32* %3, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32* @createCDict_orDie(i8* %33, i32 3)
  store i32* %34, i32** %9, align 8
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %54, %26
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i8* @createOutFilename_orDie(i8* %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @compress(i8* %48, i8* %49, i32* %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @free(i8* %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ZSTD_freeCDict(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 2
  %62 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @createCDict_orDie(i8*, i32) #1

declare dso_local i8* @createOutFilename_orDie(i8*) #1

declare dso_local i32 @compress(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ZSTD_freeCDict(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
