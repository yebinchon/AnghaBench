; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_rfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_rfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32*, i32 }
%struct.ptunit_result = type { i32 }

@ifix_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @rfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfix_init(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %5 = load i32, i32* @ifix_init, align 4
  %6 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %7 = call i32 @ptu_check(i32 %5, %struct.image_fixture* %6)
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 2
  %10 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pt_image_add(i32* %9, i32* %13, i32* %17, i32 4096, i32 10)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %21, i32 0, i32 2
  %23 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @pt_image_add(i32* %22, i32* %26, i32* %30, i32 8192, i32 11)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ptu_int_eq(i32 %32, i32 0)
  %34 = call i32 (...) @ptu_passed()
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @ptu_check(i32, %struct.image_fixture*) #1

declare dso_local i32 @pt_image_add(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
