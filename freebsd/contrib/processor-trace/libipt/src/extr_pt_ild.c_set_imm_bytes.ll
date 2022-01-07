; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_set_imm_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_set_imm_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@set_imm_bytes.map_map = internal constant [2 x i32*] [i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 128 to i32*)], align 16
@pte_internal = common dso_local global i32 0, align 4
@PTI_MAP_0 = common dso_local global i32 0, align 4
@PTI_MAP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*)* @set_imm_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_imm_bytes(%struct.pt_ild* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_ild*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_ild* %0, %struct.pt_ild** %3, align 8
  %6 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %7 = icmp ne %struct.pt_ild* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %146

11:                                               ; preds = %1
  %12 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %13 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ule i64 2, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %146

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* @set_imm_bytes.map_map, i64 0, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %25 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %31 [
    i32 141, label %30
    i32 142, label %30
    i32 131, label %32
    i32 135, label %35
    i32 133, label %38
    i32 130, label %44
    i32 132, label %50
    i32 134, label %53
    i32 136, label %59
    i32 138, label %76
    i32 137, label %93
    i32 139, label %107
    i32 140, label %119
  ]

30:                                               ; preds = %19, %19
  br label %31

31:                                               ; preds = %19, %30
  store i32 0, i32* %2, align 4
  br label %146

32:                                               ; preds = %19
  %33 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %34 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %146

35:                                               ; preds = %19
  %36 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %37 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %146

38:                                               ; preds = %19
  %39 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %40 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %39, i32 0, i32 2
  %41 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %42 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %41)
  %43 = call i32 @resolve_z(i32* %40, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %146

44:                                               ; preds = %19
  %45 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %46 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %45, i32 0, i32 2
  %47 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %48 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %47)
  %49 = call i32 @resolve_v(i32* %46, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %146

50:                                               ; preds = %19
  %51 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %52 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %51, i32 0, i32 2
  store i32 2, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %146

53:                                               ; preds = %19
  %54 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %55 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %54, i32 0, i32 2
  %56 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %57 = call i32 @pti_get_nominal_eosz_df64(%struct.pt_ild* %56)
  %58 = call i32 @resolve_z(i32* %55, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %146

59:                                               ; preds = %19
  %60 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %61 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PTI_MAP_0, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %67 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %66)
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %71 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %70, i32 0, i32 2
  %72 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %73 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %72)
  %74 = call i32 @resolve_z(i32* %71, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %146

75:                                               ; preds = %65, %59
  store i32 0, i32* %2, align 4
  br label %146

76:                                               ; preds = %19
  %77 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %78 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PTI_MAP_0, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %84 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %88 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %87, i32 0, i32 2
  %89 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %90 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %89)
  %91 = call i32 @resolve_z(i32* %88, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %146

92:                                               ; preds = %82, %76
  store i32 0, i32* %2, align 4
  br label %146

93:                                               ; preds = %19
  %94 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %95 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PTI_MAP_0, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %101 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %100)
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %105 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %99, %93
  store i32 0, i32* %2, align 4
  br label %146

107:                                              ; preds = %19
  %108 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %109 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PTI_MAP_0, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %115 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %114, i32 0, i32 2
  store i32 2, i32* %115, align 8
  %116 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %117 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %116, i32 0, i32 3
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %107
  store i32 0, i32* %2, align 4
  br label %146

119:                                              ; preds = %19
  %120 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %121 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PTI_MAP_1, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %127 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %134 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %144

139:                                              ; preds = %132, %125
  %140 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %141 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %143 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %132
  br label %145

145:                                              ; preds = %144, %119
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %118, %106, %92, %86, %75, %69, %53, %50, %44, %38, %35, %32, %31, %18, %8
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @resolve_z(i32*, i32) #1

declare dso_local i32 @pti_get_nominal_eosz(%struct.pt_ild*) #1

declare dso_local i32 @resolve_v(i32*, i32) #1

declare dso_local i32 @pti_get_nominal_eosz_df64(%struct.pt_ild*) #1

declare dso_local i32 @pti_get_modrm_reg(%struct.pt_ild*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
