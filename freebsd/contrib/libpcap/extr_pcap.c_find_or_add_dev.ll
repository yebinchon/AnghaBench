; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_find_or_add_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_find_or_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_or_add_dev(i32* %0, i8* %1, i32 %2, i32 (i8*, i32*, i8*)* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i8*, i32*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (i8*, i32*, i8*)* %3, i32 (i8*, i32*, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32* @find_dev(i32* %15, i8* %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** %14, align 8
  store i32* %21, i32** %7, align 8
  br label %36

22:                                               ; preds = %6
  %23 = load i32 (i8*, i32*, i8*)*, i32 (i8*, i32*, i8*)** %11, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 %23(i8* %24, i32* %10, i8* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32* null, i32** %7, align 8
  br label %36

29:                                               ; preds = %22
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32* @add_dev(i32* %30, i8* %31, i32 %32, i8* %33, i8* %34)
  store i32* %35, i32** %7, align 8
  br label %36

36:                                               ; preds = %29, %28, %20
  %37 = load i32*, i32** %7, align 8
  ret i32* %37
}

declare dso_local i32* @find_dev(i32*, i8*) #1

declare dso_local i32* @add_dev(i32*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
