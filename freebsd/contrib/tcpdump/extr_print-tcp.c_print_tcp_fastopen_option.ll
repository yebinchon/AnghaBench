; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tcp.c_print_tcp_fastopen_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tcp.c_print_tcp_fastopen_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"tfo\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" cookiereq\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" invalid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" cookie \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32)* @print_tcp_fastopen_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tcp_fastopen_option(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str to i32*))
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.1 to i32*))
  br label %55

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = srem i64 %22, 2
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 4
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %29, 16
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25, %21
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %54

34:                                               ; preds = %28
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %50, %34
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @ND_PRINT(i32* %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %37

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %18
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
