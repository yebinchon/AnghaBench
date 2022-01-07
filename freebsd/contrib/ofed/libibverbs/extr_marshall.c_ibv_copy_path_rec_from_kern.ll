; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_marshall.c_ibv_copy_path_rec_from_kern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_marshall.c_ibv_copy_path_rec_from_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_user_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibv_copy_path_rec_from_kern(%struct.ibv_sa_path_rec* %0, %struct.ib_user_path_rec* %1) #0 {
  %3 = alloca %struct.ibv_sa_path_rec*, align 8
  %4 = alloca %struct.ib_user_path_rec*, align 8
  store %struct.ibv_sa_path_rec* %0, %struct.ibv_sa_path_rec** %3, align 8
  store %struct.ib_user_path_rec* %1, %struct.ib_user_path_rec** %4, align 8
  %5 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %6 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %10 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i32 %8, i32 %11, i32 4)
  %13 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %14 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %13, i32 0, i32 17
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %18 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %22 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %25 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %24, i32 0, i32 16
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %27 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %30 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %32 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %35 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %37 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %40 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %42 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %45 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %47 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %50 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %52 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %55 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %57 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %60 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %62 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %65 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %67 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %70 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %72 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %75 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %77 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %80 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %82 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %85 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %87 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %90 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %92 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %95 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %97 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %100 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %102 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %3, align 8
  %105 = getelementptr inbounds %struct.ibv_sa_path_rec, %struct.ibv_sa_path_rec* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
