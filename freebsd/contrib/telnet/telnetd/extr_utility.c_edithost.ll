; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_edithost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_edithost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@editedhost = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edithost(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** @editedhost, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %49, %9
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %37 [
    i32 35, label %18
    i32 64, label %26
  ]

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %42

26:                                               ; preds = %14
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8, i8* %31, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  br label %36

36:                                               ; preds = %30, %26
  br label %42

37:                                               ; preds = %14
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %37, %36, %25
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** @editedhost, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  %46 = icmp eq i8* %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  store i8 0, i8* %48, align 1
  br label %74

49:                                               ; preds = %42
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  br label %10

52:                                               ; preds = %10
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** @editedhost, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sub i64 8, %64
  %66 = sub i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @strncpy(i8* %58, i8* %59, i32 %67)
  br label %71

69:                                               ; preds = %53
  %70 = load i8*, i8** %5, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i8*, i8** @editedhost, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %71, %47
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
