; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_sib_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_decode_sib_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYSMODE_SEG_DS_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @decode_sib_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_sib_address(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 7
  switch i32 %11, label %71 [
    i32 0, label %12
    i32 1, label %17
    i32 2, label %22
    i32 3, label %27
    i32 4, label %32
    i32 5, label %43
    i32 6, label %61
    i32 7, label %66
  ]

12:                                               ; preds = %3
  %13 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %14 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %71

17:                                               ; preds = %3
  %18 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %19 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %24 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %71

27:                                               ; preds = %3
  %28 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %71

32:                                               ; preds = %3
  %33 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %34 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @SYSMODE_SEG_DS_SS, align 4
  %38 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %39 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  br label %71

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %48 = call i32 @fetch_long_imm(%struct.x86emu* %47)
  store i32 %48, i32* %7, align 4
  br label %60

49:                                               ; preds = %43
  %50 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %51 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @SYSMODE_SEG_DS_SS, align 4
  %55 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %56 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %49, %46
  br label %71

61:                                               ; preds = %3
  %62 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %63 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  br label %71

66:                                               ; preds = %3
  %67 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %68 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %3, %66, %61, %60, %32, %27, %22, %17, %12
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 3
  %74 = and i32 %73, 7
  switch i32 %74, label %111 [
    i32 0, label %75
    i32 1, label %80
    i32 2, label %85
    i32 3, label %90
    i32 4, label %95
    i32 5, label %96
    i32 6, label %101
    i32 7, label %106
  ]

75:                                               ; preds = %71
  %76 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %77 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  br label %111

80:                                               ; preds = %71
  %81 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %82 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  br label %111

85:                                               ; preds = %71
  %86 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %87 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  br label %111

90:                                               ; preds = %71
  %91 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %92 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  br label %111

95:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %111

96:                                               ; preds = %71
  %97 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %98 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %8, align 4
  br label %111

101:                                              ; preds = %71
  %102 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %103 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  br label %111

106:                                              ; preds = %71
  %107 = load %struct.x86emu*, %struct.x86emu** %4, align 8
  %108 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %71, %106, %101, %96, %95, %90, %85, %80, %75
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 6
  %114 = and i32 %113, 3
  %115 = shl i32 1, %114
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  ret i32 %120
}

declare dso_local i32 @fetch_long_imm(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
