; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_indent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i64, i64, i32, i32 }

@HTML_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*)* @print_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_indent(%struct.html* %0) #0 {
  %2 = alloca %struct.html*, align 8
  %3 = alloca i64, align 8
  store %struct.html* %0, %struct.html** %2, align 8
  %4 = load %struct.html*, %struct.html** %2, align 8
  %5 = getelementptr inbounds %struct.html, %struct.html* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.html*, %struct.html** %2, align 8
  %11 = getelementptr inbounds %struct.html, %struct.html* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.html*, %struct.html** %2, align 8
  %16 = getelementptr inbounds %struct.html, %struct.html* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = load %struct.html*, %struct.html** %2, align 8
  %21 = getelementptr inbounds %struct.html, %struct.html* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %30, %14
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.html*, %struct.html** %2, align 8
  %25 = getelementptr inbounds %struct.html, %struct.html* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = call i32 @putchar(i8 signext 32)
  br label %30

30:                                               ; preds = %28
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %22

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i32, i32* @HTML_NOSPACE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.html*, %struct.html** %2, align 8
  %38 = getelementptr inbounds %struct.html, %struct.html* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
