; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_rc_cmdlength.c_remoteconfig_cmdlength.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_rc_cmdlength.c_remoteconfig_cmdlength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @remoteconfig_cmdlength(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %26

23:                                               ; preds = %18, %11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %4, align 8
  br label %7

26:                                               ; preds = %22, %7
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 128
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %32
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  br label %28

52:                                               ; preds = %47, %28
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  ret i64 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
