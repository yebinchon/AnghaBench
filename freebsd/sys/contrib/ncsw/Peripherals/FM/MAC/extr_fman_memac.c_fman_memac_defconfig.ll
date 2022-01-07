; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_defconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_cfg = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@DEFAULT_TX_IPG_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_FRAME_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_PAUSE_QUANTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_memac_defconfig(%struct.memac_cfg* %0) #0 {
  %2 = alloca %struct.memac_cfg*, align 8
  store %struct.memac_cfg* %0, %struct.memac_cfg** %2, align 8
  %3 = load i8*, i8** @FALSE, align 8
  %4 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %4, i32 0, i32 22
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @FALSE, align 8
  %7 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %7, i32 0, i32 21
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @FALSE, align 8
  %10 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %10, i32 0, i32 20
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @FALSE, align 8
  %13 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %14 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %13, i32 0, i32 19
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %17 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %16, i32 0, i32 18
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %20 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %19, i32 0, i32 17
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %23 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %22, i32 0, i32 16
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %26 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %25, i32 0, i32 15
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %29 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %28, i32 0, i32 14
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @FALSE, align 8
  %31 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %32 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %31, i32 0, i32 13
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %35 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %34, i32 0, i32 12
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @FALSE, align 8
  %37 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %38 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @FALSE, align 8
  %40 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %41 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @DEFAULT_TX_IPG_LENGTH, align 4
  %43 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %44 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @DEFAULT_FRAME_LENGTH, align 4
  %46 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %47 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DEFAULT_PAUSE_QUANTA, align 4
  %49 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %50 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @TRUE, align 8
  %52 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %53 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @FALSE, align 8
  %55 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %56 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @FALSE, align 8
  %58 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %59 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %62 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @FALSE, align 8
  %64 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %65 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @FALSE, align 8
  %67 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %68 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  %71 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
