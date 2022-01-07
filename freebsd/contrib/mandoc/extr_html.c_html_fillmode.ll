; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_html_fillmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_html_fillmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { %struct.tag* }
%struct.tag = type { i64, %struct.tag* }

@TAG_PRE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @html_fillmode(%struct.html* %0, i32 %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tag*, align 8
  %6 = alloca i32, align 4
  store %struct.html* %0, %struct.html** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.html*, %struct.html** %3, align 8
  %8 = getelementptr inbounds %struct.html, %struct.html* %7, i32 0, i32 0
  %9 = load %struct.tag*, %struct.tag** %8, align 8
  store %struct.tag* %9, %struct.tag** %5, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.tag*, %struct.tag** %5, align 8
  %12 = icmp ne %struct.tag* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.tag*, %struct.tag** %5, align 8
  %15 = getelementptr inbounds %struct.tag, %struct.tag* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TAG_PRE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.tag*, %struct.tag** %5, align 8
  %23 = getelementptr inbounds %struct.tag, %struct.tag* %22, i32 0, i32 1
  %24 = load %struct.tag*, %struct.tag** %23, align 8
  store %struct.tag* %24, %struct.tag** %5, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.tag*, %struct.tag** %5, align 8
  %27 = icmp eq %struct.tag* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 130, i32 129
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %46 [
    i32 130, label %35
    i32 129, label %39
    i32 128, label %45
  ]

35:                                               ; preds = %33
  %36 = load %struct.html*, %struct.html** %3, align 8
  %37 = load %struct.tag*, %struct.tag** %5, align 8
  %38 = call i32 @print_tagq(%struct.html* %36, %struct.tag* %37)
  br label %48

39:                                               ; preds = %33
  %40 = load %struct.html*, %struct.html** %3, align 8
  %41 = call i32 @html_close_paragraph(%struct.html* %40)
  %42 = load %struct.html*, %struct.html** %3, align 8
  %43 = load i64, i64* @TAG_PRE, align 8
  %44 = call i32 @print_otag(%struct.html* %42, i64 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %48

45:                                               ; preds = %33
  br label %48

46:                                               ; preds = %33
  %47 = call i32 (...) @abort() #3
  unreachable

48:                                               ; preds = %45, %39, %35
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @html_close_paragraph(%struct.html*) #1

declare dso_local i32 @print_otag(%struct.html*, i64, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
