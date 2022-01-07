; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_endline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_endline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i64, i32, i64, i32 }

@stdout = common dso_local global i32 0, align 4
@HTML_NOSPACE = common dso_local global i32 0, align 4
@HTML_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_endline(%struct.html* %0) #0 {
  %2 = alloca %struct.html*, align 8
  store %struct.html* %0, %struct.html** %2, align 8
  %3 = load %struct.html*, %struct.html** %2, align 8
  %4 = getelementptr inbounds %struct.html, %struct.html* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.html*, %struct.html** %2, align 8
  %10 = getelementptr inbounds %struct.html, %struct.html* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = call i32 @putchar(i8 signext 32)
  %15 = load %struct.html*, %struct.html** %2, align 8
  %16 = getelementptr inbounds %struct.html, %struct.html* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.html*, %struct.html** %2, align 8
  %19 = getelementptr inbounds %struct.html, %struct.html* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fwrite(i32 %17, i64 %20, i32 1, i32 %21)
  %23 = load %struct.html*, %struct.html** %2, align 8
  %24 = getelementptr inbounds %struct.html, %struct.html* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %13, %8
  %26 = call i32 @putchar(i8 signext 10)
  %27 = load %struct.html*, %struct.html** %2, align 8
  %28 = getelementptr inbounds %struct.html, %struct.html* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @HTML_NOSPACE, align 4
  %30 = load %struct.html*, %struct.html** %2, align 8
  %31 = getelementptr inbounds %struct.html, %struct.html* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @HTML_BUFFER, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.html*, %struct.html** %2, align 8
  %37 = getelementptr inbounds %struct.html, %struct.html* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fwrite(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
