; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_rc_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_rc_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dec*, i64*, i64)* @rc_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_direct(%struct.rc_dec* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.rc_dec*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rc_dec* %0, %struct.rc_dec** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %47, %3
  %9 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %10 = call i32 @rc_normalize(%struct.rc_dec* %9)
  %11 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %12 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %16 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %19 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %23 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 31
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %29 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %31, %32
  %34 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %35 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 %41, 1
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  %45 = add nsw i64 %42, %44
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %8
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %6, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %8, label %51

51:                                               ; preds = %47
  ret void
}

declare dso_local i32 @rc_normalize(%struct.rc_dec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
