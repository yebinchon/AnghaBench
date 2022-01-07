; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.TYPE_9__, %struct.mesh_cb*, %struct.mesh_reply*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32*, i32** }
%struct.TYPE_8__ = type { i32, %struct.mesh_area* }
%struct.mesh_area = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.mesh_cb = type { i32, i32 (i32, i32, i32*, i32, i32*, i32)*, %struct.mesh_cb* }
%struct.mesh_reply = type { i32, %struct.mesh_reply* }

@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@sec_status_unchecked = common dso_local global i32 0, align 4
@module_finished = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_state_cleanup(%struct.mesh_state* %0) #0 {
  %2 = alloca %struct.mesh_state*, align 8
  %3 = alloca %struct.mesh_area*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mesh_reply*, align 8
  %6 = alloca %struct.mesh_cb*, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %2, align 8
  %7 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %8 = icmp ne %struct.mesh_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %138

10:                                               ; preds = %1
  %11 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %12 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.mesh_area*, %struct.mesh_area** %15, align 8
  store %struct.mesh_area* %16, %struct.mesh_area** %3, align 8
  %17 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %18 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %10
  %22 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %23 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %22, i32 0, i32 2
  %24 = load %struct.mesh_reply*, %struct.mesh_reply** %23, align 8
  store %struct.mesh_reply* %24, %struct.mesh_reply** %5, align 8
  %25 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %26 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %25, i32 0, i32 2
  store %struct.mesh_reply* null, %struct.mesh_reply** %26, align 8
  br label %27

27:                                               ; preds = %38, %21
  %28 = load %struct.mesh_reply*, %struct.mesh_reply** %5, align 8
  %29 = icmp ne %struct.mesh_reply* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.mesh_reply*, %struct.mesh_reply** %5, align 8
  %32 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %31, i32 0, i32 0
  %33 = call i32 @comm_point_drop_reply(i32* %32)
  %34 = load %struct.mesh_area*, %struct.mesh_area** %3, align 8
  %35 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load %struct.mesh_reply*, %struct.mesh_reply** %5, align 8
  %40 = getelementptr inbounds %struct.mesh_reply, %struct.mesh_reply* %39, i32 0, i32 1
  %41 = load %struct.mesh_reply*, %struct.mesh_reply** %40, align 8
  store %struct.mesh_reply* %41, %struct.mesh_reply** %5, align 8
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %48, %42
  %44 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %45 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %44, i32 0, i32 1
  %46 = load %struct.mesh_cb*, %struct.mesh_cb** %45, align 8
  store %struct.mesh_cb* %46, %struct.mesh_cb** %6, align 8
  %47 = icmp ne %struct.mesh_cb* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %50 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %49, i32 0, i32 2
  %51 = load %struct.mesh_cb*, %struct.mesh_cb** %50, align 8
  %52 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %53 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %52, i32 0, i32 1
  store %struct.mesh_cb* %51, %struct.mesh_cb** %53, align 8
  %54 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %55 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %54, i32 0, i32 1
  %56 = load i32 (i32, i32, i32*, i32, i32*, i32)*, i32 (i32, i32, i32*, i32, i32*, i32)** %55, align 8
  %57 = call i32 @fptr_whitelist_mesh_cb(i32 (i32, i32, i32*, i32, i32*, i32)* %56)
  %58 = call i32 @fptr_ok(i32 %57)
  %59 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %60 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %59, i32 0, i32 1
  %61 = load i32 (i32, i32, i32*, i32, i32*, i32)*, i32 (i32, i32, i32*, i32, i32*, i32)** %60, align 8
  %62 = load %struct.mesh_cb*, %struct.mesh_cb** %6, align 8
  %63 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %66 = load i32, i32* @sec_status_unchecked, align 4
  %67 = call i32 %61(i32 %64, i32 %65, i32* null, i32 %66, i32* null, i32 0)
  %68 = load %struct.mesh_area*, %struct.mesh_area** %3, align 8
  %69 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  br label %43

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %72, %10
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %123, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.mesh_area*, %struct.mesh_area** %3, align 8
  %77 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %126

81:                                               ; preds = %74
  %82 = load %struct.mesh_area*, %struct.mesh_area** %3, align 8
  %83 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %90, align 8
  %92 = call i32 @fptr_whitelist_mod_clear(i32 (%struct.TYPE_9__*, i32)* %91)
  %93 = call i32 @fptr_ok(i32 %92)
  %94 = load %struct.mesh_area*, %struct.mesh_area** %3, align 8
  %95 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %102, align 8
  %104 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %105 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %104, i32 0, i32 0
  %106 = load i32, i32* %4, align 4
  %107 = call i32 %103(%struct.TYPE_9__* %105, i32 %106)
  %108 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %109 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* null, i32** %114, align 8
  %115 = load i32, i32* @module_finished, align 4
  %116 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %117 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %115, i32* %122, align 4
  br label %123

123:                                              ; preds = %81
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %74

126:                                              ; preds = %74
  %127 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %128 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %134 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @alloc_reg_release(i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %126, %9
  ret void
}

declare dso_local i32 @comm_point_drop_reply(i32*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_mesh_cb(i32 (i32, i32, i32*, i32, i32*, i32)*) #1

declare dso_local i32 @fptr_whitelist_mod_clear(i32 (%struct.TYPE_9__*, i32)*) #1

declare dso_local i32 @alloc_reg_release(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
