; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ttyname.c_ttyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ttyname.c_ttyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ttyname_buf = common dso_local global i8* null, align 8
@ttyname_init_once = common dso_local global i32 0, align 4
@ttyname_keycreate = common dso_local global i32 0, align 4
@ttyname_keycreated = common dso_local global i32 0, align 4
@ttyname_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ttyname(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i64 (...) @thr_main()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** @ttyname_buf, align 8
  store i8* %8, i8** %4, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @ttyname_keycreate, align 4
  %11 = call i64 @thr_once(i32* @ttyname_init_once, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @ttyname_keycreated, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %9
  store i8* null, i8** %2, align 8
  br label %43

17:                                               ; preds = %13
  %18 = load i32, i32* @ttyname_key, align 4
  %19 = call i8* @thr_getspecific(i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = call i8* @malloc(i32 8)
  store i8* %22, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  br label %43

25:                                               ; preds = %21
  %26 = load i32, i32* @ttyname_key, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @thr_setspecific(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @free(i8* %31)
  store i8* null, i8** %2, align 8
  br label %43

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i32, i32* %3, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @ttyname_r(i32 %36, i8* %37, i32 8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %2, align 8
  br label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %41, %40, %30, %24, %16
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i64 @thr_main(...) #1

declare dso_local i64 @thr_once(i32*, i32) #1

declare dso_local i8* @thr_getspecific(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @thr_setspecific(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ttyname_r(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
