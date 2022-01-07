; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rpki-rtr.c_indent_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rpki-rtr.c_indent_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@indent_string.buf = internal global [20 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @indent_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @indent_string(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 %5
  store i8 0, i8* %6, align 1
  %7 = load i64, i64* %3, align 8
  %8 = udiv i64 %7, 8
  %9 = load i64, i64* %3, align 8
  %10 = urem i64 %9, 8
  %11 = add i64 %8, %10
  %12 = add i64 %11, 2
  %13 = icmp ult i64 20, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 0), i8** %2, align 8
  br label %44

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 %16
  store i8 10, i8* %17, align 1
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %23, %15
  %21 = load i64, i64* %3, align 8
  %22 = icmp uge i64 %21, 8
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 %24
  store i8 9, i8* %25, align 1
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %28, 8
  store i64 %29, i64* %3, align 8
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i64, i64* %3, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 %35
  store i8 32, i8* %36, align 1
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %3, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @indent_string.buf, i64 0, i64 0), i8** %2, align 8
  br label %44

44:                                               ; preds = %41, %14
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
