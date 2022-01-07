; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.aw_clk_nm_def = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.aw_clk_nm_sc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@aw_nm_clknode_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_clk_nm_register(%struct.clkdom* %0, %struct.aw_clk_nm_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.aw_clk_nm_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.aw_clk_nm_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.aw_clk_nm_def* %1, %struct.aw_clk_nm_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %10 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %9, i32 0, i32 10
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @aw_nm_clknode_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %231

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.aw_clk_nm_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.aw_clk_nm_sc* %17, %struct.aw_clk_nm_sc** %7, align 8
  %18 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %22 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %28 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %31 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %35 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %38 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %44 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %42, %46
  %48 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %49 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %52 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %56 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %59 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %63 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %66 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %70 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %73 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %77 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %80 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %86 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %84, %88
  %90 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %91 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %94 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %98 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  %100 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %101 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %105 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %108 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %112 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %115 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %119 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %122 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 1, %124
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %128 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %126, %130
  %132 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %133 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 4
  %135 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %136 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %140 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 7
  store i32 %138, i32* %141, align 4
  %142 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %143 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %147 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 6
  store i32 %145, i32* %148, align 4
  %149 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %150 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %154 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  store i32 %152, i32* %155, align 4
  %156 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %157 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %15
  %162 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %163 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 1, %165
  %167 = sub nsw i32 %166, 1
  %168 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %169 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %167, %171
  %173 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %174 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  store i32 %172, i32* %175, align 4
  br label %184

176:                                              ; preds = %15
  %177 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %178 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %182 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %161
  %185 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %186 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %190 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  store i32 %188, i32* %191, align 4
  %192 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %193 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %196 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %198 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 1, %199
  %201 = sub nsw i32 %200, 1
  %202 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %203 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %201, %204
  %206 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %207 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %209 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %212 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 4
  %213 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %214 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %217 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %219 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %222 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  %223 = load %struct.aw_clk_nm_def*, %struct.aw_clk_nm_def** %5, align 8
  %224 = getelementptr inbounds %struct.aw_clk_nm_def, %struct.aw_clk_nm_def* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %7, align 8
  %227 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %229 = load %struct.clknode*, %struct.clknode** %6, align 8
  %230 = call i32 @clknode_register(%struct.clkdom* %228, %struct.clknode* %229)
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %184, %14
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.aw_clk_nm_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
