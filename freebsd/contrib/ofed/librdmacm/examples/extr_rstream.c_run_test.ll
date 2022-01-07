; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_run_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start = common dso_local global i32 0, align 4
@iterations = common dso_local global i32 0, align 4
@transfer_count = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i64 0, align 8
@transfer_size = common dso_local global i32 0, align 4
@end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @sync_test()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %67

8:                                                ; preds = %0
  %9 = call i32 @gettimeofday(i32* @start, i32* null)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %61, %8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @iterations, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @transfer_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i64, i64* @dst_addr, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @transfer_size, align 4
  %24 = call i32 @send_xfer(i32 %23)
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @transfer_size, align 4
  %27 = call i32 @recv_xfer(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %67

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @transfer_count, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i64, i64* @dst_addr, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @transfer_size, align 4
  %47 = call i32 @recv_xfer(i32 %46)
  br label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @transfer_size, align 4
  %50 = call i32 @send_xfer(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %67

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %10

64:                                               ; preds = %10
  %65 = call i32 @gettimeofday(i32* @end, i32* null)
  %66 = call i32 (...) @show_perf()
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %64, %55, %32, %7
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @sync_test(...) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @send_xfer(i32) #1

declare dso_local i32 @recv_xfer(i32) #1

declare dso_local i32 @show_perf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
