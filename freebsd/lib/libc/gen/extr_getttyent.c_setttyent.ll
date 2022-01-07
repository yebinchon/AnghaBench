; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_setttyent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_setttyent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@MALLOCCHUNK = common dso_local global i32 0, align 4
@lbsize = common dso_local global i32 0, align 4
@tf = common dso_local global i64 0, align 8
@_PATH_TTYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setttyent() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @line, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @MALLOCCHUNK, align 4
  %6 = call i32* @malloc(i32 %5)
  store i32* %6, i32** @line, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %24

9:                                                ; preds = %4
  %10 = load i32, i32* @MALLOCCHUNK, align 4
  store i32 %10, i32* @lbsize, align 4
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i64, i64* @tf, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* @tf, align 8
  %16 = call i32 @rewind(i64 %15)
  store i32 1, i32* %1, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @_PATH_TTYS, align 4
  %19 = call i64 @fopen(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* @tf, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %24

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %21, %14, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @rewind(i64) #1

declare dso_local i64 @fopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
