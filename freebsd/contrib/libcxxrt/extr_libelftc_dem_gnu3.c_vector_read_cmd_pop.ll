; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_read_cmd_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_read_cmd_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_read_cmd = type { i64, i32* }

@READ_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_read_cmd*)* @vector_read_cmd_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_read_cmd_pop(%struct.vector_read_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_read_cmd*, align 8
  store %struct.vector_read_cmd* %0, %struct.vector_read_cmd** %3, align 8
  %4 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %5 = icmp eq %struct.vector_read_cmd* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %6
  %13 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* @READ_FAIL, align 4
  %18 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %17, i32* %24, align 4
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
