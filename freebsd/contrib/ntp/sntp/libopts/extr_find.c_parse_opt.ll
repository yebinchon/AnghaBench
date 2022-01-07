; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_find.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_find.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8*, i64)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt(i8** %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8**, i8*** %7, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %47, %4
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %11, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %39 [
    i32 128, label %20
    i32 61, label %22
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 @memcpy(i8* %23, i8* %25, i64 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 -128, i8* %32, align 1
  %33 = load i8*, i8** %8, align 8
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i8* @VOIDP(i8* %35)
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %15
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  br label %15

48:                                               ; preds = %45, %22, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @VOIDP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
