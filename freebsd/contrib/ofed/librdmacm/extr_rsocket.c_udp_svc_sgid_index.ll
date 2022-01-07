; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_sgid_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_sgid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_dest = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%union.ibv_gid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_dest*, %union.ibv_gid*)* @udp_svc_sgid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_svc_sgid_index(%struct.ds_dest* %0, %union.ibv_gid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds_dest*, align 8
  %5 = alloca %union.ibv_gid*, align 8
  %6 = alloca %union.ibv_gid, align 4
  %7 = alloca i32, align 4
  store %struct.ds_dest* %0, %struct.ds_dest** %4, align 8
  store %union.ibv_gid* %1, %union.ibv_gid** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.ds_dest*, %struct.ds_dest** %4, align 8
  %13 = getelementptr inbounds %struct.ds_dest, %struct.ds_dest* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ds_dest*, %struct.ds_dest** %4, align 8
  %20 = getelementptr inbounds %struct.ds_dest, %struct.ds_dest* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ibv_query_gid(i32 %18, i32 %25, i32 %26, %union.ibv_gid* %6)
  %28 = load %union.ibv_gid*, %union.ibv_gid** %5, align 8
  %29 = call i32 @memcmp(%union.ibv_gid* %28, %union.ibv_gid* %6, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %11
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ibv_query_gid(i32, i32, i32, %union.ibv_gid*) #1

declare dso_local i32 @memcmp(%union.ibv_gid*, %union.ibv_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
