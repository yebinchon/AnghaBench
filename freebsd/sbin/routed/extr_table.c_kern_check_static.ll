; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_check_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_check_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.khash = type { i64, i32, i32, i32 }
%struct.interface = type { i32 }
%struct.rt_entry = type { i32 }
%struct.rt_spare = type { i64, i32, i32, i32, %struct.interface* }

@loopaddr = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RS_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.khash*, %struct.interface*)* @kern_check_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kern_check_static(%struct.khash* %0, %struct.interface* %1) #0 {
  %3 = alloca %struct.khash*, align 8
  %4 = alloca %struct.interface*, align 8
  %5 = alloca %struct.rt_entry*, align 8
  %6 = alloca %struct.rt_spare, align 8
  store %struct.khash* %0, %struct.khash** %3, align 8
  store %struct.interface* %1, %struct.interface** %4, align 8
  %7 = load %struct.khash*, %struct.khash** %3, align 8
  %8 = getelementptr inbounds %struct.khash, %struct.khash* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %71

12:                                               ; preds = %2
  %13 = call i32 @memset(%struct.rt_spare* %6, i32 0, i32 32)
  %14 = load %struct.interface*, %struct.interface** %4, align 8
  %15 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %6, i32 0, i32 4
  store %struct.interface* %14, %struct.interface** %15, align 8
  %16 = load %struct.khash*, %struct.khash** %3, align 8
  %17 = getelementptr inbounds %struct.khash, %struct.khash* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %6, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load %struct.interface*, %struct.interface** %4, align 8
  %21 = icmp ne %struct.interface* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.interface*, %struct.interface** %4, align 8
  %24 = getelementptr inbounds %struct.interface, %struct.interface* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %28

26:                                               ; preds = %12
  %27 = load i32, i32* @loopaddr, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.khash*, %struct.khash** %3, align 8
  %32 = getelementptr inbounds %struct.khash, %struct.khash* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %6, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @now, i32 0, i32 0), align 4
  %36 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.khash*, %struct.khash** %3, align 8
  %38 = getelementptr inbounds %struct.khash, %struct.khash* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.khash*, %struct.khash** %3, align 8
  %41 = getelementptr inbounds %struct.khash, %struct.khash* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.rt_entry* @rtget(i32 %39, i32 %42)
  store %struct.rt_entry* %43, %struct.rt_entry** %5, align 8
  %44 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %45 = icmp ne %struct.rt_entry* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %28
  %47 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %48 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RS_STATIC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %55 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %56 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RS_STATIC, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtchange(%struct.rt_entry* %54, i32 %59, %struct.rt_spare* %6, i32 0)
  br label %61

61:                                               ; preds = %53, %46
  br label %71

62:                                               ; preds = %28
  %63 = load %struct.khash*, %struct.khash** %3, align 8
  %64 = getelementptr inbounds %struct.khash, %struct.khash* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.khash*, %struct.khash** %3, align 8
  %67 = getelementptr inbounds %struct.khash, %struct.khash* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RS_STATIC, align 4
  %70 = call i32 @rtadd(i32 %65, i32 %68, i32 %69, %struct.rt_spare* %6)
  br label %71

71:                                               ; preds = %11, %62, %61
  ret void
}

declare dso_local i32 @memset(%struct.rt_spare*, i32, i32) #1

declare dso_local %struct.rt_entry* @rtget(i32, i32) #1

declare dso_local i32 @rtchange(%struct.rt_entry*, i32, %struct.rt_spare*, i32) #1

declare dso_local i32 @rtadd(i32, i32, i32, %struct.rt_spare*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
