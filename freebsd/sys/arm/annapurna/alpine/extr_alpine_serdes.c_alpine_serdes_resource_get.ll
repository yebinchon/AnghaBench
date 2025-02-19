; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_alpine_serdes_resource_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_alpine_serdes_resource_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERDES_NUM_GROUPS = common dso_local global i64 0, align 8
@serdes_base = common dso_local global i32* null, align 8
@serdes_grp_offset = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @alpine_serdes_resource_get(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* null, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @SERDES_NUM_GROUPS, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load i32*, i32** @serdes_base, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32*, i32** @serdes_base, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = load i64*, i64** @serdes_grp_offset, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %14, %18
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %12, %9
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %21, %8
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
