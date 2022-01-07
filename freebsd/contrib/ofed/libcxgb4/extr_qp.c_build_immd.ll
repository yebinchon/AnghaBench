; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_immd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_immd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i32 }
%struct.fw_ri_immd = type { i32, i64, i64, i32, i64 }
%struct.ibv_send_wr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %struct.fw_ri_immd*, %struct.ibv_send_wr*, i32, i32*)* @build_immd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_immd(%struct.t4_sq* %0, %struct.fw_ri_immd* %1, %struct.ibv_send_wr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.t4_sq*, align 8
  %8 = alloca %struct.fw_ri_immd*, align 8
  %9 = alloca %struct.ibv_send_wr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.t4_sq* %0, %struct.t4_sq** %7, align 8
  store %struct.fw_ri_immd* %1, %struct.fw_ri_immd** %8, align 8
  store %struct.ibv_send_wr* %2, %struct.ibv_send_wr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %18 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %83, %5
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %24 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %21
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %30 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %28, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %113

43:                                               ; preds = %27
  %44 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %45 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %13, align 8
  %53 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %54 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %64 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @memcpy(i32* %71, i32* %72, i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %12, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %13, align 8
  br label %83

83:                                               ; preds = %43
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %21

86:                                               ; preds = %21
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 8
  %89 = call i32 @ROUND_UP(i32 %88, i32 16)
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 8
  %92 = sub nsw i32 %89, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @memset(i32* %96, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %95, %86
  %100 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %101 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %102 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %104 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %106 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @htobe32(i32 %107)
  %109 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %110 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %99, %40
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
