; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_read_cmd_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_read_cmd_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_read_cmd = type { i64, i32* }

@READ_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_read_cmd*, i32)* @vector_read_cmd_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_read_cmd_find(%struct.vector_read_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vector_read_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vector_read_cmd* %0, %struct.vector_read_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %8 = icmp eq %struct.vector_read_cmd* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @READ_FAIL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %36

14:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %36

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %15

35:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
