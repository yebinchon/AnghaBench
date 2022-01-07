; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_sfix_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_sfix_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i8*, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ptunit_result = type { i32 }

@ptunit_thrd_fini = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @sfix_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfix_fini(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %8 = load i32, i32* @ptunit_thrd_fini, align 4
  %9 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %9, i32 0, i32 1
  %11 = call i32 @ptu_test(i32 %8, %struct.TYPE_2__* %10)
  %12 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @pt_section_put(i32* %19)
  %21 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %4, align 8
  %27 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  %30 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %30, i32 0, i32 0
  store i8* null, i8** %31, align 8
  %32 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %33 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %23
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @remove(i8* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** %4, align 8
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %36, %23
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @fclose(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @remove(i8* %58)
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %57, %54
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %66 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %72 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ptu_int_eq(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %63

83:                                               ; preds = %63
  %84 = call i32 (...) @ptu_passed()
  %85 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  ret i32 %87
}

declare dso_local i32 @ptu_test(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @pt_section_put(i32*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
