; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_area = type { i32, i32, %struct.TYPE_3__, i64, i64, i64, i64, i64, i64, i32, i32, %struct.module_env*, %struct.module_stack, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.module_stack = type { i32 }
%struct.module_env = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"mesh area alloc: out of memory\00", align 1
@mesh_state_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mesh_area* @mesh_create(%struct.module_stack* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.mesh_area*, align 8
  %4 = alloca %struct.module_stack*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.mesh_area*, align 8
  store %struct.module_stack* %0, %struct.module_stack** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  %7 = call %struct.mesh_area* @calloc(i32 1, i32 104)
  store %struct.mesh_area* %7, %struct.mesh_area** %6, align 8
  %8 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %9 = icmp ne %struct.mesh_area* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.mesh_area* null, %struct.mesh_area** %3, align 8
  br label %102

12:                                               ; preds = %2
  %13 = call i32 (...) @timehist_setup()
  %14 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %15 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %14, i32 0, i32 14
  store i32 %13, i32* %15, align 8
  %16 = load %struct.module_env*, %struct.module_env** %5, align 8
  %17 = getelementptr inbounds %struct.module_env, %struct.module_env* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sldns_buffer_new(i32 %20)
  %22 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %23 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %25 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %30 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %12
  %34 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %35 = call i32 @free(%struct.mesh_area* %34)
  %36 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.mesh_area* null, %struct.mesh_area** %3, align 8
  br label %102

37:                                               ; preds = %28
  %38 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %39 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %38, i32 0, i32 12
  %40 = load %struct.module_stack*, %struct.module_stack** %4, align 8
  %41 = bitcast %struct.module_stack* %39 to i8*
  %42 = bitcast %struct.module_stack* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.module_env*, %struct.module_env** %5, align 8
  %44 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %45 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %44, i32 0, i32 11
  store %struct.module_env* %43, %struct.module_env** %45, align 8
  %46 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %47 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %46, i32 0, i32 10
  %48 = call i32 @rbtree_init(i32* %47, i32* @mesh_state_compare)
  %49 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %50 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %49, i32 0, i32 9
  %51 = call i32 @rbtree_init(i32* %50, i32* @mesh_state_compare)
  %52 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %53 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %55 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %57 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %59 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %61 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %63 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.module_env*, %struct.module_env** %5, align 8
  %65 = getelementptr inbounds %struct.module_env, %struct.module_env* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %70 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %72 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  %75 = sdiv i32 %74, 2
  %76 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %77 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.module_env*, %struct.module_env** %5, align 8
  %79 = getelementptr inbounds %struct.module_env, %struct.module_env* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 1000
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %87 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.module_env*, %struct.module_env** %5, align 8
  %90 = getelementptr inbounds %struct.module_env, %struct.module_env* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %93, 1000
  %95 = mul nsw i32 %94, 1000
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  %99 = getelementptr inbounds %struct.mesh_area, %struct.mesh_area* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.mesh_area*, %struct.mesh_area** %6, align 8
  store %struct.mesh_area* %101, %struct.mesh_area** %3, align 8
  br label %102

102:                                              ; preds = %37, %33, %10
  %103 = load %struct.mesh_area*, %struct.mesh_area** %3, align 8
  ret %struct.mesh_area* %103
}

declare dso_local %struct.mesh_area* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @timehist_setup(...) #1

declare dso_local i32 @sldns_buffer_new(i32) #1

declare dso_local i32 @free(%struct.mesh_area*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rbtree_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
