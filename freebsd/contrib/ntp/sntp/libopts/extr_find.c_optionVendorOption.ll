; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_find.c_optionVendorOption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_find.c_optionVendorOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_17__*, i32)*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i32 }

@PRESET = common dso_local global i32 0, align 4
@OPTPROC_EMIT_LIMIT = common dso_local global %struct.TYPE_17__* null, align 8
@OPTST_RESET = common dso_local global i32 0, align 4
@OPTPROC_IMMEDIATE = common dso_local global i32 0, align 4
@OPTST_DEFINED = common dso_local global i32 0, align 4
@OPTPROC_VENDOR_OPT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zIllVendOptStr = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionVendorOption(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %7 = load i32, i32* @PRESET, align 4
  %8 = call i32 @OPTSTATE_INITIALIZER(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** @OPTPROC_EMIT_LIMIT, align 8
  %16 = icmp ule %struct.TYPE_17__* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %100

18:                                               ; preds = %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OPTST_RESET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %100

26:                                               ; preds = %18
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OPTPROC_IMMEDIATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @OPTST_DEFINED, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @OPTPROC_VENDOR_OPT, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @opt_find_long(%struct.TYPE_17__* %44, i8* %45, %struct.TYPE_18__* %5)
  %47 = call i32 @SUCCESSFUL(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = call i32 @get_opt_arg(%struct.TYPE_17__* %50, %struct.TYPE_18__* %5)
  %52 = call i32 @SUCCESSFUL(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %49, %43, %36
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @zIllVendOptStr, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @fprintf(i32 %55, i8* %56, i32 %59, i8* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  %67 = call i32 %64(%struct.TYPE_17__* %65, i32 %66)
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 @_exit(i32 %68) #3
  unreachable

70:                                               ; preds = %49
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @OPTPROC_IMMEDIATE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @DO_IMMEDIATELY(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %84 = call i32 @handle_opt(%struct.TYPE_17__* %83, %struct.TYPE_18__* %5)
  br label %85

85:                                               ; preds = %82, %77
  br label %100

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @DO_NORMALLY(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @DO_SECOND_TIME(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = call i32 @handle_opt(%struct.TYPE_17__* %97, %struct.TYPE_18__* %5)
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %17, %25, %99, %85
  ret void
}

declare dso_local i32 @OPTSTATE_INITIALIZER(i32) #1

declare dso_local i32 @SUCCESSFUL(i32) #1

declare dso_local i32 @opt_find_long(%struct.TYPE_17__*, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @get_opt_arg(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @DO_IMMEDIATELY(i32) #1

declare dso_local i32 @handle_opt(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @DO_NORMALLY(i32) #1

declare dso_local i64 @DO_SECOND_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
