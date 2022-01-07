; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_mc_entry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_mc_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }

@CPSW_MAX_ALE_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ALE_TYPE_VLAN_ADDR = common dso_local global i32 0, align 4
@ALE_TYPE_ADDR = common dso_local global i32 0, align 4
@ALE_MCAST_FWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_softc*, i32, i32, i32*)* @cpsw_ale_mc_entry_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ale_mc_entry_set(%struct.cpsw_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 10, i32* %12, align 4
  br label %15

15:                                               ; preds = %89, %4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @CPSW_MAX_ALE_ENTRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %92

19:                                               ; preds = %15
  %20 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %23 = call i32 @cpsw_ale_read_entry(%struct.cpsw_softc* %20, i32 %21, i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %28 = call i64 @ALE_TYPE(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %26, %19
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %32
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 0
  %45 = and i32 %44, 255
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %41
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 24
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %50
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %59
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %68
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 0
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %11, align 4
  br label %92

88:                                               ; preds = %77, %68, %59, %50, %41, %32
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %15

92:                                               ; preds = %86, %15
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %5, align 4
  br label %157

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %100, %92
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @ALE_TYPE_VLAN_ADDR, align 4
  %107 = shl i32 %106, 28
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 16
  %110 = or i32 %107, %109
  store i32 %110, i32* %14, align 4
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @ALE_TYPE_ADDR, align 4
  %113 = shl i32 %112, 28
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 24
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 16
  %123 = or i32 %118, %122
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = or i32 %123, %127
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %128, %131
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %137, %140
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @ALE_MCAST_FWD, align 4
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %143, %144
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, 7
  %151 = shl i32 %150, 2
  %152 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %151, i32* %152, align 4
  %153 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %154 = load i32, i32* %12, align 4
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %156 = call i32 @cpsw_ale_write_entry(%struct.cpsw_softc* %153, i32 %154, i32* %155)
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %114, %98
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @cpsw_ale_read_entry(%struct.cpsw_softc*, i32, i32*) #1

declare dso_local i64 @ALE_TYPE(i32*) #1

declare dso_local i32 @cpsw_ale_write_entry(%struct.cpsw_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
