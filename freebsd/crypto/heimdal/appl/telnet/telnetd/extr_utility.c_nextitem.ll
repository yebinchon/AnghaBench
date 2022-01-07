; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_utility.c_nextitem.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_utility.c_nextitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IAC = common dso_local global i8 0, align 1
@SE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nextitem(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = and i32 %7, 255
  %9 = load i8, i8* @IAC, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %14, i8** %2, align 8
  br label %51

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 255
  switch i32 %20, label %48 [
    i32 132, label %21
    i32 131, label %21
    i32 129, label %21
    i32 128, label %21
    i32 130, label %24
  ]

21:                                               ; preds = %15, %15, %15, %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %2, align 8
  br label %51

24:                                               ; preds = %15
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %47, %24
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 255
  %33 = load i8, i8* @IAC, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 255
  %42 = load i32, i32* @SE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %2, align 8
  br label %51

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %27
  br label %27

48:                                               ; preds = %15
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %48, %44, %21, %12
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
