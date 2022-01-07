; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-resp.c_resp_print_bulk_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-resp.c_resp_print_bulk_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @resp_print_bulk_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_print_bulk_string(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @SKIP_OPCODE(i32* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @GET_LENGTH(i32* %14, i32 %15, i32* %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @resp_print_empty(i32* %25)
  br label %46

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @LCHECK2(i32 %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ND_TCHECK2(i32 %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @RESP_PRINT_SEGMENT(i32* %35, i32* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %27, %24
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @FIND_CRLF(i32* %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @CONSUME_CRLF(i32* %50, i32 %51)
  br label %69

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %65 [
    i32 -1, label %55
    i32 -2, label %58
    i32 -3, label %59
    i32 -4, label %62
  ]

55:                                               ; preds = %53
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @resp_print_null(i32* %56)
  br label %68

58:                                               ; preds = %53
  br label %73

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @resp_print_length_too_large(i32* %60)
  br label %68

62:                                               ; preds = %53
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @resp_print_length_negative(i32* %63)
  br label %68

65:                                               ; preds = %53
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @resp_print_invalid(i32* %66)
  br label %68

68:                                               ; preds = %65, %62, %59, %55
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @SKIP_OPCODE(i32*, i32) #1

declare dso_local i32 @GET_LENGTH(i32*, i32, i32*, i32) #1

declare dso_local i32 @resp_print_empty(i32*) #1

declare dso_local i32 @LCHECK2(i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @RESP_PRINT_SEGMENT(i32*, i32*, i32) #1

declare dso_local i32 @FIND_CRLF(i32*, i32) #1

declare dso_local i32 @CONSUME_CRLF(i32*, i32) #1

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
