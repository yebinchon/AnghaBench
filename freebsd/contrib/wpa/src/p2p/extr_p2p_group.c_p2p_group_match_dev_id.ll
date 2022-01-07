; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_match_dev_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_match_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { %struct.p2p_group_member*, %struct.TYPE_3__* }
%struct.p2p_group_member = type { i32, %struct.p2p_group_member* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.p2p_message = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_group_match_dev_id(%struct.p2p_group* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.p2p_group_member*, align 8
  %7 = alloca %struct.p2p_message, align 4
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = call i32 @os_memset(%struct.p2p_message* %7, i32 0, i32 4)
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = call i64 @p2p_parse_p2p_ie(%struct.wpabuf* %9, %struct.p2p_message* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %7, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %55

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %22 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i64 @os_memcmp(i32 %20, i32 %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %55

32:                                               ; preds = %18
  %33 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %34 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %33, i32 0, i32 0
  %35 = load %struct.p2p_group_member*, %struct.p2p_group_member** %34, align 8
  store %struct.p2p_group_member* %35, %struct.p2p_group_member** %6, align 8
  br label %36

36:                                               ; preds = %50, %32
  %37 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %38 = icmp ne %struct.p2p_group_member* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %43 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i64 @os_memcmp(i32 %41, i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %55

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %52 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %51, i32 0, i32 1
  %53 = load %struct.p2p_group_member*, %struct.p2p_group_member** %52, align 8
  store %struct.p2p_group_member* %53, %struct.p2p_group_member** %6, align 8
  br label %36

54:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %48, %31, %17, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @os_memset(%struct.p2p_message*, i32, i32) #1

declare dso_local i64 @p2p_parse_p2p_ie(%struct.wpabuf*, %struct.p2p_message*) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
