; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { %struct.TYPE_2__*, i64, i32, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"file-0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"file-1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"file-2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @ifix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifix_init(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %5 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %5, i32 0, i32 7
  %7 = call i32 @pt_image_init(i32* %6, i32* null)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 6
  %10 = call i32 @pt_image_init(i32* %9, i32* null)
  %11 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @memset(i32* %13, i32 0, i32 8)
  %15 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 8)
  %19 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %23, i32 0, i32 2
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %29 = call i32 @ifix_add_section(%struct.image_fixture* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ptu_int_eq(i32 %30, i32 0)
  %32 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %33 = call i32 @ifix_add_section(%struct.image_fixture* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ptu_int_eq(i32 %34, i32 1)
  %36 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %37 = call i32 @ifix_add_section(%struct.image_fixture* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ptu_int_eq(i32 %38, i32 2)
  %40 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %41 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = call i32 @pt_asid_init(%struct.TYPE_2__* %43)
  %45 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 40960, i32* %49, align 4
  %50 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %51 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = call i32 @pt_asid_init(%struct.TYPE_2__* %53)
  %55 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %56 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 45056, i32* %59, align 4
  %60 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %61 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 2
  %64 = call i32 @pt_asid_init(%struct.TYPE_2__* %63)
  %65 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %66 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 49152, i32* %69, align 4
  %70 = call i32 (...) @ptu_passed()
  %71 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  ret i32 %73
}

declare dso_local i32 @pt_image_init(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ifix_add_section(%struct.image_fixture*, i8*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_asid_init(%struct.TYPE_2__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
