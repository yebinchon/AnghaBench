; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-radius.c_print_attr_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"ERROR: length %u != 4\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"User Selected\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"NAS Select\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @print_attr_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attr_address(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  %16 = call i32 @ND_PRINT(i32* %15)
  br label %62

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK2(i32 %20, i32 4)
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %47 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %17, %17
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @EXTRACT_32BITS(i32* %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.1 to i32*))
  br label %46

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @EXTRACT_32BITS(i32* %31)
  %33 = icmp eq i32 %32, -2
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.2 to i32*))
  br label %45

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ipaddr_string(i32* %39, i32* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  br label %45

45:                                               ; preds = %37, %34
  br label %46

46:                                               ; preds = %45, %27
  br label %55

47:                                               ; preds = %17
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ipaddr_string(i32* %49, i32* %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @ND_PRINT(i32* %53)
  br label %55

55:                                               ; preds = %47, %46
  br label %62

56:                                               ; No predecessors!
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @tstr, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  br label %62

62:                                               ; preds = %56, %55, %11
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
