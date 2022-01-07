; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&nbsp;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.html*, i8)* @print_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_escape(%struct.html* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.html*, align 8
  %5 = alloca i8, align 1
  store %struct.html* %0, %struct.html** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %27 [
    i32 60, label %8
    i32 62, label %11
    i32 38, label %14
    i32 34, label %17
    i32 128, label %20
    i32 129, label %23
    i32 130, label %26
  ]

8:                                                ; preds = %2
  %9 = load %struct.html*, %struct.html** %4, align 8
  %10 = call i32 @print_word(%struct.html* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.html*, %struct.html** %4, align 8
  %13 = call i32 @print_word(%struct.html* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.html*, %struct.html** %4, align 8
  %16 = call i32 @print_word(%struct.html* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.html*, %struct.html** %4, align 8
  %19 = call i32 @print_word(%struct.html* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.html*, %struct.html** %4, align 8
  %22 = call i32 @print_word(%struct.html* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.html*, %struct.html** %4, align 8
  %25 = call i32 @print_byte(%struct.html* %24, i8 signext 45)
  br label %28

26:                                               ; preds = %2
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %26, %23, %20, %17, %14, %11, %8
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @print_word(%struct.html*, i8*) #1

declare dso_local i32 @print_byte(%struct.html*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
