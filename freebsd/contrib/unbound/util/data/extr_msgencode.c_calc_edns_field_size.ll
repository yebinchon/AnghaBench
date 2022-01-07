; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_calc_edns_field_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_calc_edns_field_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { %struct.edns_option*, i32 }
%struct.edns_option = type { i64, %struct.edns_option* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_edns_field_size(%struct.edns_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edns_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.edns_option*, align 8
  store %struct.edns_data* %0, %struct.edns_data** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.edns_data*, %struct.edns_data** %3, align 8
  %7 = icmp ne %struct.edns_data* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.edns_data*, %struct.edns_data** %3, align 8
  %10 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %36

14:                                               ; preds = %8
  %15 = load %struct.edns_data*, %struct.edns_data** %3, align 8
  %16 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 0
  %17 = load %struct.edns_option*, %struct.edns_option** %16, align 8
  store %struct.edns_option* %17, %struct.edns_option** %5, align 8
  br label %18

18:                                               ; preds = %28, %14
  %19 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %20 = icmp ne %struct.edns_option* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %23 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 4, %24
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %30 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %29, i32 0, i32 1
  %31 = load %struct.edns_option*, %struct.edns_option** %30, align 8
  store %struct.edns_option* %31, %struct.edns_option** %5, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load i64, i64* %4, align 8
  %34 = add i64 11, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
