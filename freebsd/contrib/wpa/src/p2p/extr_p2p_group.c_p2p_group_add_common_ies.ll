; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_add_common_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_add_common_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.wpabuf = type { i32 }

@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_GROUP_OWNER = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_INTRA_BSS_DIST = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_GROUP_FORMATION = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_GROUP_LIMIT = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_IP_ADDR_ALLOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_group*, %struct.wpabuf*)* @p2p_group_add_common_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_group_add_common_ies(%struct.p2p_group* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.p2p_group*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.p2p_group* %0, %struct.p2p_group** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %7 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %8 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @P2P_GROUP_CAPAB_GROUP_OWNER, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %20 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_GROUP, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %30 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_RECONN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %25
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %42 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @P2P_GROUP_CAPAB_INTRA_BSS_DIST, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %55 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @P2P_GROUP_CAPAB_GROUP_FORMATION, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %64 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %75 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %78 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %76, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @P2P_GROUP_CAPAB_GROUP_LIMIT, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %73
  %88 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %89 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @P2P_GROUP_CAPAB_IP_ADDR_ALLOCATION, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
