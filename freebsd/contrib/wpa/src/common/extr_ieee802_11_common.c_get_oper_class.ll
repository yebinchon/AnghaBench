; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_get_oper_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_get_oper_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oper_class_map = type { i64 }

@global_op_class = common dso_local global %struct.oper_class_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.oper_class_map* @get_oper_class(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.oper_class_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.oper_class_map*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @country_to_global_op_class(i8* %10, i64 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.oper_class_map*, %struct.oper_class_map** @global_op_class, align 8
  %15 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %14, i64 0
  store %struct.oper_class_map* %15, %struct.oper_class_map** %6, align 8
  br label %16

16:                                               ; preds = %29, %13
  %17 = load %struct.oper_class_map*, %struct.oper_class_map** %6, align 8
  %18 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.oper_class_map*, %struct.oper_class_map** %6, align 8
  %23 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi i1 [ false, %16 ], [ %26, %21 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load %struct.oper_class_map*, %struct.oper_class_map** %6, align 8
  %31 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %30, i32 1
  store %struct.oper_class_map* %31, %struct.oper_class_map** %6, align 8
  br label %16

32:                                               ; preds = %27
  %33 = load %struct.oper_class_map*, %struct.oper_class_map** %6, align 8
  %34 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.oper_class_map* null, %struct.oper_class_map** %3, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load %struct.oper_class_map*, %struct.oper_class_map** %6, align 8
  store %struct.oper_class_map* %39, %struct.oper_class_map** %3, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = load %struct.oper_class_map*, %struct.oper_class_map** %3, align 8
  ret %struct.oper_class_map* %41
}

declare dso_local i64 @country_to_global_op_class(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
