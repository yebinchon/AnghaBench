; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_add_cached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_add_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32, i32* }
%struct.ptunit_result = type { i32 }

@__const.add_cached.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @add_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cached(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %8 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x i32]* @__const.add_cached.buffer to i8*), i64 12, i1 false)
  %9 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i32 @ifix_cache_section(%struct.image_fixture* %9, i32* %13, i32 4096)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ptu_int_gt(i32 %15, i32 0)
  %17 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %17, i32 0, i32 1
  %19 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %19, i32 0, i32 2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i32 @pt_image_add_cached(i32* %18, i32* %20, i32 %21, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ptu_int_eq(i32 %27, i32 0)
  store i32 -1, i32* %7, align 4
  %29 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %29, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %32 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %33 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @pt_image_read(i32* %30, i32* %7, i32* %31, i32 2, i32* %35, i32 4099)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ptu_int_eq(i32 %37, i32 2)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ptu_int_eq(i32 %39, i32 %40)
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ptu_uint_eq(i32 %43, i32 3)
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ptu_uint_eq(i32 %46, i32 4)
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ptu_uint_eq(i32 %49, i32 204)
  %51 = call i32 (...) @ptu_passed()
  %52 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ifix_cache_section(%struct.image_fixture*, i32*, i32) #2

declare dso_local i32 @ptu_int_gt(i32, i32) #2

declare dso_local i32 @pt_image_add_cached(i32*, i32*, i32, i32*) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
