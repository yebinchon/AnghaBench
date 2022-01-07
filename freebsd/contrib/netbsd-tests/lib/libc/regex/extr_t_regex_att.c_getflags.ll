; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_t_regex_att.c_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_t_regex_att.c_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_ICASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Unknown char %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getflags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %22 [
    i32 48, label %8
    i32 49, label %8
    i32 50, label %8
    i32 51, label %8
    i32 52, label %8
    i32 53, label %8
    i32 54, label %8
    i32 55, label %8
    i32 56, label %8
    i32 57, label %8
    i32 0, label %10
    i32 66, label %12
    i32 69, label %12
    i32 70, label %12
    i32 76, label %12
    i32 105, label %13
    i32 36, label %18
    i32 110, label %20
  ]

8:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %9 = load i8*, i8** %2, align 8
  store i8 0, i8* %9, align 1
  br label %26

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  ret i32 %11

12:                                               ; preds = %4, %4, %4, %4
  br label %26

13:                                               ; preds = %4
  %14 = load i32, i32* @REG_ICASE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i8*, i8** %2, align 8
  store i8 0, i8* %17, align 1
  br label %26

18:                                               ; preds = %4
  %19 = load i8*, i8** %2, align 8
  store i8 0, i8* %19, align 1
  br label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %2, align 8
  store i8 0, i8* %21, align 1
  br label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @ATF_REQUIRE_MSG(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8 signext %24)
  br label %26

26:                                               ; preds = %22, %20, %18, %13, %12, %8
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %2, align 8
  br label %4
}

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
