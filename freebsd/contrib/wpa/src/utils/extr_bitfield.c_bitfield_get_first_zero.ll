; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_bitfield.c_bitfield_get_first_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_bitfield.c_bitfield_get_first_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitfield = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitfield_get_first_zero(%struct.bitfield* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitfield*, align 8
  %4 = alloca i64, align 8
  store %struct.bitfield* %0, %struct.bitfield** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.bitfield*, %struct.bitfield** %3, align 8
  %8 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 7
  %11 = sdiv i32 %10, 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %6, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load %struct.bitfield*, %struct.bitfield** %3, align 8
  %16 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %5

27:                                               ; preds = %22, %5
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.bitfield*, %struct.bitfield** %3, align 8
  %30 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 7
  %33 = sdiv i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %58

37:                                               ; preds = %27
  %38 = load i64, i64* %4, align 8
  %39 = mul i64 %38, 8
  %40 = load %struct.bitfield*, %struct.bitfield** %3, align 8
  %41 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @first_zero(i32 %45)
  %47 = add i64 %39, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.bitfield*, %struct.bitfield** %3, align 8
  %50 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %58

55:                                               ; preds = %37
  %56 = load i64, i64* %4, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %54, %36
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @first_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
