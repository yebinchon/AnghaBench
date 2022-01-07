; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_none_by_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_none_by_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@__const.remove_none_by_filename.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@.str = private unnamed_addr constant [9 x i8] c"bad-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @remove_none_by_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_none_by_filename(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.remove_none_by_filename.buffer to i8*), i64 12, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 1
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i32 @pt_image_remove_by_filename(i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ptu_int_eq(i32 %15, i32 0)
  %17 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ptu_int_eq(i32 %22, i32 0)
  %24 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  store i32 -1, i32* %6, align 4
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %34 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @pt_image_read(i32* %32, i32* %6, i32* %33, i32 2, i32* %37, i32 4099)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ptu_int_eq(i32 %39, i32 2)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ptu_int_eq(i32 %41, i32 10)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ptu_uint_eq(i32 %44, i32 3)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptu_uint_eq(i32 %47, i32 4)
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ptu_uint_eq(i32 %50, i32 204)
  store i32 -1, i32* %6, align 4
  %52 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %52, i32 0, i32 1
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %55 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %56 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = call i32 @pt_image_read(i32* %53, i32* %6, i32* %54, i32 2, i32* %58, i32 8193)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ptu_int_eq(i32 %60, i32 2)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ptu_int_eq(i32 %62, i32 11)
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ptu_uint_eq(i32 %65, i32 1)
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ptu_uint_eq(i32 %68, i32 2)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ptu_uint_eq(i32 %71, i32 204)
  %73 = call i32 (...) @ptu_passed()
  %74 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_remove_by_filename(i32*, i8*, i32*) #2

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
