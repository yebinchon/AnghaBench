; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_array = type { i32*, %struct._ck_array*, %struct.ck_malloc*, i64 }
%struct._ck_array = type { i32 }
%struct.ck_malloc = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_array_init(%struct.ck_array* %0, i32 %1, %struct.ck_malloc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ck_malloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._ck_array*, align 8
  store %struct.ck_array* %0, %struct.ck_array** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ck_malloc* %2, %struct.ck_malloc** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ck_malloc*, %struct.ck_malloc** %8, align 8
  %13 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %4
  %17 = load %struct.ck_malloc*, %struct.ck_malloc** %8, align 8
  %18 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.ck_malloc*, %struct.ck_malloc** %8, align 8
  %23 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %21, %16, %4
  store i32 0, i32* %5, align 4
  br label %48

30:                                               ; preds = %26
  %31 = load %struct.ck_malloc*, %struct.ck_malloc** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct._ck_array* @ck_array_create(%struct.ck_malloc* %31, i32 %32)
  store %struct._ck_array* %33, %struct._ck_array** %10, align 8
  %34 = load %struct._ck_array*, %struct._ck_array** %10, align 8
  %35 = icmp eq %struct._ck_array* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load %struct.ck_array*, %struct.ck_array** %6, align 8
  %39 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.ck_malloc*, %struct.ck_malloc** %8, align 8
  %41 = load %struct.ck_array*, %struct.ck_array** %6, align 8
  %42 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %41, i32 0, i32 2
  store %struct.ck_malloc* %40, %struct.ck_malloc** %42, align 8
  %43 = load %struct._ck_array*, %struct._ck_array** %10, align 8
  %44 = load %struct.ck_array*, %struct.ck_array** %6, align 8
  %45 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %44, i32 0, i32 1
  store %struct._ck_array* %43, %struct._ck_array** %45, align 8
  %46 = load %struct.ck_array*, %struct.ck_array** %6, align 8
  %47 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %37, %36, %29
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct._ck_array* @ck_array_create(%struct.ck_malloc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
