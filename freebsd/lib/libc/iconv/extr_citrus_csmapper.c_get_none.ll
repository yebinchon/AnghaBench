; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c_get_none.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c_get_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_csmapper = type { i32 }
%struct._citrus_mapper_area = type { i32 }

@ma_lock = common dso_local global i32 0, align 4
@csm_none = common dso_local global %struct._citrus_csmapper* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"mapper_none\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_area*, %struct._citrus_csmapper**)* @get_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_none(%struct._citrus_mapper_area* noalias %0, %struct._citrus_csmapper** noalias %1) #0 {
  %3 = alloca %struct._citrus_mapper_area*, align 8
  %4 = alloca %struct._citrus_csmapper**, align 8
  %5 = alloca i32, align 4
  store %struct._citrus_mapper_area* %0, %struct._citrus_mapper_area** %3, align 8
  store %struct._citrus_csmapper** %1, %struct._citrus_csmapper*** %4, align 8
  %6 = call i32 @WLOCK(i32* @ma_lock)
  %7 = load %struct._citrus_csmapper*, %struct._citrus_csmapper** @csm_none, align 8
  %8 = icmp ne %struct._citrus_csmapper* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct._citrus_csmapper*, %struct._citrus_csmapper** @csm_none, align 8
  %11 = load %struct._citrus_csmapper**, %struct._citrus_csmapper*** %4, align 8
  store %struct._citrus_csmapper* %10, %struct._citrus_csmapper** %11, align 8
  store i32 0, i32* %5, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %3, align 8
  %14 = call i32 @_mapper_open_direct(%struct._citrus_mapper_area* %13, %struct._citrus_csmapper** @csm_none, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  %19 = load %struct._citrus_csmapper*, %struct._citrus_csmapper** @csm_none, align 8
  %20 = call i32 @_mapper_set_persistent(%struct._citrus_csmapper* %19)
  %21 = load %struct._citrus_csmapper*, %struct._citrus_csmapper** @csm_none, align 8
  %22 = load %struct._citrus_csmapper**, %struct._citrus_csmapper*** %4, align 8
  store %struct._citrus_csmapper* %21, %struct._citrus_csmapper** %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %17, %9
  %24 = call i32 @UNLOCK(i32* @ma_lock)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @WLOCK(i32*) #1

declare dso_local i32 @_mapper_open_direct(%struct._citrus_mapper_area*, %struct._citrus_csmapper**, i8*, i8*) #1

declare dso_local i32 @_mapper_set_persistent(%struct._citrus_csmapper*) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
