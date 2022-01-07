; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_hpdelim2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_hpdelim2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8*)* @hpdelim2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hpdelim2(i8** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = icmp eq i8** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %65

15:                                               ; preds = %10
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 91
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 93)
  store i8* %24, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %65

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %27
  br label %44

31:                                               ; preds = %15
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strpbrk(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %62 [
    i32 0, label %48
    i32 58, label %50
    i32 47, label %50
  ]

48:                                               ; preds = %44
  %49 = load i8**, i8*** %4, align 8
  store i8* null, i8** %49, align 8
  br label %63

50:                                               ; preds = %44, %44
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %5, align 8
  store i8 %55, i8* %56, align 1
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i8*, i8** %6, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8**, i8*** %4, align 8
  store i8* %60, i8** %61, align 8
  br label %63

62:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %65

63:                                               ; preds = %57, %48
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %63, %62, %26, %14
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
