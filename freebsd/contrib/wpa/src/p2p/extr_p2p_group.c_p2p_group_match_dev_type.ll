; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_match_dev_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_match_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { %struct.p2p_group_member*, i32 }
%struct.p2p_group_member = type { %struct.p2p_group_member* }
%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_group_match_dev_type(%struct.p2p_group* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.p2p_group_member*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %7 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %8 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %11 = call i64 @p2p_match_dev_type(i32 %9, %struct.wpabuf* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %15, i32 0, i32 0
  %17 = load %struct.p2p_group_member*, %struct.p2p_group_member** %16, align 8
  store %struct.p2p_group_member* %17, %struct.p2p_group_member** %6, align 8
  br label %18

18:                                               ; preds = %28, %14
  %19 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %20 = icmp ne %struct.p2p_group_member* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %24 = call i64 @p2p_match_dev_type_member(%struct.p2p_group_member* %22, %struct.wpabuf* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %33

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %30 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %29, i32 0, i32 0
  %31 = load %struct.p2p_group_member*, %struct.p2p_group_member** %30, align 8
  store %struct.p2p_group_member* %31, %struct.p2p_group_member** %6, align 8
  br label %18

32:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @p2p_match_dev_type(i32, %struct.wpabuf*) #1

declare dso_local i64 @p2p_match_dev_type_member(%struct.p2p_group_member*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
