; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_getdword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_getdword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error getting record type from host - %s.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error getting %s from host.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @getdword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getdword(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  br label %7

7:                                                ; preds = %17, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @s, align 4
  %10 = call i32 @sockread(i32 %8, i32 %9, i64* %6, i32 8)
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @stub_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  br label %17

17:                                               ; preds = %16
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %7, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @s, align 4
  %24 = call i32 @sockread(i32 %22, i32 %23, i64* %5, i32 8)
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @stub_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i32 @sockread(i32, i32, i64*, i32) #1

declare dso_local i32 @stub_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
