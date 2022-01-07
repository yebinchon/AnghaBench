; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_same_different_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_same_different_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ptunit_result = type { i32 }

@__const.same_different_offset.buffer = private unnamed_addr constant [2 x i32] [i32 204, i32 204], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @same_different_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_different_offset(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %9 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([2 x i32]* @__const.same_different_offset.buffer to i8*), i64 8, i1 false)
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ifix_add_section(%struct.image_fixture* %10, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ptu_int_gt(i32 %18, i32 0)
  %20 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 16
  %27 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 %26, i64* %33, align 8
  %34 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %43 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ptu_uint_eq(i32 %41, i32 %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %74, %1
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %52 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %50, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %49
  %61 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %62 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 16
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %79 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %78, i32 0, i32 1
  %80 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %81 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 0
  %84 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %85 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = call i32 @pt_image_add(i32* %79, %struct.TYPE_4__* %83, i32* %87, i32 4096, i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ptu_int_eq(i32 %89, i32 0)
  %91 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %92 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %91, i32 0, i32 1
  %93 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %94 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %100 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = call i32 @pt_image_add(i32* %92, %struct.TYPE_4__* %98, i32* %102, i32 4096, i32 0)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @ptu_int_eq(i32 %104, i32 0)
  store i32 -1, i32* %7, align 4
  %106 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %107 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %106, i32 0, i32 1
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %109 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %110 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = call i32 @pt_image_read(i32* %107, i32* %7, i32* %108, i32 1, i32* %112, i32 4096)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @ptu_int_eq(i32 %114, i32 1)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @ptu_int_eq(i32 %116, i32 0)
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ptu_uint_eq(i32 %119, i32 16)
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ptu_uint_eq(i32 %122, i32 204)
  store i32 -1, i32* %7, align 4
  %124 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %125 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %124, i32 0, i32 1
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %127 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %128 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @pt_image_read(i32* %125, i32* %7, i32* %126, i32 1, i32* %130, i32 4111)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ptu_int_eq(i32 %132, i32 1)
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ptu_int_eq(i32 %134, i32 0)
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ptu_uint_eq(i32 %137, i32 31)
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ptu_uint_eq(i32 %140, i32 204)
  %142 = call i32 (...) @ptu_passed()
  %143 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ifix_add_section(%struct.image_fixture*, i32) #2

declare dso_local i32 @ptu_int_gt(i32, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @pt_image_add(i32*, %struct.TYPE_4__*, i32*, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
