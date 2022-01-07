; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_rpmatch.c_rpmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_rpmatch.c_rpmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YESEXPR = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@NOEXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmatch(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @YESEXPR, align 4
  %8 = call i32 @nl_langinfo(i32 %7)
  %9 = load i32, i32* @REG_EXTENDED, align 4
  %10 = load i32, i32* @REG_NOSUB, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @regcomp(i32* %4, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* @NOEXPR, align 4
  %17 = call i32 @nl_langinfo(i32 %16)
  %18 = load i32, i32* @REG_EXTENDED, align 4
  %19 = load i32, i32* @REG_NOSUB, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @regcomp(i32* %5, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @regfree(i32* %4)
  store i32 -1, i32* %2, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @regexec(i32* %4, i8* %26, i32 0, i32* null, i32 0)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @regexec(i32* %5, i8* %31, i32 0, i32* null, i32 0)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %36

35:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %29
  %38 = call i32 @regfree(i32* %4)
  %39 = call i32 @regfree(i32* %5)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %23, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @regcomp(i32*, i32, i32) #1

declare dso_local i32 @nl_langinfo(i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
