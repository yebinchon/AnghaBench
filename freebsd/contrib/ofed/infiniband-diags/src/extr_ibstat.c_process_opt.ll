; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibstat.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibstat.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_only = common dso_local global i32 0, align 4
@short_format = common dso_local global i32 0, align 4
@list_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %18 [
    i32 108, label %9
    i32 115, label %12
    i32 112, label %15
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @list_only, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @list_only, align 4
  br label %19

12:                                               ; preds = %3
  %13 = load i32, i32* @short_format, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @short_format, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @list_ports, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @list_ports, align 4
  br label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %20

19:                                               ; preds = %15, %12, %9
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
