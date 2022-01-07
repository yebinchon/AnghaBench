; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"268|confirm? [ynq]\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"269|Press any key to continue: \00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"270|Press any key to continue [: to enter more ex commands]: \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"161|Press Enter to continue: \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"275| cont?\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"271|Press any key to continue [q to quit]: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @msg_cmsg(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %33 [
    i32 133, label %9
    i32 132, label %13
    i32 131, label %17
    i32 129, label %21
    i32 128, label %25
    i32 130, label %29
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = call i8* @msg_cat(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %11)
  store i8* %12, i8** %4, align 8
  br label %35

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = call i8* @msg_cat(i32* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64* %15)
  store i8* %16, i8** %4, align 8
  br label %35

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i8* @msg_cat(i32* %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64* %19)
  store i8* %20, i8** %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = call i8* @msg_cat(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64* %23)
  store i8* %24, i8** %4, align 8
  br label %35

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i8* @msg_cat(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64* %27)
  store i8* %28, i8** %4, align 8
  br label %35

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = call i8* @msg_cat(i32* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64* %31)
  store i8* %32, i8** %4, align 8
  br label %35

33:                                               ; preds = %3
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %29, %25, %21, %17, %13, %9
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i8* @msg_cat(i32*, i8*, i64*) #1

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
