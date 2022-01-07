; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_add-random-users.c_read_words.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_add-random-users.c_read_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@WORDBUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s is an empty file, no words to try\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***)* @read_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_words(i8* %0, i8*** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i8** null, i8*** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %62, %21
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @fgets(i8* %23, i32 256, i32* %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %78

27:                                               ; preds = %22
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %29 = call i64 @strcspn(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 16
  %37 = load i32, i32* %6, align 4
  %38 = mul i32 %37, 2
  %39 = call i32 @max(i32 %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i8**, i8*** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i8** @erealloc(i8** %40, i32 %44)
  store i8** %45, i8*** %9, align 8
  br label %46

46:                                               ; preds = %34, %27
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %13, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8*, i8** %12, align 8
  %54 = icmp uge i8* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @WORDBUF_SIZE, align 4
  %57 = call i8* @emalloc(i32 %56)
  store i8* %57, i8** %10, align 8
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* @WORDBUF_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  %67 = call i32 @memmove(i8* %63, i8* %64, i64 %66)
  %68 = load i8*, i8** %11, align 8
  %69 = load i8**, i8*** %9, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  store i8* %68, i8** %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 1
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %11, align 8
  br label %22

78:                                               ; preds = %22
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8**, i8*** %9, align 8
  %86 = load i8***, i8**** %4, align 8
  store i8** %85, i8*** %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8** @erealloc(i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
