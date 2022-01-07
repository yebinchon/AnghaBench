; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speedtab = type { i32, i32 }

@B230400 = common dso_local global i32 0, align 4
@speedtab = common dso_local global %struct.speedtab* null, align 8
@B300 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.speedtab*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @B230400, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.speedtab*, %struct.speedtab** @speedtab, align 8
  store %struct.speedtab* %11, %struct.speedtab** %4, align 8
  br label %12

12:                                               ; preds = %28, %10
  %13 = load %struct.speedtab*, %struct.speedtab** %4, align 8
  %14 = getelementptr inbounds %struct.speedtab, %struct.speedtab* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.speedtab*, %struct.speedtab** %4, align 8
  %19 = getelementptr inbounds %struct.speedtab, %struct.speedtab* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.speedtab*, %struct.speedtab** %4, align 8
  %25 = getelementptr inbounds %struct.speedtab, %struct.speedtab* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.speedtab*, %struct.speedtab** %4, align 8
  %30 = getelementptr inbounds %struct.speedtab, %struct.speedtab* %29, i32 1
  store %struct.speedtab* %30, %struct.speedtab** %4, align 8
  br label %12

31:                                               ; preds = %12
  %32 = load i32, i32* @B300, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %23, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
