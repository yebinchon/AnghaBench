; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/uuid/extr_uuid_is_nil.c_uuid_is_nil.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/uuid/extr_uuid_is_nil.c_uuid_is_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uuid_s_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uuid_is_nil(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* @uuid_s_ok, align 8
  %11 = load i64*, i64** %5, align 8
  store i64 %10, i64* %11, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %42

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to i64*
  store i64* %18, i64** %6, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28, %23, %16
  %39 = phi i1 [ false, %28 ], [ false, %23 ], [ false, %16 ], [ %37, %33 ]
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
