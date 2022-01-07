; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_cfix_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_cfix_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_4__**, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ptunit_result = type { i32 }

@ptunit_thrd_fini = common dso_local global i32 0, align 4
@num_sections = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @cfix_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfix_fini(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load i32, i32* @ptunit_thrd_fini, align 4
  %7 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %7, i32 0, i32 2
  %9 = call i32 @ptu_test(i32 %6, %struct.TYPE_3__* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ptu_int_eq(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %32 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %31, i32 0, i32 1
  %33 = call i32 @pt_iscache_fini(i32* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %89, %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @num_sections, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %40 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptu_int_eq(i32 %47, i32 1)
  %49 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %50 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ptu_int_eq(i32 %57, i32 0)
  %59 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %60 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ptu_int_eq(i32 %67, i32 0)
  %69 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %70 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ptu_null(i32 %77)
  %79 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %80 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @pt_section_put(%struct.TYPE_4__* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ptu_int_eq(i32 %87, i32 0)
  br label %89

89:                                               ; preds = %38
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %34

92:                                               ; preds = %34
  %93 = call i32 (...) @ptu_passed()
  %94 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  ret i32 %96
}

declare dso_local i32 @ptu_test(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_iscache_fini(i32*) #1

declare dso_local i32 @ptu_null(i32) #1

declare dso_local i32 @pt_section_put(%struct.TYPE_4__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
