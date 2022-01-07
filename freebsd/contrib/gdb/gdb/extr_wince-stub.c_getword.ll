; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_next_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i32] [i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 103, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 32, i32 114, i32 101, i32 99, i32 111, i32 114, i32 100, i32 32, i32 116, i32 121, i32 112, i32 101, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 104, i32 111, i32 115, i32 116, i32 32, i32 45, i32 32, i32 37, i32 115, i32 46, i32 0], align 4
@.str.1 = private unnamed_addr constant [28 x i32] [i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 103, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 104, i32 111, i32 115, i32 116, i32 46, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64)* @getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getword(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @skip_next_id, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i64 0, i64* @skip_next_id, align 8
  br label %28

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @sockread(i32 %14, i32 %15, i64* %8, i32 8)
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @stub_error(i8* bitcast ([42 x i32]* @.str to i8*), i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %13, label %27

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @sockread(i32 %29, i32 %30, i64* %7, i32 8)
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @stub_error(i8* bitcast ([28 x i32]* @.str.1 to i8*), i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

declare dso_local i32 @sockread(i32, i32, i64*, i32) #1

declare dso_local i32 @stub_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
