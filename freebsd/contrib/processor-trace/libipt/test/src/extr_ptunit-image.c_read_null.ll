; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_read_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_read_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32, i32* }
%struct.ptunit_result = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @read_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_null(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %7 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = call i32 @pt_image_read(i32* null, i32* %6, i32* %4, i32 1, i32* %10, i32 4096)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @ptu_int_eq(i32 %12, i32 %14)
  %16 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %16, i32 0, i32 0
  %18 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @pt_image_read(i32* %17, i32* null, i32* %4, i32 1, i32* %21, i32 4096)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @pte_internal, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @ptu_int_eq(i32 %23, i32 %25)
  %27 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 0
  %29 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @pt_image_read(i32* %28, i32* %6, i32* null, i32 1, i32* %32, i32 4096)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @pte_internal, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @ptu_int_eq(i32 %34, i32 %36)
  %38 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %38, i32 0, i32 0
  %40 = call i32 @pt_image_read(i32* %39, i32* %6, i32* %4, i32 1, i32* null, i32 4096)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @pte_internal, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @ptu_int_eq(i32 %41, i32 %43)
  %45 = call i32 (...) @ptu_passed()
  %46 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

declare dso_local i32 @pt_image_read(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
