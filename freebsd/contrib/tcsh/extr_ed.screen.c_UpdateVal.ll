; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_UpdateVal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_UpdateVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @UpdateVal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateVal(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @Strstr(i8* %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @Strcpy(i8* %18, i8* %19)
  store i32 0, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @Strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @Strncpy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @Itoa(i32 %38, i32 0, i32 0)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @Strcat(i8* %42, i8* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @xfree(i8* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = call i8* @Strchr(i8* %47, i8 signext 58)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %21
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @Strcat(i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %21
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i8* @Strstr(i8*, i8*) #1

declare dso_local i32 @Strcpy(i8*, i8*) #1

declare dso_local i32 @Strlen(i8*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i8* @Itoa(i32, i32, i32) #1

declare dso_local i32 @Strcat(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @Strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
