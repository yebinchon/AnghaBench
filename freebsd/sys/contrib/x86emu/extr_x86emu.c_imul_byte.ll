; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_imul_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_imul_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@F_CF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i64)* @imul_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imul_byte(%struct.x86emu* %0, i64 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = mul nsw i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %15 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %18 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %31 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %23
  %43 = load i32, i32* @F_CF, align 4
  %44 = call i32 @CLEAR_FLAG(i32 %43)
  %45 = load i32, i32* @F_OF, align 4
  %46 = call i32 @CLEAR_FLAG(i32 %45)
  br label %52

47:                                               ; preds = %36, %29
  %48 = load i32, i32* @F_CF, align 4
  %49 = call i32 @SET_FLAG(i32 %48)
  %50 = load i32, i32* @F_OF, align 4
  %51 = call i32 @SET_FLAG(i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
