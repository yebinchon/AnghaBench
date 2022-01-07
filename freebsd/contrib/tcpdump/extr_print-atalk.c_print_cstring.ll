; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_print_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_print_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"[len=%u]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32*)* @print_cstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_cstring(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = icmp uge i8* %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @tstr, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @ND_PRINT(i32* %17)
  store i8* null, i8** %4, align 8
  br label %58

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 32
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  store i8* null, i8** %4, align 8
  br label %58

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = icmp uge i8* %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @tstr, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ND_PRINT(i32* %46)
  store i8* null, i8** %4, align 8
  br label %58

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @ND_PRINT(i32* %54)
  br label %33

56:                                               ; preds = %33
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %56, %42, %26, %13
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
