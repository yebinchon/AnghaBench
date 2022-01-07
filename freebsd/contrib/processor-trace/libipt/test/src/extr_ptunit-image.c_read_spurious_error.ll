; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_read_spurious_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_read_spurious_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.read_spurious_error.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@pte_nosync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @read_spurious_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_spurious_error(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.read_spurious_error.buffer to i8*), i64 8, i1 false)
  store i32 -1, i32* %6, align 4
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %11 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @pt_image_read(i32* %9, i32* %6, i32* %10, i32 1, i32* %14, i32 4096)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 1)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ptu_int_eq(i32 %18, i32 10)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ptu_uint_eq(i32 %21, i32 0)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_uint_eq(i32 %24, i32 204)
  %26 = load i32, i32* @pte_nosync, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  store i32 -1, i32* %6, align 4
  %33 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %33, i32 0, i32 1
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %36 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @pt_image_read(i32* %34, i32* %6, i32* %35, i32 1, i32* %39, i32 4101)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @pte_nosync, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @ptu_int_eq(i32 %41, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ptu_int_eq(i32 %45, i32 10)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ptu_uint_eq(i32 %48, i32 0)
  %50 = call i32 (...) @ptu_passed()
  %51 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
