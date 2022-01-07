; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_sai6_putrandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_sai6_putrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ub_randstate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_in6*, i32, %struct.ub_randstate*)* @sai6_putrandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sai6_putrandom(%struct.sockaddr_in6* %0, i32 %1, %struct.ub_randstate* %2) #0 {
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ub_randstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ub_randstate* %2, %struct.ub_randstate** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  br label %57

15:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 128, %18
  %20 = sdiv i32 %19, 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.ub_randstate*, %struct.ub_randstate** %6, align 8
  %24 = call i32 @ub_random_max(%struct.ub_randstate* %23, i32 256)
  %25 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 15, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %24, i32* %32, align 4
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 7
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 255, %42
  %44 = load %struct.ub_randstate*, %struct.ub_randstate** %6, align 8
  %45 = call i32 @ub_random_max(%struct.ub_randstate* %44, i32 256)
  %46 = and i32 %43, %45
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 15, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %46
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %14, %41, %36
  ret void
}

declare dso_local i32 @ub_random_max(%struct.ub_randstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
