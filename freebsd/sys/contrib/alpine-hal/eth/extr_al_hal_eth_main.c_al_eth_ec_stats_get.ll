; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ec_stats_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ec_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.al_eth_ec_stats = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_ec_stats_get(%struct.al_hal_eth_adapter* %0, %struct.al_eth_ec_stats* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_ec_stats*, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_ec_stats* %1, %struct.al_eth_ec_stats** %4, align 8
  %5 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %6 = call i32 @al_assert(%struct.al_eth_ec_stats* %5)
  %7 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 37
  %12 = call i8* @al_reg_read32(i32* %11)
  %13 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %14 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %13, i32 0, i32 37
  store i8* %12, i8** %14, align 8
  %15 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 36
  %20 = call i8* @al_reg_read32(i32* %19)
  %21 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %22 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %21, i32 0, i32 36
  store i8* %20, i8** %22, align 8
  %23 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 35
  %28 = call i8* @al_reg_read32(i32* %27)
  %29 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %30 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %29, i32 0, i32 35
  store i8* %28, i8** %30, align 8
  %31 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 34
  %36 = call i8* @al_reg_read32(i32* %35)
  %37 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %38 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %37, i32 0, i32 34
  store i8* %36, i8** %38, align 8
  %39 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 33
  %44 = call i8* @al_reg_read32(i32* %43)
  %45 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %46 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %45, i32 0, i32 33
  store i8* %44, i8** %46, align 8
  %47 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 32
  %52 = call i8* @al_reg_read32(i32* %51)
  %53 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %54 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %53, i32 0, i32 32
  store i8* %52, i8** %54, align 8
  %55 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 31
  %60 = call i8* @al_reg_read32(i32* %59)
  %61 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %62 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %61, i32 0, i32 31
  store i8* %60, i8** %62, align 8
  %63 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 30
  %68 = call i8* @al_reg_read32(i32* %67)
  %69 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %70 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %69, i32 0, i32 30
  store i8* %68, i8** %70, align 8
  %71 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 29
  %76 = call i8* @al_reg_read32(i32* %75)
  %77 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %78 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %77, i32 0, i32 29
  store i8* %76, i8** %78, align 8
  %79 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 28
  %84 = call i8* @al_reg_read32(i32* %83)
  %85 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %86 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %85, i32 0, i32 28
  store i8* %84, i8** %86, align 8
  %87 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 27
  %92 = call i8* @al_reg_read32(i32* %91)
  %93 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %94 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %93, i32 0, i32 27
  store i8* %92, i8** %94, align 8
  %95 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 26
  %100 = call i8* @al_reg_read32(i32* %99)
  %101 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %102 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %101, i32 0, i32 26
  store i8* %100, i8** %102, align 8
  %103 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 25
  %108 = call i8* @al_reg_read32(i32* %107)
  %109 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %110 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %109, i32 0, i32 25
  store i8* %108, i8** %110, align 8
  %111 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 24
  %116 = call i8* @al_reg_read32(i32* %115)
  %117 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %118 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %117, i32 0, i32 24
  store i8* %116, i8** %118, align 8
  %119 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 23
  %124 = call i8* @al_reg_read32(i32* %123)
  %125 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %126 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %125, i32 0, i32 23
  store i8* %124, i8** %126, align 8
  %127 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 22
  %132 = call i8* @al_reg_read32(i32* %131)
  %133 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %134 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %133, i32 0, i32 22
  store i8* %132, i8** %134, align 8
  %135 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 21
  %140 = call i8* @al_reg_read32(i32* %139)
  %141 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %142 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %141, i32 0, i32 21
  store i8* %140, i8** %142, align 8
  %143 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 20
  %148 = call i8* @al_reg_read32(i32* %147)
  %149 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %150 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %149, i32 0, i32 20
  store i8* %148, i8** %150, align 8
  %151 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %152 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 19
  %156 = call i8* @al_reg_read32(i32* %155)
  %157 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %158 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %157, i32 0, i32 19
  store i8* %156, i8** %158, align 8
  %159 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 18
  %164 = call i8* @al_reg_read32(i32* %163)
  %165 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %166 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %165, i32 0, i32 18
  store i8* %164, i8** %166, align 8
  %167 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %168 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 17
  %172 = call i8* @al_reg_read32(i32* %171)
  %173 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %174 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %173, i32 0, i32 17
  store i8* %172, i8** %174, align 8
  %175 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %176 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 16
  %180 = call i8* @al_reg_read32(i32* %179)
  %181 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %182 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %181, i32 0, i32 16
  store i8* %180, i8** %182, align 8
  %183 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %184 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 15
  %188 = call i8* @al_reg_read32(i32* %187)
  %189 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %190 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %189, i32 0, i32 15
  store i8* %188, i8** %190, align 8
  %191 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 14
  %196 = call i8* @al_reg_read32(i32* %195)
  %197 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %198 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %197, i32 0, i32 14
  store i8* %196, i8** %198, align 8
  %199 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 13
  %204 = call i8* @al_reg_read32(i32* %203)
  %205 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %206 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %205, i32 0, i32 13
  store i8* %204, i8** %206, align 8
  %207 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %208 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 12
  %212 = call i8* @al_reg_read32(i32* %211)
  %213 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %214 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %213, i32 0, i32 12
  store i8* %212, i8** %214, align 8
  %215 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %216 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 11
  %220 = call i8* @al_reg_read32(i32* %219)
  %221 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %222 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %221, i32 0, i32 11
  store i8* %220, i8** %222, align 8
  %223 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %224 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %223, i32 0, i32 0
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 10
  %228 = call i8* @al_reg_read32(i32* %227)
  %229 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %230 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %229, i32 0, i32 10
  store i8* %228, i8** %230, align 8
  %231 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %232 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 9
  %236 = call i8* @al_reg_read32(i32* %235)
  %237 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %238 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %237, i32 0, i32 9
  store i8* %236, i8** %238, align 8
  %239 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %240 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %239, i32 0, i32 0
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 8
  %244 = call i8* @al_reg_read32(i32* %243)
  %245 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %246 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %245, i32 0, i32 8
  store i8* %244, i8** %246, align 8
  %247 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %248 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %247, i32 0, i32 0
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 7
  %252 = call i8* @al_reg_read32(i32* %251)
  %253 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %254 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %253, i32 0, i32 7
  store i8* %252, i8** %254, align 8
  %255 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %256 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %255, i32 0, i32 0
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 6
  %260 = call i8* @al_reg_read32(i32* %259)
  %261 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %262 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %261, i32 0, i32 6
  store i8* %260, i8** %262, align 8
  %263 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %264 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %263, i32 0, i32 0
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 5
  %268 = call i8* @al_reg_read32(i32* %267)
  %269 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %270 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %269, i32 0, i32 5
  store i8* %268, i8** %270, align 8
  %271 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %272 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %271, i32 0, i32 0
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 4
  %276 = call i8* @al_reg_read32(i32* %275)
  %277 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %278 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %277, i32 0, i32 4
  store i8* %276, i8** %278, align 8
  %279 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %280 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %279, i32 0, i32 0
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 3
  %284 = call i8* @al_reg_read32(i32* %283)
  %285 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %286 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %285, i32 0, i32 3
  store i8* %284, i8** %286, align 8
  %287 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %288 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %287, i32 0, i32 0
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 2
  %292 = call i8* @al_reg_read32(i32* %291)
  %293 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %294 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %293, i32 0, i32 2
  store i8* %292, i8** %294, align 8
  %295 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %296 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %295, i32 0, i32 0
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = call i8* @al_reg_read32(i32* %299)
  %301 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %302 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %301, i32 0, i32 1
  store i8* %300, i8** %302, align 8
  %303 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %304 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %303, i32 0, i32 0
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 0
  %308 = call i8* @al_reg_read32(i32* %307)
  %309 = load %struct.al_eth_ec_stats*, %struct.al_eth_ec_stats** %4, align 8
  %310 = getelementptr inbounds %struct.al_eth_ec_stats, %struct.al_eth_ec_stats* %309, i32 0, i32 0
  store i8* %308, i8** %310, align 8
  ret i32 0
}

declare dso_local i32 @al_assert(%struct.al_eth_ec_stats*) #1

declare dso_local i8* @al_reg_read32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
