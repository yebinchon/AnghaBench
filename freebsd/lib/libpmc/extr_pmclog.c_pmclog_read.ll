; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_pmclog.c_pmclog_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_pmclog.c_pmclog_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmclog_ev = type { i64 }
%struct.pmclog_parse_state = type { i64, i64, i32, i32, i32 }

@PL_STATE_ERROR = common dso_local global i64 0, align 8
@PMCLOG_ERROR = common dso_local global i8* null, align 8
@PMCLOG_REQUIRE_DATA = common dso_local global i64 0, align 8
@PMCLOG_FD_NONE = common dso_local global i32 0, align 4
@PMCLOG_BUFFER_SIZE = common dso_local global i32 0, align 4
@PMCLOG_EOF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmclog_read(i8* %0, %struct.pmclog_ev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmclog_ev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pmclog_parse_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pmclog_ev* %1, %struct.pmclog_ev** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pmclog_parse_state*
  store %struct.pmclog_parse_state* %10, %struct.pmclog_parse_state** %8, align 8
  %11 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %12 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PL_STATE_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8*, i8** @PMCLOG_ERROR, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.pmclog_ev*, %struct.pmclog_ev** %5, align 8
  %20 = getelementptr inbounds %struct.pmclog_ev, %struct.pmclog_ev* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  store i32 -1, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %23 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %21
  %27 = load i64, i64* @PMCLOG_REQUIRE_DATA, align 8
  %28 = load %struct.pmclog_ev*, %struct.pmclog_ev** %5, align 8
  %29 = getelementptr inbounds %struct.pmclog_ev, %struct.pmclog_ev* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %31 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PMCLOG_FD_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %103, %35
  %37 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %38 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %41 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PMCLOG_BUFFER_SIZE, align 4
  %44 = call i64 @read(i32 %39, i32 %42, i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* @PMCLOG_EOF, align 8
  %52 = load %struct.pmclog_ev*, %struct.pmclog_ev** %5, align 8
  %53 = getelementptr inbounds %struct.pmclog_ev, %struct.pmclog_ev* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %64

54:                                               ; preds = %47
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EAGAIN, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** @PMCLOG_ERROR, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.pmclog_ev*, %struct.pmclog_ev** %5, align 8
  %62 = getelementptr inbounds %struct.pmclog_ev, %struct.pmclog_ev* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %50
  store i32 -1, i32* %3, align 4
  br label %112

65:                                               ; preds = %36
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %68 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %70 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %73 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %75

74:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %112

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %21
  %77 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %78 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %84 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %85 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %84, i32 0, i32 3
  %86 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %87 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %86, i32 0, i32 1
  %88 = load %struct.pmclog_ev*, %struct.pmclog_ev** %5, align 8
  %89 = call i32 @pmclog_get_event(%struct.pmclog_parse_state* %83, i32* %85, i64* %87, %struct.pmclog_ev* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %76
  %93 = load %struct.pmclog_ev*, %struct.pmclog_ev** %5, align 8
  %94 = getelementptr inbounds %struct.pmclog_ev, %struct.pmclog_ev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PMCLOG_REQUIRE_DATA, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %100 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %8, align 8
  %105 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  br label %36

110:                                              ; preds = %98, %92, %76
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %74, %64, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @read(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmclog_get_event(%struct.pmclog_parse_state*, i32*, i64*, %struct.pmclog_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
