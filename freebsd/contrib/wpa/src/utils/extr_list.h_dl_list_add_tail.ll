; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_list.h_dl_list_add_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_list.h_dl_list_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dl_list*, %struct.dl_list*)* @dl_list_add_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dl_list_add_tail(%struct.dl_list* %0, %struct.dl_list* %1) #0 {
  %3 = alloca %struct.dl_list*, align 8
  %4 = alloca %struct.dl_list*, align 8
  store %struct.dl_list* %0, %struct.dl_list** %3, align 8
  store %struct.dl_list* %1, %struct.dl_list** %4, align 8
  %5 = load %struct.dl_list*, %struct.dl_list** %3, align 8
  %6 = getelementptr inbounds %struct.dl_list, %struct.dl_list* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %9 = call i32 @dl_list_add(i32 %7, %struct.dl_list* %8)
  ret void
}

declare dso_local i32 @dl_list_add(i32, %struct.dl_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
