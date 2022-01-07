; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_relocate_section_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_relocate_section_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.lm_info* }
%struct.lm_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.section_table = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lm_sec = type { i64, i32 }

@lm_sec_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.so_list*, %struct.section_table*)* @osf_relocate_section_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osf_relocate_section_addresses(%struct.so_list* %0, %struct.section_table* %1) #0 {
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca %struct.section_table*, align 8
  %5 = alloca %struct.lm_info*, align 8
  %6 = alloca %struct.lm_sec, align 8
  %7 = alloca %struct.lm_sec*, align 8
  store %struct.so_list* %0, %struct.so_list** %3, align 8
  store %struct.section_table* %1, %struct.section_table** %4, align 8
  %8 = load %struct.so_list*, %struct.so_list** %3, align 8
  %9 = getelementptr inbounds %struct.so_list, %struct.so_list* %8, i32 0, i32 0
  %10 = load %struct.lm_info*, %struct.lm_info** %9, align 8
  store %struct.lm_info* %10, %struct.lm_info** %5, align 8
  %11 = load %struct.lm_info*, %struct.lm_info** %5, align 8
  %12 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.lm_info*, %struct.lm_info** %5, align 8
  %17 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load %struct.lm_info*, %struct.lm_info** %5, align 8
  %25 = call i32 @fetch_sec_names(%struct.lm_info* %24)
  br label %26

26:                                               ; preds = %23, %15, %2
  %27 = load %struct.section_table*, %struct.section_table** %4, align 8
  %28 = getelementptr inbounds %struct.section_table, %struct.section_table* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load %struct.lm_info*, %struct.lm_info** %5, align 8
  %34 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.lm_info*, %struct.lm_info** %5, align 8
  %37 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @lm_sec_cmp, align 4
  %40 = call %struct.lm_sec* @bsearch(%struct.lm_sec* %6, %struct.TYPE_4__* %35, i64 %38, i32 16, i32 %39)
  store %struct.lm_sec* %40, %struct.lm_sec** %7, align 8
  %41 = load %struct.lm_sec*, %struct.lm_sec** %7, align 8
  %42 = icmp ne %struct.lm_sec* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %26
  %44 = load %struct.lm_sec*, %struct.lm_sec** %7, align 8
  %45 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.section_table*, %struct.section_table** %4, align 8
  %48 = getelementptr inbounds %struct.section_table, %struct.section_table* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.lm_sec*, %struct.lm_sec** %7, align 8
  %54 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.section_table*, %struct.section_table** %4, align 8
  %57 = getelementptr inbounds %struct.section_table, %struct.section_table* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  br label %62

62:                                               ; preds = %43, %26
  ret void
}

declare dso_local i32 @fetch_sec_names(%struct.lm_info*) #1

declare dso_local %struct.lm_sec* @bsearch(%struct.lm_sec*, %struct.TYPE_4__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
