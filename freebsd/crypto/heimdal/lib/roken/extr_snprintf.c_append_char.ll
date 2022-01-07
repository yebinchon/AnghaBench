; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf.c_append_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf.c_append_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_state = type { i32 (%struct.snprintf_state*, i8)* }

@minus_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snprintf_state*, i8, i32, i32)* @append_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_char(%struct.snprintf_state* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snprintf_state*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snprintf_state* %0, %struct.snprintf_state** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @minus_flag, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = load %struct.snprintf_state*, %struct.snprintf_state** %5, align 8
  %23 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %22, i32 0, i32 0
  %24 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %23, align 8
  %25 = load %struct.snprintf_state*, %struct.snprintf_state** %5, align 8
  %26 = call i32 %24(%struct.snprintf_state* %25, i8 signext 32)
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %10

29:                                               ; preds = %19
  %30 = load %struct.snprintf_state*, %struct.snprintf_state** %5, align 8
  %31 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %30, i32 0, i32 0
  %32 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %31, align 8
  %33 = load %struct.snprintf_state*, %struct.snprintf_state** %5, align 8
  %34 = load i8, i8* %6, align 1
  %35 = call i32 %32(%struct.snprintf_state* %33, i8 signext %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %49, %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @minus_flag, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %57

49:                                               ; preds = %47
  %50 = load %struct.snprintf_state*, %struct.snprintf_state** %5, align 8
  %51 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %50, i32 0, i32 0
  %52 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %51, align 8
  %53 = load %struct.snprintf_state*, %struct.snprintf_state** %5, align 8
  %54 = call i32 %52(%struct.snprintf_state* %53, i8 signext 32)
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %38

57:                                               ; preds = %47
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
