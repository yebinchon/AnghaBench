; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_copy_qinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_copy_qinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.regional* }
%struct.regional = type { i32 }
%struct.query_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_state*, %struct.query_info**, i32*)* @mesh_copy_qinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_copy_qinfo(%struct.mesh_state* %0, %struct.query_info** %1, i32* %2) #0 {
  %4 = alloca %struct.mesh_state*, align 8
  %5 = alloca %struct.query_info**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.query_info*, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %4, align 8
  store %struct.query_info** %1, %struct.query_info*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %10 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.regional*, %struct.regional** %13, align 8
  store %struct.regional* %14, %struct.regional** %7, align 8
  %15 = load %struct.regional*, %struct.regional** %7, align 8
  %16 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %17 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i8* @regional_alloc_init(%struct.regional* %15, i32* %18, i32 16)
  %20 = bitcast i8* %19 to %struct.query_info*
  store %struct.query_info* %20, %struct.query_info** %8, align 8
  %21 = load %struct.query_info*, %struct.query_info** %8, align 8
  %22 = icmp ne %struct.query_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.regional*, %struct.regional** %7, align 8
  %26 = load %struct.query_info*, %struct.query_info** %8, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.query_info*, %struct.query_info** %8, align 8
  %30 = getelementptr inbounds %struct.query_info, %struct.query_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @regional_alloc_init(%struct.regional* %25, i32* %28, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.query_info*, %struct.query_info** %8, align 8
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.query_info*, %struct.query_info** %8, align 8
  %37 = getelementptr inbounds %struct.query_info, %struct.query_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  br label %49

41:                                               ; preds = %24
  %42 = load %struct.query_info*, %struct.query_info** %8, align 8
  %43 = load %struct.query_info**, %struct.query_info*** %5, align 8
  store %struct.query_info* %42, %struct.query_info** %43, align 8
  %44 = load %struct.mesh_state*, %struct.mesh_state** %4, align 8
  %45 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %40, %23
  ret void
}

declare dso_local i8* @regional_alloc_init(%struct.regional*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
