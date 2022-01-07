; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/rc4/extr_rc4.c_rc4_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/rc4/extr_rc4.c_rc4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i64*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc4_init(%struct.rc4_state* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.rc4_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rc4_state* %0, %struct.rc4_state** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %17 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %15, i64* %21, align 8
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %27 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %29 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %67, %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %35 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %40, %45
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %50 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %56 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = call i32 @swap_bytes(i64* %54, i64* %59)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %30

70:                                               ; preds = %30
  ret void
}

declare dso_local i32 @swap_bytes(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
