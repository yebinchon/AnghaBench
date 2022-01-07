; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-resp.c_resp_print_bulk_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-resp.c_resp_print_bulk_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @resp_print_bulk_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_print_bulk_array(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @SKIP_OPCODE(i32* %13, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @GET_LENGTH(i32* %16, i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @resp_parse(i32* %29, i32* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @TEST_RET_LEN_NORETURN(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %24

45:                                               ; preds = %24
  br label %65

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %61 [
    i32 0, label %48
    i32 -1, label %51
    i32 -2, label %54
    i32 -3, label %55
    i32 -4, label %58
  ]

48:                                               ; preds = %46
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @resp_print_empty(i32* %49)
  br label %64

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @resp_print_null(i32* %52)
  br label %64

54:                                               ; preds = %46
  br label %69

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @resp_print_length_too_large(i32* %56)
  br label %64

58:                                               ; preds = %46
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @resp_print_length_negative(i32* %59)
  br label %64

61:                                               ; preds = %46
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @resp_print_invalid(i32* %62)
  br label %64

64:                                               ; preds = %61, %58, %55, %51, %48
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @SKIP_OPCODE(i32*, i32) #1

declare dso_local i32 @GET_LENGTH(i32*, i32, i32*, i32) #1

declare dso_local i32 @resp_parse(i32*, i32*, i32) #1

declare dso_local i32 @TEST_RET_LEN_NORETURN(i32) #1

declare dso_local i32 @resp_print_empty(i32*) #1

declare dso_local i32 @resp_print_null(i32*) #1

declare dso_local i32 @resp_print_length_too_large(i32*) #1

declare dso_local i32 @resp_print_length_negative(i32*) #1

declare dso_local i32 @resp_print_invalid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
