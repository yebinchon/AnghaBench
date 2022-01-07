; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_flush_my_fingerprints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_flush_my_fingerprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_list = type { i32 }
%struct.name_entry = type { %struct.name_list }

@nm_entry = common dso_local global i32 0, align 4
@fingerprint_count = common dso_local global i64 0, align 8
@class_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_flush_my_fingerprints(%struct.name_list* %0) #0 {
  %2 = alloca %struct.name_list*, align 8
  %3 = alloca %struct.name_entry*, align 8
  store %struct.name_list* %0, %struct.name_list** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.name_list*, %struct.name_list** %2, align 8
  %6 = call %struct.name_entry* @LIST_FIRST(%struct.name_list* %5)
  store %struct.name_entry* %6, %struct.name_entry** %3, align 8
  %7 = icmp ne %struct.name_entry* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %10 = load i32, i32* @nm_entry, align 4
  %11 = call i32 @LIST_REMOVE(%struct.name_entry* %9, i32 %10)
  %12 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %13 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %12, i32 0, i32 0
  call void @pfctl_flush_my_fingerprints(%struct.name_list* %13)
  %14 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %15 = call i32 @free(%struct.name_entry* %14)
  br label %4

16:                                               ; preds = %4
  store i64 0, i64* @fingerprint_count, align 8
  store i64 0, i64* @class_count, align 8
  ret void
}

declare dso_local %struct.name_entry* @LIST_FIRST(%struct.name_list*) #1

declare dso_local i32 @LIST_REMOVE(%struct.name_entry*, i32) #1

declare dso_local i32 @free(%struct.name_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
