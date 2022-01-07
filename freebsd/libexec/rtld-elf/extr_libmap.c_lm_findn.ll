; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_libmap.c_lm_findn.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_libmap.c_lm_findn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lm_findn(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 63
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8* %13, i8** %8, align 8
  br label %18

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  %17 = call i8* @xmalloc(i64 %16)
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @memcpy(i8* %19, i8* %20, i64 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @lm_find(i8* %26, i8* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i8*, i8** %9, align 8
  ret i8* %36
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @lm_find(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
