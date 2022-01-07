; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_clks.c_twl_clks_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_clks.c_twl_clks_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_clks_softc = type { i32, i32, i32 }
%struct.twl_clk_entry = type { i32 }

@TWL_CLKS_GRP = common dso_local global i32 0, align 4
@TWL4030_P1_GRP = common dso_local global i32 0, align 4
@TWL4030_P2_GRP = common dso_local global i32 0, align 4
@TWL4030_P3_GRP = common dso_local global i32 0, align 4
@TWL6030_P1_GRP = common dso_local global i32 0, align 4
@TWL6030_P2_GRP = common dso_local global i32 0, align 4
@TWL6030_P3_GRP = common dso_local global i32 0, align 4
@TWL_CLKS_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@twl_clks_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s : %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_clks_softc*, %struct.twl_clk_entry*, i32)* @twl_clks_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_clks_set_state(%struct.twl_clks_softc* %0, %struct.twl_clk_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.twl_clks_softc*, align 8
  %5 = alloca %struct.twl_clk_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.twl_clks_softc* %0, %struct.twl_clks_softc** %4, align 8
  store %struct.twl_clk_entry* %1, %struct.twl_clk_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %11 = call i32 @TWL_CLKS_ASSERT_LOCKED(%struct.twl_clks_softc* %10)
  %12 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %13 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %12, i32 0, i32 2
  %14 = call i32 @sx_xlocked(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %19 = call i32 @TWL_CLKS_LOCK_UPGRADE(%struct.twl_clks_softc* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %22 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  %23 = load i32, i32* @TWL_CLKS_GRP, align 4
  %24 = call i32 @twl_clks_read_1(%struct.twl_clks_softc* %21, %struct.twl_clk_entry* %22, i32 %23, i32* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %128

28:                                               ; preds = %20
  %29 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %30 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @twl_is_4030(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @TWL4030_P1_GRP, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @TWL4030_P1_GRP, align 4
  %43 = load i32, i32* @TWL4030_P2_GRP, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @TWL4030_P3_GRP, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %41, %37
  %51 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %52 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  %53 = load i32, i32* @TWL_CLKS_GRP, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @twl_clks_write_1(%struct.twl_clks_softc* %51, %struct.twl_clk_entry* %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %127

56:                                               ; preds = %28
  %57 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %58 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @twl_is_6030(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %64 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @twl_is_6025(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %124

68:                                               ; preds = %62, %56
  %69 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %70 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @twl_is_6030(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @TWL6030_P1_GRP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @TWL6030_P1_GRP, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %84 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  %85 = load i32, i32* @TWL_CLKS_GRP, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @twl_clks_write_1(%struct.twl_clks_softc* %83, %struct.twl_clk_entry* %84, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %128

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %74, %68
  %93 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %94 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @twl_is_6030(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* @TWL6030_P1_GRP, align 4
  %100 = load i32, i32* @TWL6030_P2_GRP, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @TWL6030_P3_GRP, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %9, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %110 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  %111 = load i32, i32* @TWL_CLKS_STATE, align 4
  %112 = load i32, i32* %9, align 4
  %113 = shl i32 %112, 5
  %114 = or i32 %113, 1
  %115 = call i32 @twl_clks_write_1(%struct.twl_clks_softc* %109, %struct.twl_clk_entry* %110, i32 %111, i32 %114)
  store i32 %115, i32* %8, align 4
  br label %123

116:                                              ; preds = %105
  %117 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %118 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  %119 = load i32, i32* @TWL_CLKS_STATE, align 4
  %120 = load i32, i32* %9, align 4
  %121 = shl i32 %120, 5
  %122 = call i32 @twl_clks_write_1(%struct.twl_clks_softc* %117, %struct.twl_clk_entry* %118, i32 %119, i32 %121)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %116, %108
  br label %126

124:                                              ; preds = %62
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %123
  br label %127

127:                                              ; preds = %126, %50
  br label %128

128:                                              ; preds = %127, %90, %27
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %133 = call i32 @TWL_CLKS_LOCK_DOWNGRADE(%struct.twl_clks_softc* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @twl_clks_debug, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %137
  %141 = load %struct.twl_clks_softc*, %struct.twl_clks_softc** %4, align 8
  %142 = getelementptr inbounds %struct.twl_clks_softc, %struct.twl_clks_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.twl_clk_entry*, %struct.twl_clk_entry** %5, align 8
  %145 = getelementptr inbounds %struct.twl_clk_entry, %struct.twl_clk_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %151 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %146, i8* %150)
  br label %152

152:                                              ; preds = %140, %137, %134
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @TWL_CLKS_ASSERT_LOCKED(%struct.twl_clks_softc*) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @TWL_CLKS_LOCK_UPGRADE(%struct.twl_clks_softc*) #1

declare dso_local i32 @twl_clks_read_1(%struct.twl_clks_softc*, %struct.twl_clk_entry*, i32, i32*) #1

declare dso_local i64 @twl_is_4030(i32) #1

declare dso_local i32 @twl_clks_write_1(%struct.twl_clks_softc*, %struct.twl_clk_entry*, i32, i32) #1

declare dso_local i64 @twl_is_6030(i32) #1

declare dso_local i64 @twl_is_6025(i32) #1

declare dso_local i32 @TWL_CLKS_LOCK_DOWNGRADE(%struct.twl_clks_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
