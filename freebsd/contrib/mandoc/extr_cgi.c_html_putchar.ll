; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_html_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_html_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @html_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @html_putchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  switch i32 %4, label %13 [
    i32 34, label %5
    i32 38, label %7
    i32 62, label %9
    i32 60, label %11
  ]

5:                                                ; preds = %1
  %6 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

7:                                                ; preds = %1
  %8 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %16

9:                                                ; preds = %1
  %10 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %16

11:                                               ; preds = %1
  %12 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %16

13:                                               ; preds = %1
  %14 = load i8, i8* %2, align 1
  %15 = call i32 @putchar(i8 zeroext %14)
  br label %16

16:                                               ; preds = %13, %11, %9, %7, %5
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @putchar(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
