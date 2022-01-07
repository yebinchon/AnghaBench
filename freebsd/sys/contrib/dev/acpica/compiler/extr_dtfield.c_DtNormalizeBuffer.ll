; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtNormalizeBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtNormalizeBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @DtNormalizeBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DtNormalizeBuffer(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = call i8* @UtLocalCalloc(i64 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %9, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load i8, i8* %9, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %26 [
    i32 91, label %24
    i32 93, label %24
    i32 32, label %24
    i32 44, label %24
  ]

24:                                               ; preds = %21, %21, %21, %21
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %8, align 4
  br label %45

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  store i8 32, i8* %35, align 1
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i8, i8* %9, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 %42, i8* %43, align 1
  br label %45

45:                                               ; preds = %41, %24
  br label %16

46:                                               ; preds = %16
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i64*, i64** %4, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** %5, align 8
  ret i8* %50
}

declare dso_local i8* @UtLocalCalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
