; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_prediv_mux.c_aw_clk_prediv_mux_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_prediv_mux.c_aw_clk_prediv_mux_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.aw_clk_prediv_mux_def = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.aw_clk_prediv_mux_sc = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@aw_prediv_mux_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_clk_prediv_mux_register(%struct.clkdom* %0, %struct.aw_clk_prediv_mux_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.aw_clk_prediv_mux_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.aw_clk_prediv_mux_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.aw_clk_prediv_mux_def* %1, %struct.aw_clk_prediv_mux_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %10 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %9, i32 0, i32 6
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @aw_prediv_mux_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %188

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.aw_clk_prediv_mux_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.aw_clk_prediv_mux_sc* %17, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %18 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %22 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %27 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %29 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %34 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %32, %35
  %37 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %38 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %40 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %44 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %47 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %53 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %51, %55
  %57 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %58 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %61 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %65 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  %67 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %68 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %72 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 4
  %74 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %75 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %81 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %79, %83
  %85 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %86 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %89 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %93 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 4
  %95 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %96 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %100 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %103 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %107 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %110 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %116 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %114, %118
  %120 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %121 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %124 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %128 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  store i32 %126, i32* %129, align 4
  %130 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %131 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %135 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  store i32 %133, i32* %136, align 4
  %137 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %138 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %15
  %143 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %144 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 1, %146
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %150 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %148, %152
  %154 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %155 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 4
  br label %165

157:                                              ; preds = %15
  %158 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %159 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %163 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %142
  %166 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %167 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %171 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  store i32 %169, i32* %172, align 4
  %173 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %174 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %178 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  store i32 %176, i32* %179, align 4
  %180 = load %struct.aw_clk_prediv_mux_def*, %struct.aw_clk_prediv_mux_def** %5, align 8
  %181 = getelementptr inbounds %struct.aw_clk_prediv_mux_def, %struct.aw_clk_prediv_mux_def* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %7, align 8
  %184 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %186 = load %struct.clknode*, %struct.clknode** %6, align 8
  %187 = call i32 @clknode_register(%struct.clkdom* %185, %struct.clknode* %186)
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %165, %14
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.aw_clk_prediv_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
