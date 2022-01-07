; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-juniper.c_juniper_read_tlv_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-juniper.c_juniper_read_tlv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @juniper_read_tlv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @juniper_read_tlv_value(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 1, label %12
    i32 2, label %15
    i32 3, label %18
    i32 4, label %21
  ]

12:                                               ; preds = %10
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  br label %25

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @EXTRACT_LE_16BITS(i32* %16)
  store i32 %17, i32* %7, align 4
  br label %25

18:                                               ; preds = %10
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @EXTRACT_LE_24BITS(i32* %19)
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %10
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @EXTRACT_LE_32BITS(i32* %22)
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %10
  store i32 -1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21, %18, %15, %12
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %40 [
    i32 1, label %28
    i32 2, label %31
    i32 3, label %34
    i32 4, label %37
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %41

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @EXTRACT_16BITS(i32* %32)
  store i32 %33, i32* %7, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @EXTRACT_24BITS(i32* %35)
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @EXTRACT_32BITS(i32* %38)
  store i32 %39, i32* %7, align 4
  br label %41

40:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %37, %34, %31, %28
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_LE_24BITS(i32*) #1

declare dso_local i32 @EXTRACT_LE_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
