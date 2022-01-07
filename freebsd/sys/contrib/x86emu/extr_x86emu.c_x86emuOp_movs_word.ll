; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_movs_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_movs_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_movs_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_movs_word(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  br label %15

14:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* @F_DF, align 4
  %17 = call i64 @ACCESS_FLAG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15
  store i32 1, i32* %5, align 4
  %23 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %24 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %28 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %41 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %45 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %32, %22
  br label %50

50:                                               ; preds = %98, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %111

54:                                               ; preds = %50
  %55 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %56 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %54
  %63 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %64 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %65 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fetch_data_long(%struct.x86emu* %63, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %70 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %71 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %75 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @store_long(%struct.x86emu* %69, i32 %73, i32 %77, i32 %78)
  br label %98

80:                                               ; preds = %54
  %81 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %82 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %83 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @fetch_data_word(%struct.x86emu* %81, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %88 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %89 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %93 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @store_word(%struct.x86emu* %87, i32 %91, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %80, %62
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %101 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %107 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %50

111:                                              ; preds = %50
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @fetch_data_long(%struct.x86emu*, i32) #1

declare dso_local i32 @store_long(%struct.x86emu*, i32, i32, i32) #1

declare dso_local i32 @fetch_data_word(%struct.x86emu*, i32) #1

declare dso_local i32 @store_word(%struct.x86emu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
