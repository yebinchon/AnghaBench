; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_density_bp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_density_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.densities = type { i32, i32, i32 }

@dens = common dso_local global %struct.densities* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt_density_bp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.densities*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.densities*, %struct.densities** @dens, align 8
  store %struct.densities* %7, %struct.densities** %6, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load %struct.densities*, %struct.densities** %6, align 8
  %10 = getelementptr inbounds %struct.densities, %struct.densities* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.densities*, %struct.densities** %6, align 8
  %15 = getelementptr inbounds %struct.densities, %struct.densities* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.densities*, %struct.densities** %6, align 8
  %23 = getelementptr inbounds %struct.densities, %struct.densities* %22, i32 1
  store %struct.densities* %23, %struct.densities** %6, align 8
  br label %8

24:                                               ; preds = %19, %8
  %25 = load %struct.densities*, %struct.densities** %6, align 8
  %26 = getelementptr inbounds %struct.densities, %struct.densities* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.densities*, %struct.densities** %6, align 8
  %35 = getelementptr inbounds %struct.densities, %struct.densities* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.densities*, %struct.densities** %6, align 8
  %39 = getelementptr inbounds %struct.densities, %struct.densities* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
