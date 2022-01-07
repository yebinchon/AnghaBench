; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_hwaddr_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_hwaddr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @hwaddr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hwaddr_parse(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @ETH_ALEN, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @hex2byte(i8* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %42

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @ETH_ALEN, align 8
  %27 = sub i64 %26, 1
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 58
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %42

36:                                               ; preds = %29, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %8

40:                                               ; preds = %8
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %40, %35, %17
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @hex2byte(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
