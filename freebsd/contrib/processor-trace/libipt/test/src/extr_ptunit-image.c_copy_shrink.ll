; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_shrink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32, i32* }
%struct.ptunit_result = type { i32 }

@__const.copy_shrink.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @copy_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_shrink(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.copy_shrink.buffer to i8*), i64 12, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i32 @pt_image_add(i32* %9, i32* %13, i32* %17, i32 8192, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 1
  %23 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %23, i32 0, i32 2
  %25 = call i32 @pt_image_copy(i32* %22, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ptu_int_eq(i32 %26, i32 0)
  store i32 -1, i32* %6, align 4
  %28 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %28, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32 @pt_image_read(i32* %29, i32* %6, i32* %30, i32 2, i32* %34, i32 8195)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ptu_int_eq(i32 %36, i32 2)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ptu_int_eq(i32 %38, i32 11)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ptu_uint_eq(i32 %41, i32 3)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ptu_uint_eq(i32 %44, i32 4)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptu_uint_eq(i32 %47, i32 204)
  %49 = call i32 (...) @ptu_passed()
  %50 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_add(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @pt_image_copy(i32*, i32*) #2

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
