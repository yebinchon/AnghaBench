; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/missing/extr_snprintf.c_append_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/missing/extr_snprintf.c_append_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i64 (%struct.state*, i8)* }

@minus_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.state*, i8, i32, i32)* @append_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_char(%struct.state* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.state*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.state* %0, %struct.state** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %29, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @minus_flag, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load %struct.state*, %struct.state** %6, align 8
  %23 = getelementptr inbounds %struct.state, %struct.state* %22, i32 0, i32 0
  %24 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %23, align 8
  %25 = load %struct.state*, %struct.state** %6, align 8
  %26 = call i64 %24(%struct.state* %25, i8 signext 32)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %61

29:                                               ; preds = %21
  br label %10

30:                                               ; preds = %19
  %31 = load %struct.state*, %struct.state** %6, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 0
  %33 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %32, align 8
  %34 = load %struct.state*, %struct.state** %6, align 8
  %35 = load i8, i8* %7, align 1
  %36 = call i64 %33(%struct.state* %34, i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %61

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @minus_flag, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i1 [ false, %40 ], [ %48, %45 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = load %struct.state*, %struct.state** %6, align 8
  %53 = getelementptr inbounds %struct.state, %struct.state* %52, i32 0, i32 0
  %54 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %53, align 8
  %55 = load %struct.state*, %struct.state** %6, align 8
  %56 = call i64 %54(%struct.state* %55, i8 signext 32)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %61

59:                                               ; preds = %51
  br label %40

60:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %58, %38, %28
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
