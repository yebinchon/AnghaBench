; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_buf_add_group_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_buf_add_group_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { %struct.p2p_group_member*, i32 }
%struct.p2p_group_member = type { %struct.p2p_group_member* }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"* P2P Group Info\00", align 1
@P2P_ATTR_GROUP_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_group_info(%struct.p2p_group* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p2p_group_member*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %11 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @p2p_dbg(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %15 = call i32* @wpabuf_put(%struct.wpabuf* %14, i32 0)
  store i32* %15, i32** %7, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %17 = load i32, i32* @P2P_ATTR_GROUP_INFO, align 4
  %18 = call i32 @wpabuf_put_u8(%struct.wpabuf* %16, i32 %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %20 = call i32 @wpabuf_put_le16(%struct.wpabuf* %19, i32 0)
  %21 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %22 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %21, i32 0, i32 0
  %23 = load %struct.p2p_group_member*, %struct.p2p_group_member** %22, align 8
  store %struct.p2p_group_member* %23, %struct.p2p_group_member** %9, align 8
  br label %24

24:                                               ; preds = %41, %3
  %25 = load %struct.p2p_group_member*, %struct.p2p_group_member** %9, align 8
  %26 = icmp ne %struct.p2p_group_member* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = load %struct.p2p_group_member*, %struct.p2p_group_member** %9, align 8
  %30 = call i32 @p2p_client_info(%struct.wpabuf* %28, %struct.p2p_group_member* %29)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %45

40:                                               ; preds = %35, %27
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.p2p_group_member*, %struct.p2p_group_member** %9, align 8
  %43 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %42, i32 0, i32 0
  %44 = load %struct.p2p_group_member*, %struct.p2p_group_member** %43, align 8
  store %struct.p2p_group_member* %44, %struct.p2p_group_member** %9, align 8
  br label %24

45:                                               ; preds = %39, %24
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %49 = call i32* @wpabuf_put(%struct.wpabuf* %48, i32 0)
  %50 = load i32*, i32** %7, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = sub nsw i64 %54, 3
  %56 = trunc i64 %55 to i32
  %57 = call i32 @WPA_PUT_LE16(i32* %47, i32 %56)
  ret void
}

declare dso_local i32 @p2p_dbg(i32, i8*) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_client_info(%struct.wpabuf*, %struct.p2p_group_member*) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
