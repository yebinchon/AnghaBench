; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i32, i32, %struct.p2p_group_config*, %struct.p2p_data* }
%struct.p2p_data = type { %struct.p2p_group**, i64 }
%struct.p2p_group_config = type { i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p2p_group* @p2p_group_init(%struct.p2p_data* %0, %struct.p2p_group_config* %1) #0 {
  %3 = alloca %struct.p2p_group*, align 8
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca %struct.p2p_group_config*, align 8
  %6 = alloca %struct.p2p_group*, align 8
  %7 = alloca %struct.p2p_group**, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store %struct.p2p_group_config* %1, %struct.p2p_group_config** %5, align 8
  %8 = call %struct.p2p_group* @os_zalloc(i32 24)
  store %struct.p2p_group* %8, %struct.p2p_group** %6, align 8
  %9 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %10 = icmp eq %struct.p2p_group* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.p2p_group* null, %struct.p2p_group** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 0
  %15 = load %struct.p2p_group**, %struct.p2p_group*** %14, align 8
  %16 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call %struct.p2p_group** @os_realloc_array(%struct.p2p_group** %15, i64 %19, i32 8)
  store %struct.p2p_group** %20, %struct.p2p_group*** %7, align 8
  %21 = load %struct.p2p_group**, %struct.p2p_group*** %7, align 8
  %22 = icmp eq %struct.p2p_group** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %25 = call i32 @os_free(%struct.p2p_group* %24)
  store %struct.p2p_group* null, %struct.p2p_group** %3, align 8
  br label %61

26:                                               ; preds = %12
  %27 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %28 = load %struct.p2p_group**, %struct.p2p_group*** %7, align 8
  %29 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %30 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.p2p_group*, %struct.p2p_group** %28, i64 %31
  store %struct.p2p_group* %27, %struct.p2p_group** %33, align 8
  %34 = load %struct.p2p_group**, %struct.p2p_group*** %7, align 8
  %35 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 0
  store %struct.p2p_group** %34, %struct.p2p_group*** %36, align 8
  %37 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %38 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %39 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %38, i32 0, i32 3
  store %struct.p2p_data* %37, %struct.p2p_data** %39, align 8
  %40 = load %struct.p2p_group_config*, %struct.p2p_group_config** %5, align 8
  %41 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %42 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %41, i32 0, i32 2
  store %struct.p2p_group_config* %40, %struct.p2p_group_config** %42, align 8
  %43 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %44 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %46 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %48 = call i32 @p2p_group_update_ies(%struct.p2p_group* %47)
  %49 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %50 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %49, i32 0, i32 2
  %51 = load %struct.p2p_group_config*, %struct.p2p_group_config** %50, align 8
  %52 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %51, i32 0, i32 1
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %55 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %54, i32 0, i32 2
  %56 = load %struct.p2p_group_config*, %struct.p2p_group_config** %55, align 8
  %57 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %53(i32 %58, i32 1)
  %60 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  store %struct.p2p_group* %60, %struct.p2p_group** %3, align 8
  br label %61

61:                                               ; preds = %26, %23, %11
  %62 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  ret %struct.p2p_group* %62
}

declare dso_local %struct.p2p_group* @os_zalloc(i32) #1

declare dso_local %struct.p2p_group** @os_realloc_array(%struct.p2p_group**, i64, i32) #1

declare dso_local i32 @os_free(%struct.p2p_group*) #1

declare dso_local i32 @p2p_group_update_ies(%struct.p2p_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
