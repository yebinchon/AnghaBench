; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_make_new_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_make_new_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { i64, i64, i32*, i32, i32, %struct.TYPE_6__*, %struct.mesh_state* }
%struct.TYPE_6__ = type { i32 }
%struct.mesh_state = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.timeval = type { i32 }

@mesh_jostle_list = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"query jostled out to make space for a new one\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"notify supers of failure\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_make_new_space(%struct.mesh_area* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mesh_area*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mesh_state*, align 8
  %7 = alloca %struct.timeval, align 4
  store %struct.mesh_area* %0, %struct.mesh_area** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %9 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %8, i32 0, i32 6
  %10 = load %struct.mesh_state*, %struct.mesh_state** %9, align 8
  store %struct.mesh_state* %10, %struct.mesh_state** %6, align 8
  %11 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %12 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %15 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %112

19:                                               ; preds = %2
  %20 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %21 = icmp ne %struct.mesh_state* %20, null
  br i1 %21, label %22, label %111

22:                                               ; preds = %19
  %23 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %24 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %29 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @mesh_jostle_list, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %27
  %34 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %35 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %40 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @timeval_subtract(%struct.timeval* %7, i32 %38, i32* %42)
  %44 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %45 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %44, i32 0, i32 4
  %46 = call i64 @timeval_smaller(i32* %45, %struct.timeval* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %33
  %49 = load i32, i32* @VERB_ALGO, align 4
  %50 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %51 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %56 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %61 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @log_nametypeclass(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %59, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %48
  %69 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %70 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @sldns_buffer_copy(i32* %71, i32* %72)
  br label %74

74:                                               ; preds = %68, %48
  %75 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %76 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i32, i32* @VERB_ALGO, align 4
  %82 = call i32 @verbose(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %84 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %87 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %88 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %91 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %92 = call i32 @mesh_walk_supers(%struct.mesh_area* %90, %struct.mesh_state* %91)
  br label %93

93:                                               ; preds = %80, %74
  %94 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %95 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %99 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %98, i32 0, i32 1
  %100 = call i32 @mesh_state_delete(%struct.TYPE_10__* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.mesh_area*, %struct.mesh_area** %4, align 8
  %106 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @sldns_buffer_copy(i32* %104, i32* %107)
  br label %109

109:                                              ; preds = %103, %93
  store i32 1, i32* %3, align 4
  br label %112

110:                                              ; preds = %33
  br label %111

111:                                              ; preds = %110, %27, %22, %19
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %109, %18
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @timeval_subtract(%struct.timeval*, i32, i32*) #1

declare dso_local i64 @timeval_smaller(i32*, %struct.timeval*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sldns_buffer_copy(i32*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @mesh_walk_supers(%struct.mesh_area*, %struct.mesh_state*) #1

declare dso_local i32 @mesh_state_delete(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
