; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_client_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_client_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_group_member = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, %struct.p2p_group_member*)* @p2p_client_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_client_info(%struct.wpabuf* %0, %struct.p2p_group_member* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_group_member*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.p2p_group_member* %1, %struct.p2p_group_member** %4, align 8
  %5 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %6 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = call i64 @wpabuf_tailroom(%struct.wpabuf* %11)
  %13 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %14 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @wpabuf_len(i32* %15)
  %17 = add nsw i64 %16, 1
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %26

20:                                               ; preds = %10
  %21 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %22 = load %struct.p2p_group_member*, %struct.p2p_group_member** %4, align 8
  %23 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @wpabuf_put_buf(%struct.wpabuf* %21, i32* %24)
  br label %26

26:                                               ; preds = %20, %19, %9
  ret void
}

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
