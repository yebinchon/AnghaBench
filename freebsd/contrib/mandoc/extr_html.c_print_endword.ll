; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_endword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_endword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32, i64, i64, i32, i64 }

@HTML_BUFFER = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*)* @print_endword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_endword(%struct.html* %0) #0 {
  %2 = alloca %struct.html*, align 8
  store %struct.html* %0, %struct.html** %2, align 8
  %3 = load %struct.html*, %struct.html** %2, align 8
  %4 = getelementptr inbounds %struct.html, %struct.html* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.html*, %struct.html** %2, align 8
  %9 = call i32 @print_byte(%struct.html* %8, i8 signext 32)
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.html*, %struct.html** %2, align 8
  %12 = getelementptr inbounds %struct.html, %struct.html* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @HTML_BUFFER, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.html*, %struct.html** %2, align 8
  %19 = getelementptr inbounds %struct.html, %struct.html* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* @HTML_BUFFER, align 4
  %23 = load %struct.html*, %struct.html** %2, align 8
  %24 = getelementptr inbounds %struct.html, %struct.html* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %51

27:                                               ; preds = %10
  %28 = load %struct.html*, %struct.html** %2, align 8
  %29 = getelementptr inbounds %struct.html, %struct.html* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = call i32 @putchar(i8 signext 32)
  %34 = load %struct.html*, %struct.html** %2, align 8
  %35 = getelementptr inbounds %struct.html, %struct.html* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.html*, %struct.html** %2, align 8
  %38 = getelementptr inbounds %struct.html, %struct.html* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fwrite(i32 %36, i64 %39, i32 1, i32 %40)
  %42 = load %struct.html*, %struct.html** %2, align 8
  %43 = getelementptr inbounds %struct.html, %struct.html* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load %struct.html*, %struct.html** %2, align 8
  %47 = getelementptr inbounds %struct.html, %struct.html* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %32, %27
  br label %51

51:                                               ; preds = %50, %17
  %52 = load %struct.html*, %struct.html** %2, align 8
  %53 = getelementptr inbounds %struct.html, %struct.html* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %7
  ret void
}

declare dso_local i32 @print_byte(%struct.html*, i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fwrite(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
