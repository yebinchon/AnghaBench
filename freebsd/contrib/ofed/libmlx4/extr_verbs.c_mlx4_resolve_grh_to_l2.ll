; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_resolve_grh_to_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_resolve_grh_to_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { i32 }
%struct.mlx4_ah = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ibv_ah_attr = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %union.ibv_gid }
%union.ibv_gid = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_pd*, %struct.mlx4_ah*, %struct.ibv_ah_attr*)* @mlx4_resolve_grh_to_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_resolve_grh_to_l2(%struct.ibv_pd* %0, %struct.mlx4_ah* %1, %struct.ibv_ah_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_pd*, align 8
  %6 = alloca %struct.mlx4_ah*, align 8
  %7 = alloca %struct.ibv_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ibv_gid, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %5, align 8
  store %struct.mlx4_ah* %1, %struct.mlx4_ah** %6, align 8
  store %struct.ibv_ah_attr* %2, %struct.ibv_ah_attr** %7, align 8
  %12 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %13 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i64 @link_local_gid(%union.ibv_gid* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %22 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = bitcast %union.ibv_gid* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = call i32 @memcpy(i32* %20, i32* %26, i32 3)
  %28 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %33 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = bitcast %union.ibv_gid* %34 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 13
  %38 = call i32 @memcpy(i32* %31, i32* %37, i32 3)
  %39 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, 2
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %46 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i32 @get_vlan_id(%union.ibv_gid* %47)
  store i32 %48, i32* %10, align 4
  br label %117

49:                                               ; preds = %3
  %50 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %51 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = call i64 @is_multicast_gid(%union.ibv_gid* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %115

55:                                               ; preds = %49
  %56 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %57 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 51, i32* %59, align 4
  %60 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 51, i32* %63, align 4
  store i32 2, i32* %9, align 4
  br label %64

64:                                               ; preds = %84, %55
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 6
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %69 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = bitcast %union.ibv_gid* %70 to i32**
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 10
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load %struct.ibv_pd*, %struct.ibv_pd** %5, align 8
  %89 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %92 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %95 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ibv_query_gid(i32 %90, i32 %93, i32 %97, %union.ibv_gid* %11)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %137

103:                                              ; preds = %87
  %104 = call i32 @htobe16(i32 49152)
  %105 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %106 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = call i32 @htobe32(i32 -2147483648)
  %109 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %110 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = call i32 @get_vlan_id(%union.ibv_gid* %11)
  store i32 %114, i32* %10, align 4
  br label %116

115:                                              ; preds = %49
  store i32 1, i32* %4, align 4
  br label %137

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %17
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 65535
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = call i32 @htobe32(i32 536870912)
  %122 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %123 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %129 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 7
  %132 = shl i32 %131, 13
  %133 = or i32 %127, %132
  %134 = load %struct.mlx4_ah*, %struct.mlx4_ah** %6, align 8
  %135 = getelementptr inbounds %struct.mlx4_ah, %struct.mlx4_ah* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %120, %117
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %115, %101
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @link_local_gid(%union.ibv_gid*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_vlan_id(%union.ibv_gid*) #1

declare dso_local i64 @is_multicast_gid(%union.ibv_gid*) #1

declare dso_local i32 @ibv_query_gid(i32, i32, i32, %union.ibv_gid*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
