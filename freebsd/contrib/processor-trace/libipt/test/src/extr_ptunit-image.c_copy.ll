; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, i32 }
%struct.ptunit_result = type { i32 }

@__const.copy.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.copy.buffer to i8*), i64 12, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 2
  %12 = call i32 @pt_image_copy(i32* %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ptu_int_eq(i32 %13, i32 0)
  store i32 -1, i32* %6, align 4
  %15 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %15, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %18 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @pt_image_read(i32* %16, i32* %6, i32* %17, i32 2, i32* %21, i32 8195)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ptu_int_eq(i32 %23, i32 2)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ptu_int_eq(i32 %25, i32 11)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_uint_eq(i32 %28, i32 3)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ptu_uint_eq(i32 %31, i32 4)
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ptu_uint_eq(i32 %34, i32 204)
  %36 = call i32 (...) @ptu_passed()
  %37 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_copy(i32*, i32*) #2

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
