; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_neighbors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_print_neighbors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c" [%s ->\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %s, (%d/%d)]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64)* @print_neighbors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_neighbors(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %14

14:                                               ; preds = %71, %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ult i32* %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %72

23:                                               ; preds = %21
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ND_TCHECK2(i32 %26, i32 7)
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* %37, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %40, 7
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %46, %23
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ND_TCHECK2(i32 %49, i32 4)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @ipaddr_string(i32* %52, i32* %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ipaddr_string(i32* %59, i32* %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %69, 4
  store i64 %70, i64* %9, align 8
  br label %42

71:                                               ; preds = %42
  br label %14

72:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %74

73:                                               ; No predecessors!
  store i32 -1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
