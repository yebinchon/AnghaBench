; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_movs_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_movs_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_movs_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_movs_byte(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load i32, i32* @F_DF, align 4
  %7 = call i64 @ACCESS_FLAG(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %11

10:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %9
  store i32 1, i32* %4, align 4
  %12 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %17 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %27 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %30 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %32
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %21, %11
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %45 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %46 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fetch_data_byte(%struct.x86emu* %44, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %51 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %52 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %56 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @store_byte(%struct.x86emu* %50, i32 %54, i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %63 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %39

73:                                               ; preds = %39
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @fetch_data_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @store_byte(%struct.x86emu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
