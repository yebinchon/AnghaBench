; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_simple_compression.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_simple_compression.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"wrong arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s FILE(s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"File name too long!\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".zst\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"compressed %i files \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32 1, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @createResources_orDie(i32 %24, i8** %25, i8** %7, i64* %8)
  store i32 %26, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %57, %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 5
  %41 = load i64, i64* %8, align 8
  %42 = icmp ule i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @CHECK(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = call i32 @memcpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 5)
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @compressFile_orDie(i32 %53, i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %31
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %27

60:                                               ; preds = %27
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @freeResources(i32 %61, i8* %62)
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @createResources_orDie(i32, i8**, i8**, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @CHECK(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @compressFile_orDie(i32, i8*, i8*) #1

declare dso_local i32 @freeResources(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
