; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_find_asid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_find_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32*, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @find_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_asid(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca %struct.pt_mapped_section, align 4
  %5 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %6 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %6, i32 0, i32 2
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @pt_image_add(i32* %7, i32* %11, i32* %15, i32 4096, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ptu_int_eq(i32 %17, i32 0)
  %19 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %19, i32 0, i32 2
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32 @pt_image_add(i32* %20, i32* %24, i32* %28, i32 4104, i32 2)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ptu_int_eq(i32 %30, i32 0)
  %32 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %33 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %32, i32 0, i32 2
  %34 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @pt_image_find(i32* %33, %struct.pt_mapped_section* %4, i32* %37, i32 4105)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ptu_int_eq(i32 %39, i32 1)
  %41 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %44 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @ptu_ptr_eq(i32 %42, i32* %46)
  %48 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ptu_uint_eq(i32 %49, i32 4096)
  %51 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pt_section_put(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 0)
  %56 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %57 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %56, i32 0, i32 2
  %58 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %59 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = call i32 @pt_image_find(i32* %57, %struct.pt_mapped_section* %4, i32* %61, i32 4105)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ptu_int_eq(i32 %63, i32 2)
  %65 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %68 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @ptu_ptr_eq(i32 %66, i32* %70)
  %72 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %4, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ptu_uint_eq(i32 %73, i32 4104)
  %75 = getelementptr inbounds %struct.pt_mapped_section, %struct.pt_mapped_section* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pt_section_put(i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ptu_int_eq(i32 %78, i32 0)
  %80 = call i32 (...) @ptu_passed()
  %81 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  ret i32 %83
}

declare dso_local i32 @pt_image_add(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_image_find(i32*, %struct.pt_mapped_section*, i32*, i32) #1

declare dso_local i32 @ptu_ptr_eq(i32, i32*) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @pt_section_put(i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
