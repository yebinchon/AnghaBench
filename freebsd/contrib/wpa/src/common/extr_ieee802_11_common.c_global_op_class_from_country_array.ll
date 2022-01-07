; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_global_op_class_from_country_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_global_op_class_from_country_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.country_op_class = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.country_op_class*)* @global_op_class_from_country_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @global_op_class_from_country_array(i64 %0, i64 %1, %struct.country_op_class* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.country_op_class*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.country_op_class* %2, %struct.country_op_class** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.country_op_class*, %struct.country_op_class** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.country_op_class, %struct.country_op_class* %14, i64 %15
  %17 = getelementptr inbounds %struct.country_op_class, %struct.country_op_class* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.country_op_class*, %struct.country_op_class** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.country_op_class, %struct.country_op_class* %22, i64 %23
  %25 = getelementptr inbounds %struct.country_op_class, %struct.country_op_class* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %8, align 8
  br label %9

31:                                               ; preds = %9
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
