; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_logpage.c_logpage_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_logpage.c_logpage_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logpage_function = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.logpage_function*, %struct.logpage_function*)* @logpage_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logpage_compare(%struct.logpage_function* %0, %struct.logpage_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.logpage_function*, align 8
  %5 = alloca %struct.logpage_function*, align 8
  %6 = alloca i32, align 4
  store %struct.logpage_function* %0, %struct.logpage_function** %4, align 8
  store %struct.logpage_function* %1, %struct.logpage_function** %5, align 8
  %7 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %8 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = load %struct.logpage_function*, %struct.logpage_function** %5, align 8
  %13 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %11, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %20 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1, i32 1
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %27 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %32 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.logpage_function*, %struct.logpage_function** %5, align 8
  %35 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @strcmp(i32* %33, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %45 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.logpage_function*, %struct.logpage_function** %5, align 8
  %49 = getelementptr inbounds %struct.logpage_function, %struct.logpage_function* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = sub nsw i32 %47, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %43, %40, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
