; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @parse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_range(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @parse_offset(i32* %26, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  store i8 0, i8* %34, align 1
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %33
  br label %40

38:                                               ; preds = %15
  %39 = load i32*, i32** %6, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @parse_offset(i32* %41, i8* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35, %31, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @parse_offset(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
