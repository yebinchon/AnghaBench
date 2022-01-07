; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mptcp.c_mptcp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mptcp.c_mptcp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*, i32, i32)*, i32 }
%struct.mptcp_option = type { i32 }

@MPTCP_SUB_FCLOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@mptcp_options = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mptcp_option*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.mptcp_option*
  store %struct.mptcp_option* %17, %struct.mptcp_option** %10, align 8
  %18 = load %struct.mptcp_option*, %struct.mptcp_option** %10, align 8
  %19 = getelementptr inbounds %struct.mptcp_option, %struct.mptcp_option* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MPTCP_OPT_SUBTYPE(i32 %20)
  %22 = load i64, i64* @MPTCP_SUB_FCLOSE, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @min(i32 %21, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mptcp_options, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mptcp_options, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 %40(i32* %41, i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %15, %14
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @MPTCP_OPT_SUBTYPE(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
