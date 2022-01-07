; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibtracert.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibtracert.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@node_name_map_file = common dso_local global i32 0, align 4
@multicast = common dso_local global i32 0, align 4
@mlid = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@dumplevel = common dso_local global i32 0, align 4
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
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 109, label %12
    i32 102, label %17
    i32 110, label %20
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @strdup(i8* %10)
  store i32 %11, i32* @node_name_map_file, align 4
  br label %22

12:                                               ; preds = %3
  %13 = load i32, i32* @multicast, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @multicast, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strtoul(i8* %15, i32 0, i32 0)
  store i32 %16, i32* @mlid, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @force, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @force, align 4
  br label %22

20:                                               ; preds = %3
  store i32 1, i32* @dumplevel, align 4
  br label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %20, %17, %12, %9
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
