; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_convert_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_convert_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_path_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_path_data*, %struct.ibv_sa_path_rec*)* @ucma_convert_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_convert_path(%struct.ibv_path_data* %0, %struct.ibv_sa_path_rec* %1) #0 {
  %3 = alloca %struct.ibv_path_data*, align 8
  %4 = alloca %struct.ibv_sa_path_rec*, align 8
  %5 = alloca i32, align 4
  store %struct.ibv_path_data* %0, %struct.ibv_path_data** %3, align 8
  store %struct.ibv_sa_path_rec* %1, %struct.ibv_sa_path_rec** %4, align 8
  %6 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %7 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %11 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %10, i32 0, i32 18
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %13 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %17 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %19 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %23 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %22, i32 0, i32 16
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %25 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %29 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %31 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %30, i32 0, i32 14
  store i64 0, i64* %31, align 8
  %32 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %33 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32toh(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @htobe32(i32 %38)
  %40 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %41 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %46 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %45, i32 0, i32 12
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %48 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %52 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %54 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 7
  %58 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %59 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %61 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %63 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %67 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %69 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @be16toh(i32 %71)
  %73 = and i32 %72, 15
  %74 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %75 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %77 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %76, i32 0, i32 3
  store i32 2, i32* %77, align 4
  %78 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %79 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 31
  %83 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %84 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %86 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %85, i32 0, i32 5
  store i32 2, i32* %86, align 4
  %87 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %88 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 31
  %92 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %93 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %95 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %94, i32 0, i32 7
  store i32 2, i32* %95, align 4
  %96 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %97 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 31
  %101 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %102 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ibv_path_data*, %struct.ibv_path_data** %3, align 8
  %104 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %4, align 8
  %108 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  ret void
}

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
