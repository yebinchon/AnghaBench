; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_get_client_interface_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_get_client_interface_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i32 }
%struct.p2p_group_member = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @p2p_group_get_client_interface_addr(%struct.p2p_group* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.p2p_group_member*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %8 = icmp ne %struct.p2p_group* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.p2p_group_member* @p2p_group_get_client(%struct.p2p_group* %11, i32* %12)
  store %struct.p2p_group_member* %13, %struct.p2p_group_member** %6, align 8
  %14 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %15 = icmp ne %struct.p2p_group_member* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %18 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %3, align 8
  br label %21

20:                                               ; preds = %10
  store i32* null, i32** %3, align 8
  br label %21

21:                                               ; preds = %20, %16, %9
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local %struct.p2p_group_member* @p2p_group_get_client(%struct.p2p_group*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
