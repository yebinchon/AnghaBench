; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_del_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_del_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.khash = type { i64, i32, i64 }
%struct.rt_entry = type { i32 }

@KS_STATIC = common dso_local global i32 0, align 4
@KS_DYNAMIC = common dso_local global i32 0, align 4
@KS_CHECK = common dso_local global i32 0, align 4
@KS_DELETE = common dso_local global i32 0, align 4
@KS_DELETED = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@K_KEEP_LIM = common dso_local global i64 0, align 8
@RS_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_static(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.khash*, align 8
  %10 = alloca %struct.rt_entry*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.khash* @kern_find(i64 %11, i64 %12, i32 0)
  store %struct.khash* %13, %struct.khash** %9, align 8
  %14 = load %struct.khash*, %struct.khash** %9, align 8
  %15 = icmp ne %struct.khash* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.khash*, %struct.khash** %9, align 8
  %21 = getelementptr inbounds %struct.khash, %struct.khash* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19, %16
  %26 = load i32, i32* @KS_STATIC, align 4
  %27 = load i32, i32* @KS_DYNAMIC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @KS_CHECK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.khash*, %struct.khash** %9, align 8
  %33 = getelementptr inbounds %struct.khash, %struct.khash* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @KS_DELETE, align 4
  %37 = load %struct.khash*, %struct.khash** %9, align 8
  %38 = getelementptr inbounds %struct.khash, %struct.khash* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %25
  %44 = load i32, i32* @KS_DELETED, align 4
  %45 = load %struct.khash*, %struct.khash** %9, align 8
  %46 = getelementptr inbounds %struct.khash, %struct.khash* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @now, i32 0, i32 0), align 8
  %50 = load i64, i64* @K_KEEP_LIM, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.khash*, %struct.khash** %9, align 8
  %53 = getelementptr inbounds %struct.khash, %struct.khash* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %43, %25
  br label %55

55:                                               ; preds = %54, %19, %4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call %struct.rt_entry* @rtget(i64 %56, i64 %57)
  store %struct.rt_entry* %58, %struct.rt_entry** %10, align 8
  %59 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %60 = icmp ne %struct.rt_entry* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %63 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RS_STATIC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %70 = call i32 @rtbad(%struct.rt_entry* %69)
  br label %71

71:                                               ; preds = %68, %61, %55
  ret void
}

declare dso_local %struct.khash* @kern_find(i64, i64, i32) #1

declare dso_local %struct.rt_entry* @rtget(i64, i64) #1

declare dso_local i32 @rtbad(%struct.rt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
