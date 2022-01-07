; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_convert_sa_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_convert_sa_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_path_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_sa_path_rec*, %struct.ibv_path_data*)* @rs_convert_sa_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_convert_sa_path(%struct.ibv_sa_path_rec* %0, %struct.ibv_path_data* %1) #0 {
  %3 = alloca %struct.ibv_sa_path_rec*, align 8
  %4 = alloca %struct.ibv_path_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ibv_sa_path_rec* %0, %struct.ibv_sa_path_rec** %3, align 8
  store %struct.ibv_path_data* %1, %struct.ibv_path_data** %4, align 8
  %6 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %7 = call i32 @memset(%struct.ibv_path_data* %6, i32 0, i32 52)
  %8 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %9 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %12 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 11
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %15 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %18 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 10
  store i32 %16, i32* %19, align 4
  %20 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %21 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %24 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  store i32 %22, i32* %25, align 4
  %26 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %27 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %30 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 8
  store i32 %28, i32* %31, align 4
  %32 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %33 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32toh(i32 %34)
  %36 = shl i32 %35, 8
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %39 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = call i32 @htobe32(i32 %41)
  %43 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %44 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %47 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %50 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %53 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 7
  %56 = or i32 %55, 1
  %57 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %58 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %61 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %64 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %67 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @htobe16(i32 %68)
  %70 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %71 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %74 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 128
  %77 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %78 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %81 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 128
  %84 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %85 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %88 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, 128
  %91 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %92 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %95 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ibv_path_data*, %struct.ibv_path_data** %4, align 8
  %98 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ibv_path_data*, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @htobe16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
