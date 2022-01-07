; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_get_bdinfo_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_get_bdinfo_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i64 }

@DEVT_DISK = common dso_local global i64 0, align 8
@hdinfo = common dso_local global i32 0, align 4
@DEVT_CD = common dso_local global i64 0, align 8
@cdinfo = common dso_local global i32 0, align 4
@DEVT_FD = common dso_local global i64 0, align 8
@fdinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.devsw*)* @bd_get_bdinfo_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bd_get_bdinfo_list(%struct.devsw* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.devsw*, align 8
  store %struct.devsw* %0, %struct.devsw** %3, align 8
  %4 = load %struct.devsw*, %struct.devsw** %3, align 8
  %5 = getelementptr inbounds %struct.devsw, %struct.devsw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DEVT_DISK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* @hdinfo, i32** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.devsw*, %struct.devsw** %3, align 8
  %12 = getelementptr inbounds %struct.devsw, %struct.devsw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DEVT_CD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32* @cdinfo, i32** %2, align 8
  br label %25

17:                                               ; preds = %10
  %18 = load %struct.devsw*, %struct.devsw** %3, align 8
  %19 = getelementptr inbounds %struct.devsw, %struct.devsw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DEVT_FD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32* @fdinfo, i32** %2, align 8
  br label %25

24:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %25

25:                                               ; preds = %24, %23, %16, %9
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
