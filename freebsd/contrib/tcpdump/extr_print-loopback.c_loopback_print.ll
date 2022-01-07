; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-loopback.c_loopback_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-loopback.c_loopback_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Loopback\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c", skipCount %u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (bogus)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loopback_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str to i32*))
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %54

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK2(i32 %20, i32 2)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @EXTRACT_LE_16BITS(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %54

43:                                               ; preds = %37
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 2
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @loopback_message_print(i32* %44, i32* %48, i32 %52)
  br label %76

54:                                               ; preds = %42, %17
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @istr, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  %59 = call i32 @ND_PRINT(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @ND_TCHECK2(i32 %61, i32 %68)
  br label %76

70:                                               ; No predecessors!
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @tstr, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @ND_PRINT(i32* %74)
  br label %76

76:                                               ; preds = %70, %54, %43
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @loopback_message_print(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
