; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_pr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**)* @tw_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_pr(i64** %0) #0 {
  %2 = alloca i64**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i64** %0, i64*** %2, align 8
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i64**, i64*** %2, align 8
  %8 = load i64*, i64** %7, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = call i32 @xputchar(i8 signext 39)
  store i32 0, i32* %4, align 4
  %12 = load i64**, i64*** %2, align 8
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %5, align 8
  br label %14

14:                                               ; preds = %33, %10
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @Isspace(i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %33

28:                                               ; preds = %24, %18
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @xputwchar(i64 %30)
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %5, align 8
  br label %14

36:                                               ; preds = %14
  %37 = call i32 @xputchar(i8 signext 39)
  %38 = load i64**, i64*** %2, align 8
  %39 = getelementptr inbounds i64*, i64** %38, i64 1
  %40 = load i64*, i64** %39, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @xputchar(i8 signext 32)
  br label %44

44:                                               ; preds = %42, %36
  br label %45

45:                                               ; preds = %44
  %46 = load i64**, i64*** %2, align 8
  %47 = getelementptr inbounds i64*, i64** %46, i32 1
  store i64** %47, i64*** %2, align 8
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32 @Isspace(i64) #1

declare dso_local i32 @xputwchar(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
