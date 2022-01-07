; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_remove_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_remove_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { i64, i32, i32 }
%struct.mesh_state = type { i32, %struct.mesh_reply*, %struct.TYPE_4__ }
%struct.mesh_reply = type { %struct.mesh_reply*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.comm_point* }
%struct.TYPE_4__ = type { i64 }
%struct.comm_point = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_state_remove_reply(%struct.mesh_area* %0, %struct.mesh_state* %1, %struct.comm_point* %2) #0 {
  %4 = alloca %struct.mesh_area*, align 8
  %5 = alloca %struct.mesh_state*, align 8
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.mesh_reply*, align 8
  %8 = alloca %struct.mesh_reply*, align 8
  store %struct.mesh_area* %0, %struct.mesh_area** %4, align 8
  store %struct.mesh_state* %1, %struct.mesh_state** %5, align 8
  store %struct.comm_point* %2, %struct.comm_point** %6, align 8
  store %struct.mesh_reply* null, %struct.mesh_reply** %8, align 8
  %9 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %10 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %9, i32 0, i32 1
  %11 = load %struct.mesh_reply*, %struct.mesh_reply** %10, align 8
  store %struct.mesh_reply* %11, %struct.mesh_reply** %7, align 8
  %12 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %13 = icmp ne %struct.mesh_reply* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %96

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %49, %41, %15
  %17 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %18 = icmp ne %struct.mesh_reply* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %21 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.comm_point*, %struct.comm_point** %22, align 8
  %24 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %25 = icmp eq %struct.comm_point* %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.mesh_reply*, %struct.mesh_reply** %8, align 8
  %28 = icmp ne %struct.mesh_reply* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %31 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %30, i32 0, i32 0
  %32 = load %struct.mesh_reply*, %struct.mesh_reply** %31, align 8
  %33 = load %struct.mesh_reply*, %struct.mesh_reply** %8, align 8
  %34 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %33, i32 0, i32 0
  store %struct.mesh_reply* %32, %struct.mesh_reply** %34, align 8
  br label %41

35:                                               ; preds = %26
  %36 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %37 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %36, i32 0, i32 0
  %38 = load %struct.mesh_reply*, %struct.mesh_reply** %37, align 8
  %39 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %40 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %39, i32 0, i32 1
  store %struct.mesh_reply* %38, %struct.mesh_reply** %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %43 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %47 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %46, i32 0, i32 0
  %48 = load %struct.mesh_reply*, %struct.mesh_reply** %47, align 8
  store %struct.mesh_reply* %48, %struct.mesh_reply** %7, align 8
  br label %16

49:                                               ; preds = %19
  %50 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  store %struct.mesh_reply* %50, %struct.mesh_reply** %8, align 8
  %51 = load %struct.mesh_reply*, %struct.mesh_reply** %7, align 8
  %52 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %51, i32 0, i32 0
  %53 = load %struct.mesh_reply*, %struct.mesh_reply** %52, align 8
  store %struct.mesh_reply* %53, %struct.mesh_reply** %7, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %56 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %55, i32 0, i32 1
  %57 = load %struct.mesh_reply*, %struct.mesh_reply** %56, align 8
  %58 = icmp ne %struct.mesh_reply* %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %54
  %60 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %61 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %66 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %72 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %64, %59, %54
  %76 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %77 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %76, i32 0, i32 1
  %78 = load %struct.mesh_reply*, %struct.mesh_reply** %77, align 8
  %79 = icmp ne %struct.mesh_reply* %78, null
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %82 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %87 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @log_assert(i32 %90)
  %92 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %93 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %14, %85, %80, %75
  ret void
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
