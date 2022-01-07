; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/in_cksum/extr_in_cksum.c_randomise_mbuf_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/in_cksum/extr_in_cksum.c_randomise_mbuf_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @randomise_mbuf_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomise_mbuf_chain(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = call i32 (...) @rand()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 4, i32* %5, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @memcpy(i64 %35, i32* %4, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  %44 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 1
  %46 = load %struct.mbuf*, %struct.mbuf** %45, align 8
  %47 = icmp ne %struct.mbuf* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 1
  %51 = load %struct.mbuf*, %struct.mbuf** %50, align 8
  call void @randomise_mbuf_chain(%struct.mbuf* %51)
  br label %52

52:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
