; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_match_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_match_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_user(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 64)
  store i8* %23, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @match_host_and_ip(i8* null, i8* null, i8* %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %60

31:                                               ; preds = %25, %21
  store i32 0, i32* %5, align 4
  br label %60

32:                                               ; preds = %18, %15, %4
  %33 = load i8*, i8** %9, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 64)
  store i8* %34, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @match_pattern(i8* %37, i8* %38)
  store i32 %39, i32* %5, align 4
  br label %60

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @xstrdup(i8* %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 64)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  store i8 0, i8* %45, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @match_pattern(i8* %47, i8* %48)
  store i32 %49, i32* %12, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @match_host_and_ip(i8* %52, i8* %53, i8* %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %51, %40
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %36, %31, %30
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @match_host_and_ip(i8*, i8*, i8*) #1

declare dso_local i32 @match_pattern(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
