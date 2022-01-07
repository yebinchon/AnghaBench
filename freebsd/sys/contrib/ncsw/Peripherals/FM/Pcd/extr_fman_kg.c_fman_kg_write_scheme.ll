; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_scheme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32* }
%struct.fman_kg_scheme_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FM_KG_NUM_OF_GENERIC_REGS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_write_scheme(%struct.fman_kg_regs* %0, i32 %1, i32 %2, %struct.fman_kg_scheme_regs* %3, i32 %4) #0 {
  %6 = alloca %struct.fman_kg_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fman_kg_scheme_regs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fman_kg_scheme_regs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fman_kg_scheme_regs* %3, %struct.fman_kg_scheme_regs** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %6, align 8
  %16 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = bitcast i32* %18 to %struct.fman_kg_scheme_regs*
  store %struct.fman_kg_scheme_regs* %19, %struct.fman_kg_scheme_regs** %11, align 8
  %20 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %21 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %24 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %23, i32 0, i32 13
  %25 = call i32 @iowrite32be(i32 %22, i32* %24)
  %26 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %27 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %30 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %29, i32 0, i32 12
  %31 = call i32 @iowrite32be(i32 %28, i32* %30)
  %32 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %33 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %36 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %35, i32 0, i32 11
  %37 = call i32 @iowrite32be(i32 %34, i32* %36)
  %38 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %39 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %42 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %41, i32 0, i32 10
  %43 = call i32 @iowrite32be(i32 %40, i32* %42)
  %44 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %45 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %48 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %47, i32 0, i32 9
  %49 = call i32 @iowrite32be(i32 %46, i32* %48)
  %50 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %51 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %54 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %53, i32 0, i32 8
  %55 = call i32 @iowrite32be(i32 %52, i32* %54)
  %56 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %57 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %60 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %59, i32 0, i32 7
  %61 = call i32 @iowrite32be(i32 %58, i32* %60)
  %62 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %63 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %66 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %65, i32 0, i32 6
  %67 = call i32 @iowrite32be(i32 %64, i32* %66)
  %68 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %69 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %72 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %71, i32 0, i32 5
  %73 = call i32 @iowrite32be(i32 %70, i32* %72)
  %74 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %75 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %78 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %77, i32 0, i32 4
  %79 = call i32 @iowrite32be(i32 %76, i32* %78)
  %80 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %81 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %84 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %83, i32 0, i32 3
  %85 = call i32 @iowrite32be(i32 %82, i32* %84)
  %86 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %87 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %90 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %89, i32 0, i32 2
  %91 = call i32 @iowrite32be(i32 %88, i32* %90)
  %92 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %93 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %96 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %95, i32 0, i32 1
  %97 = call i32 @iowrite32be(i32 %94, i32* %96)
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %117, %5
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @FM_KG_NUM_OF_GENERIC_REGS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %9, align 8
  %104 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %11, align 8
  %111 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @iowrite32be(i32 %109, i32* %115)
  br label %117

117:                                              ; preds = %102
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %98

120:                                              ; preds = %98
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @TRUE, align 4
  %125 = call i32 @build_ar_scheme(i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %6, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs* %126, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  ret i32 %129
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @build_ar_scheme(i32, i32, i32, i32) #1

declare dso_local i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
