; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_mipi.c_aw_clk_mipi_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_mipi.c_aw_clk_mipi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.aw_clk_mipi_def = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.aw_clk_mipi_sc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@aw_mipi_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_clk_mipi_register(%struct.clkdom* %0, %struct.aw_clk_mipi_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.aw_clk_mipi_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.aw_clk_mipi_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.aw_clk_mipi_def* %1, %struct.aw_clk_mipi_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %10 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %9, i32 0, i32 10
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @aw_mipi_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %203

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.aw_clk_mipi_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.aw_clk_mipi_sc* %17, %struct.aw_clk_mipi_sc** %7, align 8
  %18 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %22 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %28 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %31 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %35 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %38 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %44 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %42, %46
  %48 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %49 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %52 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %56 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %59 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %63 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 4
  %65 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %66 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %70 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %73 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %77 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %80 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %84 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %87 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = sub nsw i32 %90, 1
  %92 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %93 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %91, %95
  %97 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %98 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %101 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %105 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 4
  %107 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %108 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %112 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 4
  %114 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %115 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %119 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 4
  %121 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %122 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %126 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %129 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %133 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %136 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 1, %138
  %140 = sub nsw i32 %139, 1
  %141 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %142 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %140, %144
  %146 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %147 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  store i32 %145, i32* %148, align 4
  %149 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %150 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %154 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  store i32 %152, i32* %155, align 4
  %156 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %157 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %161 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 4
  store i32 %159, i32* %162, align 4
  %163 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %164 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %168 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 4
  %170 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %171 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %174 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %176 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %179 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %181 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %184 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %186 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %189 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %191 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %194 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.aw_clk_mipi_def*, %struct.aw_clk_mipi_def** %5, align 8
  %196 = getelementptr inbounds %struct.aw_clk_mipi_def, %struct.aw_clk_mipi_def* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %7, align 8
  %199 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %201 = load %struct.clknode*, %struct.clknode** %6, align 8
  %202 = call i32 @clknode_register(%struct.clkdom* %200, %struct.clknode* %201)
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %15, %14
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.aw_clk_mipi_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
