; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_emul.c___emul_fetch_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_emul.c___emul_fetch_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrapframe = type { i64*, i64* }
%struct.frame = type { i64* }

@IREG_G0 = common dso_local global i32 0, align 4
@IREG_O0 = common dso_local global i32 0, align 4
@IREG_L0 = common dso_local global i32 0, align 4
@SPOFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__emul_fetch_reg(%struct.utrapframe* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.utrapframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.frame*, align 8
  store %struct.utrapframe* %0, %struct.utrapframe** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IREG_G0, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %55

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IREG_O0, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.utrapframe*, %struct.utrapframe** %4, align 8
  %17 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  br label %55

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IREG_L0, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.utrapframe*, %struct.utrapframe** %4, align 8
  %29 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IREG_O0, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  br label %55

37:                                               ; preds = %23
  %38 = load %struct.utrapframe*, %struct.utrapframe** %4, align 8
  %39 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 6
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPOFF, align 8
  %44 = add nsw i64 %42, %43
  %45 = inttoptr i64 %44 to %struct.frame*
  store %struct.frame* %45, %struct.frame** %6, align 8
  %46 = load %struct.frame*, %struct.frame** %6, align 8
  %47 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @IREG_L0, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %37, %27, %15, %10
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
