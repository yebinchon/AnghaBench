; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_putdword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_putdword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i32] [i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 119, i32 114, i32 105, i32 116, i32 105, i32 110, i32 103, i32 32, i32 114, i32 101, i32 99, i32 111, i32 114, i32 100, i32 32, i32 105, i32 100, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 32, i32 116, i32 111, i32 32, i32 104, i32 111, i32 115, i32 116, i32 46, i32 0], align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 119, i32 114, i32 105, i32 116, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 32, i32 116, i32 111, i32 32, i32 104, i32 111, i32 115, i32 116, i32 46, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @putdword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putdword(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @sockwrite(i32 %9, i32 %10, i32* %7, i32 4)
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @stub_error(i8* bitcast ([40 x i32]* @.str to i8*), i32 %15)
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sockwrite(i32 %18, i32 %19, i32* %8, i32 4)
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @stub_error(i8* bitcast ([26 x i32]* @.str.1 to i8*), i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @sockwrite(i32, i32, i32*, i32) #1

declare dso_local i32 @stub_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
