; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_free_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_free_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i64, %struct.p2p_group_member* }
%struct.p2p_group_member = type { %struct.p2p_group_member* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_group*)* @p2p_group_free_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_group_free_members(%struct.p2p_group* %0) #0 {
  %2 = alloca %struct.p2p_group*, align 8
  %3 = alloca %struct.p2p_group_member*, align 8
  %4 = alloca %struct.p2p_group_member*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %2, align 8
  %5 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %6 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %5, i32 0, i32 1
  %7 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  store %struct.p2p_group_member* %7, %struct.p2p_group_member** %3, align 8
  %8 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %8, i32 0, i32 1
  store %struct.p2p_group_member* null, %struct.p2p_group_member** %9, align 8
  %10 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %11 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.p2p_group_member*, %struct.p2p_group_member** %3, align 8
  %14 = icmp ne %struct.p2p_group_member* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.p2p_group_member*, %struct.p2p_group_member** %3, align 8
  store %struct.p2p_group_member* %16, %struct.p2p_group_member** %4, align 8
  %17 = load %struct.p2p_group_member*, %struct.p2p_group_member** %3, align 8
  %18 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %17, i32 0, i32 0
  %19 = load %struct.p2p_group_member*, %struct.p2p_group_member** %18, align 8
  store %struct.p2p_group_member* %19, %struct.p2p_group_member** %3, align 8
  %20 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %21 = call i32 @p2p_group_free_member(%struct.p2p_group_member* %20)
  br label %12

22:                                               ; preds = %12
  ret void
}

declare dso_local i32 @p2p_group_free_member(%struct.p2p_group_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
