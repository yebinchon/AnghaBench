; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_html_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_html_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&#039;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8, i8**)* @html_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @html_replace(i8 signext %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  store i8 %0, i8* %4, align 1
  store i8** %1, i8*** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %18 [
    i32 60, label %8
    i32 62, label %10
    i32 34, label %12
    i32 39, label %14
    i32 38, label %16
  ]

8:                                                ; preds = %2
  %9 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i64 4, i64* %3, align 8
  br label %20

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  store i64 4, i64* %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i64 6, i64* %3, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  store i64 6, i64* %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  store i64 5, i64* %3, align 8
  br label %20

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18
  store i64 1, i64* %3, align 8
  br label %20

20:                                               ; preds = %19, %16, %14, %12, %10, %8
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
