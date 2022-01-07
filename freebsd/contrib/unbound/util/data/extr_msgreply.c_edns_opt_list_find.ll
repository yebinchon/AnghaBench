; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_list_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_list_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i64, %struct.edns_option* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edns_option* @edns_opt_list_find(%struct.edns_option* %0, i64 %1) #0 {
  %3 = alloca %struct.edns_option*, align 8
  %4 = alloca %struct.edns_option*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.edns_option*, align 8
  store %struct.edns_option* %0, %struct.edns_option** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  store %struct.edns_option* %7, %struct.edns_option** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %10 = icmp ne %struct.edns_option* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %13 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  store %struct.edns_option* %18, %struct.edns_option** %3, align 8
  br label %25

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %22 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %21, i32 0, i32 1
  %23 = load %struct.edns_option*, %struct.edns_option** %22, align 8
  store %struct.edns_option* %23, %struct.edns_option** %6, align 8
  br label %8

24:                                               ; preds = %8
  store %struct.edns_option* null, %struct.edns_option** %3, align 8
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.edns_option*, %struct.edns_option** %3, align 8
  ret %struct.edns_option* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
