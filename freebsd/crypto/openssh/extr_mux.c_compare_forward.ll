; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mux.c_compare_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mux.c_compare_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Forward = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Forward*, %struct.Forward*)* @compare_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_forward(%struct.Forward* %0, %struct.Forward* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Forward*, align 8
  %5 = alloca %struct.Forward*, align 8
  store %struct.Forward* %0, %struct.Forward** %4, align 8
  store %struct.Forward* %1, %struct.Forward** %5, align 8
  %6 = load %struct.Forward*, %struct.Forward** %4, align 8
  %7 = getelementptr inbounds %struct.Forward, %struct.Forward* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.Forward*, %struct.Forward** %5, align 8
  %10 = getelementptr inbounds %struct.Forward, %struct.Forward* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @compare_host(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.Forward*, %struct.Forward** %4, align 8
  %17 = getelementptr inbounds %struct.Forward, %struct.Forward* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.Forward*, %struct.Forward** %5, align 8
  %20 = getelementptr inbounds %struct.Forward, %struct.Forward* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @compare_host(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %15
  %26 = load %struct.Forward*, %struct.Forward** %4, align 8
  %27 = getelementptr inbounds %struct.Forward, %struct.Forward* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.Forward*, %struct.Forward** %5, align 8
  %30 = getelementptr inbounds %struct.Forward, %struct.Forward* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %64

34:                                               ; preds = %25
  %35 = load %struct.Forward*, %struct.Forward** %4, align 8
  %36 = getelementptr inbounds %struct.Forward, %struct.Forward* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.Forward*, %struct.Forward** %5, align 8
  %39 = getelementptr inbounds %struct.Forward, %struct.Forward* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @compare_host(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %64

44:                                               ; preds = %34
  %45 = load %struct.Forward*, %struct.Forward** %4, align 8
  %46 = getelementptr inbounds %struct.Forward, %struct.Forward* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.Forward*, %struct.Forward** %5, align 8
  %49 = getelementptr inbounds %struct.Forward, %struct.Forward* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @compare_host(i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %64

54:                                               ; preds = %44
  %55 = load %struct.Forward*, %struct.Forward** %4, align 8
  %56 = getelementptr inbounds %struct.Forward, %struct.Forward* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.Forward*, %struct.Forward** %5, align 8
  %59 = getelementptr inbounds %struct.Forward, %struct.Forward* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %43, %33, %24, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @compare_host(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
