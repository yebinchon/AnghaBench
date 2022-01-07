; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/grot/extr_main.c_fixstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/grot/extr_main.c_fixstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %44, %6
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 78
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  store i8 10, i8* %18, align 1
  br label %43

19:                                               ; preds = %12
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 84
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  store i8 9, i8* %25, align 1
  br label %42

26:                                               ; preds = %19
  %27 = load i8*, i8** %2, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 83
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** %2, align 8
  store i8 32, i8* %32, align 1
  br label %41

33:                                               ; preds = %26
  %34 = load i8*, i8** %2, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 90
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** %2, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %2, align 8
  br label %7

47:                                               ; preds = %5, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
