; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strcasestr.c_strcasestr_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strcasestr.c_strcasestr_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strcasestr_l(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @FIX_LOCALE(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %6, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %8, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load i8, i8* %8, align 1
  %20 = load i32, i32* %7, align 4
  %21 = call signext i8 @tolower_l(i8 zeroext %19, i32 %20)
  store i8 %21, i8* %8, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %42, %18
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* null, i8** %4, align 8
  br label %54

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i8, i8* %9, align 1
  %35 = load i32, i32* %7, align 4
  %36 = call signext i8 @tolower_l(i8 zeroext %34, i32 %35)
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %25, label %41

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @strncasecmp_l(i8* %43, i8* %44, i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %24, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %49, %3
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %31
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local signext i8 @tolower_l(i8 zeroext, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp_l(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
