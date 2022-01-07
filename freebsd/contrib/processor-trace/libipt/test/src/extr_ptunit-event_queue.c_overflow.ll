; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evq_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@evq_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evq_fixture*, i32, i64)* @overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overflow(%struct.evq_fixture* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.evq_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pt_event*, align 8
  %12 = alloca i64, align 8
  store %struct.evq_fixture* %0, %struct.evq_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @evq_max, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.pt_event*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @evq_max, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca %struct.pt_event*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @evq_max, align 4
  %22 = sub nsw i32 %21, 2
  %23 = call i32 @ptu_uint_le(i64 %20, i32 %22)
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %41, %3
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* @evq_max, align 4
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %32 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.pt_event* @pt_evq_enqueue(i32* %32, i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %16, i64 %35
  store %struct.pt_event* %34, %struct.pt_event** %36, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %16, i64 %37
  %39 = load %struct.pt_event*, %struct.pt_event** %38, align 8
  %40 = call i32 @ptu_ptr(%struct.pt_event* %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %24

44:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %51 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.pt_event* @pt_evq_enqueue(i32* %51, i32 %52)
  store %struct.pt_event* %53, %struct.pt_event** %11, align 8
  %54 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %55 = call i32 @ptu_null(%struct.pt_event* %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %45

59:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %66 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call %struct.pt_event* @pt_evq_dequeue(i32* %66, i32 %67)
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %19, i64 %69
  store %struct.pt_event* %68, %struct.pt_event** %70, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %19, i64 %71
  %73 = load %struct.pt_event*, %struct.pt_event** %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %16, i64 %74
  %76 = load %struct.pt_event*, %struct.pt_event** %75, align 8
  %77 = call i32 @ptu_ptr_eq(%struct.pt_event* %73, %struct.pt_event* %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %60

81:                                               ; preds = %60
  %82 = call i32 (...) @ptu_passed()
  %83 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ptu_uint_le(i64, i32) #2

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #2

declare dso_local i32 @ptu_ptr(%struct.pt_event*) #2

declare dso_local i32 @ptu_null(%struct.pt_event*) #2

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #2

declare dso_local i32 @ptu_ptr_eq(%struct.pt_event*, %struct.pt_event*) #2

declare dso_local i32 @ptu_passed(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
