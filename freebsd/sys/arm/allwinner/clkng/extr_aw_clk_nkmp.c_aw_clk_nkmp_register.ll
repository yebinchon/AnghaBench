; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.aw_clk_nkmp_def = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.aw_clk_nkmp_sc = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@aw_nkmp_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_clk_nkmp_register(%struct.clkdom* %0, %struct.aw_clk_nkmp_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.aw_clk_nkmp_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.aw_clk_nkmp_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.aw_clk_nkmp_def* %1, %struct.aw_clk_nkmp_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %10 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %9, i32 0, i32 12
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @aw_nkmp_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %235

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.aw_clk_nkmp_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.aw_clk_nkmp_sc* %17, %struct.aw_clk_nkmp_sc** %7, align 8
  %18 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %22 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %28 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %31 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %30, i32 0, i32 10
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %35 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %38 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %44 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %42, %46
  %48 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %49 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %48, i32 0, i32 10
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %52 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %56 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %59 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %63 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %66 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %70 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %73 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %77 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %80 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %79, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %86 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %84, %88
  %90 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %91 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %94 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %98 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %97, i32 0, i32 9
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  %100 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %101 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %105 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %108 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %112 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %115 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %119 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %122 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 1, %124
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %128 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %126, %130
  %132 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %133 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 4
  %135 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %136 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %140 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  store i32 %138, i32* %141, align 4
  %142 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %143 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %147 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %150 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %154 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %157 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %161 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %164 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 1, %166
  %168 = sub nsw i32 %167, 1
  %169 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %170 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %168, %172
  %174 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %175 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  store i32 %173, i32* %176, align 4
  %177 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %178 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %182 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 4
  store i32 %180, i32* %183, align 4
  %184 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %185 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %189 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %192 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %195 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %197 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 1, %198
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %202 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %200, %203
  %205 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %206 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %208 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %211 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 4
  %212 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %213 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %216 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 4
  %217 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %218 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %221 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  %222 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %223 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %226 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  %227 = load %struct.aw_clk_nkmp_def*, %struct.aw_clk_nkmp_def** %5, align 8
  %228 = getelementptr inbounds %struct.aw_clk_nkmp_def, %struct.aw_clk_nkmp_def* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %7, align 8
  %231 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %233 = load %struct.clknode*, %struct.clknode** %6, align 8
  %234 = call i32 @clknode_register(%struct.clkdom* %232, %struct.clknode* %233)
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %15, %14
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.aw_clk_nkmp_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
