; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_p2ps_adv_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_p2ps_adv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2ps_advertisement = type { i32 }
%struct.p2p_data = type { %struct.p2ps_advertisement* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p2ps_advertisement* @p2p_get_p2ps_adv_list(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = icmp ne %struct.p2p_data* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %7 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %6, i32 0, i32 0
  %8 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi %struct.p2ps_advertisement* [ %8, %5 ], [ null, %9 ]
  ret %struct.p2ps_advertisement* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
