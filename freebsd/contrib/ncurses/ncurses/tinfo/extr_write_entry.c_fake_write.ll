; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_fake_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_fake_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i64, i8*, i64, i64)* @fake_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fake_write(i8* %0, i32* %1, i64 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %16 to i64
  %18 = sub i64 %14, %17
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = mul i64 %20, %19
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %6
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @memcpy(i8* %35, i8* %36, i64 %37)
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %45

44:                                               ; preds = %6
  store i64 0, i64* %11, align 8
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = udiv i64 %46, %47
  ret i64 %48
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
