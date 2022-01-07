; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32 }
%struct.ptunit_result = type { i32 }

@__const.read_callback.memory = private unnamed_addr constant [4 x i32] [i32 221, i32 1, i32 2, i32 221], align 16
@__const.read_callback.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@image_readmem_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_callback(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %8 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i32]* @__const.read_callback.memory to i8*), i64 16, i1 false)
  %9 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([3 x i32]* @__const.read_callback.buffer to i8*), i64 12, i1 false)
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 1
  %12 = load i32, i32* @image_readmem_callback, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %14 = call i32 @pt_image_set_callback(i32* %11, i32 %12, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ptu_int_eq(i32 %15, i32 0)
  store i32 -1, i32* %7, align 4
  %17 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %17, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %20 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @pt_image_read(i32* %18, i32* %7, i32* %19, i32 2, i32* %23, i32 12289)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ptu_int_eq(i32 %25, i32 2)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ptu_int_eq(i32 %27, i32 0)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ptu_uint_eq(i32 %30, i32 1)
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ptu_uint_eq(i32 %33, i32 2)
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ptu_uint_eq(i32 %36, i32 204)
  %38 = call i32 (...) @ptu_passed()
  %39 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_set_callback(i32*, i32, i32*) #2

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
