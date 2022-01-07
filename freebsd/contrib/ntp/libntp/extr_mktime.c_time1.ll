; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_time1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_time1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@WRONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @time1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time1(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.tm*, %struct.tm** %3, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = call i32 @time2(%struct.tm* %14, i32* %5, i32 1)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.tm*, %struct.tm** %3, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @WRONG, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @time2(%struct.tm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
