; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_get_nondigit_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_get_nondigit_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4
@short_options = common dso_local global i32 0, align 4
@long_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*)* @get_nondigit_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nondigit_option(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @CHAR_BIT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = add i64 %13, 4
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i8* %16, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 16
  br label %18

18:                                               ; preds = %54, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @short_options, align 4
  %22 = load i32, i32* @long_options, align 4
  %23 = call i32 @getopt_long(i32 %19, i8** %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 48, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 57
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi i1 [ false, %18 ], [ %28, %26 ]
  br i1 %30, label %31, label %55

31:                                               ; preds = %29
  %32 = getelementptr inbounds i8, i8* %16, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 48
  %36 = zext i1 %35 to i32
  %37 = load i8*, i8** %10, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %16, i64 %14
  %47 = getelementptr inbounds i8, i8* %46, i64 -4
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  store i8* %53, i8** %10, align 8
  br label %55

54:                                               ; preds = %31
  br label %18

55:                                               ; preds = %49, %29
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, %16
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  store i8 0, i8* %59, align 1
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @context_length_arg(i8* %16, i32* %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @context_length_arg(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
