; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unvis/extr_unvis.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unvis/extr_unvis.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: offset: %d: can't decode\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"bad return value (%d), can't happen\00", align 1
@UNVIS_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @getc(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %28, %17
  %21 = load i32, i32* %8, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @unvis(i8* %11, i8 signext %22, i32* %10, i32 %23)
  store i32 %24, i32* %9, align 4
  switch i32 %24, label %36 [
    i32 129, label %25
    i32 128, label %28
    i32 130, label %31
    i32 0, label %35
    i32 131, label %35
  ]

25:                                               ; preds = %20
  %26 = load i8, i8* %11, align 1
  %27 = call i32 @putchar(i8 signext %26)
  br label %39

28:                                               ; preds = %20
  %29 = load i8, i8* %11, align 1
  %30 = call i32 @putchar(i8 signext %29)
  br label %20

31:                                               ; preds = %20
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  store i32 0, i32* %10, align 4
  br label %39

35:                                               ; preds = %20, %20
  br label %39

36:                                               ; preds = %20
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %35, %31, %25
  br label %12

40:                                               ; preds = %12
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @UNVIS_END, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @unvis(i8* %11, i8 signext 0, i32* %10, i32 %43)
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8, i8* %11, align 1
  %48 = call i32 @putchar(i8 signext %47)
  br label %49

49:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @unvis(i8*, i8 signext, i32*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
