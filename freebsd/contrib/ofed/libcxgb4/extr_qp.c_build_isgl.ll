; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_isgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_isgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ri_isgl = type { i64, i32, i64, i32, i64 }
%struct.ibv_sge = type { i32, i32, i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@FW_RI_DATA_ISGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ri_isgl*, %struct.ibv_sge*, i32, i64*)* @build_isgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_isgl(%struct.fw_ri_isgl* %0, %struct.ibv_sge* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_ri_isgl*, align 8
  %7 = alloca %struct.ibv_sge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.fw_ri_isgl* %0, %struct.fw_ri_isgl** %6, align 8
  store %struct.ibv_sge* %1, %struct.ibv_sge** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.fw_ri_isgl*, %struct.fw_ri_isgl** %6, align 8
  %14 = getelementptr inbounds %struct.fw_ri_isgl, %struct.fw_ri_isgl* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %12, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %75, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %17
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.ibv_sge*, %struct.ibv_sge** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %23, i64 %25
  %27 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %22, %29
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %97

36:                                               ; preds = %21
  %37 = load %struct.ibv_sge*, %struct.ibv_sge** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %37, i64 %39
  %41 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load %struct.ibv_sge*, %struct.ibv_sge** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %46, i64 %48
  %50 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 32
  %54 = load %struct.ibv_sge*, %struct.ibv_sge** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %54, i64 %56
  %58 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %53, %59
  %61 = call i8* @htobe64(i32 %60)
  %62 = ptrtoint i8* %61 to i64
  %63 = load i64*, i64** %12, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %12, align 8
  store i64 %62, i64* %63, align 8
  %65 = load %struct.ibv_sge*, %struct.ibv_sge** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %65, i64 %67
  %69 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @htobe64(i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load i64*, i64** %12, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %12, align 8
  store i64 %72, i64* %73, align 8
  br label %75

75:                                               ; preds = %36
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load i64*, i64** %12, align 8
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @FW_RI_DATA_ISGL, align 4
  %81 = load %struct.fw_ri_isgl*, %struct.fw_ri_isgl** %6, align 8
  %82 = getelementptr inbounds %struct.fw_ri_isgl, %struct.fw_ri_isgl* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fw_ri_isgl*, %struct.fw_ri_isgl** %6, align 8
  %84 = getelementptr inbounds %struct.fw_ri_isgl, %struct.fw_ri_isgl* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @htobe16(i32 %85)
  %87 = load %struct.fw_ri_isgl*, %struct.fw_ri_isgl** %6, align 8
  %88 = getelementptr inbounds %struct.fw_ri_isgl, %struct.fw_ri_isgl* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fw_ri_isgl*, %struct.fw_ri_isgl** %6, align 8
  %90 = getelementptr inbounds %struct.fw_ri_isgl, %struct.fw_ri_isgl* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i64, i64* %11, align 8
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %78
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %33
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i8* @htobe64(i32) #1

declare dso_local i32 @htobe16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
