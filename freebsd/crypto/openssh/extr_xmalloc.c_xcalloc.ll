; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_xmalloc.c_xcalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_xmalloc.c_xcalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"xcalloc: zero size\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"xcalloc: nmemb * size > SIZE_MAX\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"xcalloc: out of memory (allocating %zu bytes)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xcalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i64, i64* @SIZE_MAX, align 8
  %15 = load i64, i64* %3, align 8
  %16 = udiv i64 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i8* @calloc(i64 %22, i64 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = mul i64 %28, %29
  %31 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i8*, i8** %5, align 8
  ret i8* %33
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @calloc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
