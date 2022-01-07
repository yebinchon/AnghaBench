; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_extract_header_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_extract_header_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MGMT_HDRLEN = common dso_local global i32 0, align 4
@CTRL_CONTROL_WRAPPER_HDRLEN = common dso_local global i32 0, align 4
@CTRL_BAR_HDRLEN = common dso_local global i32 0, align 4
@CTRL_BA_HDRLEN = common dso_local global i32 0, align 4
@CTRL_PS_POLL_HDRLEN = common dso_local global i32 0, align 4
@CTRL_RTS_HDRLEN = common dso_local global i32 0, align 4
@CTRL_CTS_HDRLEN = common dso_local global i32 0, align 4
@CTRL_ACK_HDRLEN = common dso_local global i32 0, align 4
@CTRL_END_HDRLEN = common dso_local global i32 0, align 4
@CTRL_END_ACK_HDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown 802.11 ctrl frame subtype (%d)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unknown 802.11 frame type (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @extract_header_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_header_length(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @FC_TYPE(i32 %7)
  switch i32 %8, label %60 [
    i32 128, label %9
    i32 130, label %11
    i32 129, label %39
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @MGMT_HDRLEN, align 4
  store i32 %10, i32* %3, align 4
  br label %67

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @FC_SUBTYPE(i32 %12)
  switch i32 %13, label %32 [
    i32 135, label %14
    i32 137, label %16
    i32 138, label %18
    i32 132, label %20
    i32 131, label %22
    i32 134, label %24
    i32 139, label %26
    i32 136, label %28
    i32 133, label %30
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* @CTRL_CONTROL_WRAPPER_HDRLEN, align 4
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %11
  %17 = load i32, i32* @CTRL_BAR_HDRLEN, align 4
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %11
  %19 = load i32, i32* @CTRL_BA_HDRLEN, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %11
  %21 = load i32, i32* @CTRL_PS_POLL_HDRLEN, align 4
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %11
  %23 = load i32, i32* @CTRL_RTS_HDRLEN, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %11
  %25 = load i32, i32* @CTRL_CTS_HDRLEN, align 4
  store i32 %25, i32* %3, align 4
  br label %67

26:                                               ; preds = %11
  %27 = load i32, i32* @CTRL_ACK_HDRLEN, align 4
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %11
  %29 = load i32, i32* @CTRL_END_HDRLEN, align 4
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %11
  %31 = load i32, i32* @CTRL_END_ACK_HDRLEN, align 4
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %11
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @FC_SUBTYPE(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  store i32 0, i32* %3, align 4
  br label %67

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FC_TO_DS(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @FC_FROM_DS(i32 %44)
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 30, i32 24
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @FC_SUBTYPE(i32 %51)
  %53 = call i32 @DATA_FRAME_IS_QOS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %67

60:                                               ; preds = %2
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @FC_TYPE(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %58, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %9
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @FC_TYPE(i32) #1

declare dso_local i32 @FC_SUBTYPE(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @FC_TO_DS(i32) #1

declare dso_local i32 @FC_FROM_DS(i32) #1

declare dso_local i32 @DATA_FRAME_IS_QOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
