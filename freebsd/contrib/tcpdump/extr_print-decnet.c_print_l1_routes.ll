; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_l1_routes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_l1_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"{ids %d-%d cost %d hops %d} \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @print_l1_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_l1_routes(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %13, 6
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @ND_TCHECK2(i8 signext %17, i32 6)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @EXTRACT_LE_16BITS(i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 1024
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %61

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 2
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @EXTRACT_LE_16BITS(i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 2
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @EXTRACT_LE_16BITS(i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 2
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @RI_COST(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @RI_HOPS(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  br label %11

59:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %61

60:                                               ; No predecessors!
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59, %23
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ND_TCHECK2(i8 signext, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i8*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @RI_COST(i32) #1

declare dso_local i32 @RI_HOPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
