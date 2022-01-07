; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_check_traffic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_check_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tallow = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.tallow*)* @check_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_traffic(i64 %0, i64 %1, %struct.tallow* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tallow*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tallow* %2, %struct.tallow** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.tallow*, %struct.tallow** %7, align 8
  %10 = getelementptr inbounds %struct.tallow, %struct.tallow* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.tallow*, %struct.tallow** %7, align 8
  %16 = getelementptr inbounds %struct.tallow, %struct.tallow* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 65535
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %61

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %61

24:                                               ; preds = %14
  %25 = load %struct.tallow*, %struct.tallow** %7, align 8
  %26 = getelementptr inbounds %struct.tallow, %struct.tallow* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 65535
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %61

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.tallow*, %struct.tallow** %7, align 8
  %36 = getelementptr inbounds %struct.tallow, %struct.tallow* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %34, %37
  %39 = load %struct.tallow*, %struct.tallow** %7, align 8
  %40 = getelementptr inbounds %struct.tallow, %struct.tallow* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %61

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %61

45:                                               ; preds = %24
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, 65535
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %61

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.tallow*, %struct.tallow** %7, align 8
  %52 = getelementptr inbounds %struct.tallow, %struct.tallow* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %50, %53
  %55 = load %struct.tallow*, %struct.tallow** %7, align 8
  %56 = getelementptr inbounds %struct.tallow, %struct.tallow* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59, %48, %44, %43, %32, %23, %22, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
