; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_all_by_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_remove_all_by_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.ptunit_result = type { i32 }

@__const.remove_all_by_filename.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@.str = private unnamed_addr constant [10 x i8] c"same-name\00", align 1
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @remove_all_by_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_all_by_filename(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.remove_all_by_filename.buffer to i8*), i64 12, i1 false)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %18, i32 0, i32 1
  %20 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @pt_image_add(i32* %19, %struct.TYPE_4__* %23, i32* %27, i32 4096, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %31, i32 0, i32 1
  %33 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @pt_image_add(i32* %32, %struct.TYPE_4__* %36, i32* %40, i32 8192, i32 2)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  store i32 -1, i32* %6, align 4
  %44 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %44, i32 0, i32 1
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %47 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %48 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @pt_image_read(i32* %45, i32* %6, i32* %46, i32 2, i32* %50, i32 4097)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_eq(i32 %52, i32 2)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 1)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ptu_uint_eq(i32 %57, i32 1)
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_uint_eq(i32 %60, i32 2)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ptu_uint_eq(i32 %63, i32 204)
  %65 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %66 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %65, i32 0, i32 1
  %67 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %68 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @pt_image_remove_by_filename(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ptu_int_eq(i32 %72, i32 2)
  %74 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %75 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ptu_int_ne(i32 %79, i32 0)
  %81 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %82 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ptu_int_ne(i32 %86, i32 0)
  store i32 -1, i32* %6, align 4
  %88 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %89 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %88, i32 0, i32 1
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %91 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %92 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = call i32 @pt_image_read(i32* %89, i32* %6, i32* %90, i32 12, i32* %94, i32 4099)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @pte_nomap, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @ptu_int_eq(i32 %96, i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ptu_int_eq(i32 %100, i32 -1)
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ptu_uint_eq(i32 %103, i32 1)
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ptu_uint_eq(i32 %106, i32 2)
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ptu_uint_eq(i32 %109, i32 204)
  store i32 -1, i32* %6, align 4
  %111 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %112 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %111, i32 0, i32 1
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %114 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %115 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = call i32 @pt_image_read(i32* %112, i32* %6, i32* %113, i32 12, i32* %117, i32 8195)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @pte_nomap, align 4
  %121 = sub nsw i32 0, %120
  %122 = call i32 @ptu_int_eq(i32 %119, i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @ptu_int_eq(i32 %123, i32 -1)
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ptu_uint_eq(i32 %126, i32 1)
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ptu_uint_eq(i32 %129, i32 2)
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ptu_uint_eq(i32 %132, i32 204)
  %134 = call i32 (...) @ptu_passed()
  %135 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_image_add(i32*, %struct.TYPE_4__*, i32*, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_image_remove_by_filename(i32*, i8*, i32*) #2

declare dso_local i32 @ptu_int_ne(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
