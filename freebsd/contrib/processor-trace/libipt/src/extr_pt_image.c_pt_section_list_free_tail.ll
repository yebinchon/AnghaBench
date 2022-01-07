; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_section_list_free_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_section_list_free_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section_list = type { %struct.pt_section_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_section_list*)* @pt_section_list_free_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_section_list_free_tail(%struct.pt_section_list* %0) #0 {
  %2 = alloca %struct.pt_section_list*, align 8
  %3 = alloca %struct.pt_section_list*, align 8
  store %struct.pt_section_list* %0, %struct.pt_section_list** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.pt_section_list*, %struct.pt_section_list** %2, align 8
  %6 = icmp ne %struct.pt_section_list* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.pt_section_list*, %struct.pt_section_list** %2, align 8
  store %struct.pt_section_list* %8, %struct.pt_section_list** %3, align 8
  %9 = load %struct.pt_section_list*, %struct.pt_section_list** %2, align 8
  %10 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %9, i32 0, i32 0
  %11 = load %struct.pt_section_list*, %struct.pt_section_list** %10, align 8
  store %struct.pt_section_list* %11, %struct.pt_section_list** %2, align 8
  %12 = load %struct.pt_section_list*, %struct.pt_section_list** %3, align 8
  %13 = call i32 @pt_section_list_free(%struct.pt_section_list* %12)
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pt_section_list_free(%struct.pt_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
