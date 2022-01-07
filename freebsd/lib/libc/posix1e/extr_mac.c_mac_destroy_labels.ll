; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_destroy_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_destroy_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label_default = type { %struct.label_default*, %struct.label_default* }

@label_default_head = common dso_local global i32 0, align 4
@ld_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mac_destroy_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_destroy_labels() #0 {
  %1 = alloca %struct.label_default*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.label_default* @LIST_FIRST(i32* @label_default_head)
  store %struct.label_default* %3, %struct.label_default** %1, align 8
  %4 = icmp ne %struct.label_default* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = load %struct.label_default*, %struct.label_default** %1, align 8
  %7 = getelementptr inbounds %struct.label_default, %struct.label_default* %6, i32 0, i32 1
  %8 = load %struct.label_default*, %struct.label_default** %7, align 8
  %9 = call i32 @free(%struct.label_default* %8)
  %10 = load %struct.label_default*, %struct.label_default** %1, align 8
  %11 = getelementptr inbounds %struct.label_default, %struct.label_default* %10, i32 0, i32 0
  %12 = load %struct.label_default*, %struct.label_default** %11, align 8
  %13 = call i32 @free(%struct.label_default* %12)
  %14 = load %struct.label_default*, %struct.label_default** %1, align 8
  %15 = load i32, i32* @ld_entries, align 4
  %16 = call i32 @LIST_REMOVE(%struct.label_default* %14, i32 %15)
  %17 = load %struct.label_default*, %struct.label_default** %1, align 8
  %18 = call i32 @free(%struct.label_default* %17)
  br label %2

19:                                               ; preds = %2
  ret void
}

declare dso_local %struct.label_default* @LIST_FIRST(i32*) #1

declare dso_local i32 @free(%struct.label_default*) #1

declare dso_local i32 @LIST_REMOVE(%struct.label_default*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
