; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_rpc_pmap_getcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_rpc_pmap_getcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap_list = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }

@rpc_pmap_list = common dso_local global %struct.pmap_list* null, align 8
@rpc_pmap_num = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_pmap_getcache(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pmap_list*, align 8
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pmap_list*, %struct.pmap_list** @rpc_pmap_list, align 8
  store %struct.pmap_list* %10, %struct.pmap_list** %8, align 8
  br label %11

11:                                               ; preds = %42, %3
  %12 = load %struct.pmap_list*, %struct.pmap_list** %8, align 8
  %13 = load %struct.pmap_list*, %struct.pmap_list** @rpc_pmap_list, align 8
  %14 = load i64, i64* @rpc_pmap_num, align 8
  %15 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %13, i64 %14
  %16 = icmp ult %struct.pmap_list* %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load %struct.pmap_list*, %struct.pmap_list** %8, align 8
  %19 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load %struct.pmap_list*, %struct.pmap_list** %8, align 8
  %27 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.pmap_list*, %struct.pmap_list** %8, align 8
  %33 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.pmap_list*, %struct.pmap_list** %8, align 8
  %39 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %31, %25, %17
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.pmap_list*, %struct.pmap_list** %8, align 8
  %44 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %43, i32 1
  store %struct.pmap_list* %44, %struct.pmap_list** %8, align 8
  br label %11

45:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
