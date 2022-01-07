; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_strm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_strm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"No integrity check; not verifying file integrity\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Unsupported type of integrity check; not verifying file integrity\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Memory usage limit reached\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"File format not recognized\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Unsupported options\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Unexpected end of input\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Internal error (bug)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @message_strm(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 133, label %5
    i32 128, label %7
    i32 134, label %9
    i32 135, label %12
    i32 137, label %14
    i32 131, label %16
    i32 138, label %18
    i32 139, label %20
    i32 132, label %22
    i32 129, label %22
    i32 136, label %22
    i32 130, label %22
  ]

5:                                                ; preds = %1
  %6 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  br label %25

7:                                                ; preds = %1
  %8 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = call i8* @strerror(i32 %10)
  store i8* %11, i8** %2, align 8
  br label %25

12:                                               ; preds = %1
  %13 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i8* %15, i8** %2, align 8
  br label %25

16:                                               ; preds = %1
  %17 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  br label %25

18:                                               ; preds = %1
  %19 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i8* %19, i8** %2, align 8
  br label %25

20:                                               ; preds = %1
  %21 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i8* %21, i8** %2, align 8
  br label %25

22:                                               ; preds = %1, %1, %1, %1
  br label %23

23:                                               ; preds = %1, %22
  %24 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %23, %20, %18, %16, %14, %12, %9, %7, %5
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
