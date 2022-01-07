; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_run_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_run_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.run = type { i32, i32, i32, i32*, i64, i32, i64, i32*, i64, i32, i32, i64, i32 }

@RUN_HOW = common dso_local global i32 0, align 4
@RUN_SOME_BYTES = common dso_local global i32 0, align 4
@RUN_FIXED_BYTES = common dso_local global i32 0, align 4
@RUN_NOTES = common dso_local global i32 0, align 4
@RUN_LARGE_NUMBER = common dso_local global i32 0, align 4
@RUN_OTHER_NUMBERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_marshal(%struct.evbuffer* %0, %struct.run* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.run* %1, %struct.run** %4, align 8
  %7 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %8 = load i32, i32* @RUN_HOW, align 4
  %9 = load %struct.run*, %struct.run** %4, align 8
  %10 = getelementptr inbounds %struct.run, %struct.run* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @evtag_marshal_string(%struct.evbuffer* %7, i32 %8, i32 %11)
  %13 = load %struct.run*, %struct.run** %4, align 8
  %14 = getelementptr inbounds %struct.run, %struct.run* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %19 = load i32, i32* @RUN_SOME_BYTES, align 4
  %20 = load %struct.run*, %struct.run** %4, align 8
  %21 = getelementptr inbounds %struct.run, %struct.run* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.run*, %struct.run** %4, align 8
  %24 = getelementptr inbounds %struct.run, %struct.run* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @evtag_marshal(%struct.evbuffer* %18, i32 %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %29 = load i32, i32* @RUN_FIXED_BYTES, align 4
  %30 = load %struct.run*, %struct.run** %4, align 8
  %31 = getelementptr inbounds %struct.run, %struct.run* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @evtag_marshal(%struct.evbuffer* %28, i32 %29, i32 %32, i32 24)
  %34 = load %struct.run*, %struct.run** %4, align 8
  %35 = getelementptr inbounds %struct.run, %struct.run* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.run*, %struct.run** %4, align 8
  %42 = getelementptr inbounds %struct.run, %struct.run* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %47 = load i32, i32* @RUN_NOTES, align 4
  %48 = load %struct.run*, %struct.run** %4, align 8
  %49 = getelementptr inbounds %struct.run, %struct.run* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @evtag_marshal_string(%struct.evbuffer* %46, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.run*, %struct.run** %4, align 8
  %62 = getelementptr inbounds %struct.run, %struct.run* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %67 = load i32, i32* @RUN_LARGE_NUMBER, align 4
  %68 = load %struct.run*, %struct.run** %4, align 8
  %69 = getelementptr inbounds %struct.run, %struct.run* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @evtag_marshal_int64(%struct.evbuffer* %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.run*, %struct.run** %4, align 8
  %74 = getelementptr inbounds %struct.run, %struct.run* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.run*, %struct.run** %4, align 8
  %81 = getelementptr inbounds %struct.run, %struct.run* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %86 = load i32, i32* @RUN_OTHER_NUMBERS, align 4
  %87 = load %struct.run*, %struct.run** %4, align 8
  %88 = getelementptr inbounds %struct.run, %struct.run* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @evtag_marshal_int(%struct.evbuffer* %85, i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %78

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %72
  ret void
}

declare dso_local i32 @evtag_marshal_string(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @evtag_marshal(%struct.evbuffer*, i32, i32, i32) #1

declare dso_local i32 @evtag_marshal_int64(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @evtag_marshal_int(%struct.evbuffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
