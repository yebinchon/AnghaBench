; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_fmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_fmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_sec_file_mapping = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@mtx_plain = common dso_local global i32 0, align 4
@pte_bad_lock = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_sec_file_mapping*)* @fmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmap_init(%struct.pt_sec_file_mapping* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_sec_file_mapping*, align 8
  store %struct.pt_sec_file_mapping* %0, %struct.pt_sec_file_mapping** %3, align 8
  %4 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %3, align 8
  %5 = icmp ne %struct.pt_sec_file_mapping* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @pte_internal, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.pt_sec_file_mapping*, %struct.pt_sec_file_mapping** %3, align 8
  %11 = call i32 @memset(%struct.pt_sec_file_mapping* %10, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @memset(%struct.pt_sec_file_mapping*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
