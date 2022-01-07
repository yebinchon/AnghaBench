; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_reset.c_optionResetOpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_reset.c_optionResetOpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i32)*, i32, i32, i32* }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_21__ = type { i32 }

@optionResetOpt.reset_active = internal global i32 0, align 4
@DEFINED = common dso_local global i32 0, align 4
@OPTPROC_EMIT_LIMIT = common dso_local global %struct.TYPE_20__* null, align 8
@zno_reset = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@zreset_arg = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@zIllOptChr = common dso_local global i8* null, align 8
@zIllOptStr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionResetOpt(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %8 = load i32, i32* @DEFINED, align 4
  %9 = call i32 @OPTSTATE_INITIALIZER(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** @OPTPROC_EMIT_LIMIT, align 8
  %17 = icmp ule %struct.TYPE_20__* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %133

19:                                               ; preds = %2
  %20 = load i32, i32* @optionResetOpt.reset_active, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %133

23:                                               ; preds = %19
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = call i32 @HAS_originalOptArgArray(%struct.TYPE_20__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @zno_reset, align 4
  %34 = call i32 @ao_bug(i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @NUL, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %38, %35
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @zreset_arg, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %46, i8* %47, i32 %50, i8* %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 %57(%struct.TYPE_20__* %58, i32 %59)
  %61 = call i32 @assert(i32 0)
  br label %62

62:                                               ; preds = %45, %38
  store i32 1, i32* @optionResetOpt.reset_active, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @NUL, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 42
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = call i32 @optionResetEverything(%struct.TYPE_20__* %76)
  store i32 0, i32* @optionResetOpt.reset_active, align 4
  br label %133

78:                                               ; preds = %70
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 @opt_find_short(%struct.TYPE_20__* %79, i32 %82, %struct.TYPE_21__* %5)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @SUCCESSFUL(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** @zIllOptChr, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %88, i8* %89, i32 %92, i32 %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  %102 = call i32 %99(%struct.TYPE_20__* %100, i32 %101)
  %103 = call i32 @assert(i32 0)
  br label %104

104:                                              ; preds = %87, %78
  br label %128

105:                                              ; preds = %62
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @opt_find_long(%struct.TYPE_20__* %106, i8* %107, %struct.TYPE_21__* %5)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @SUCCESSFUL(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** @zIllOptStr, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %113, i8* %114, i32 %117, i8* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  %125 = call i32 %122(%struct.TYPE_20__* %123, i32 %124)
  %126 = call i32 @assert(i32 0)
  br label %127

127:                                              ; preds = %112, %105
  br label %128

128:                                              ; preds = %127, %104
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @optionReset(%struct.TYPE_20__* %129, i32 %131)
  store i32 0, i32* @optionResetOpt.reset_active, align 4
  br label %133

133:                                              ; preds = %128, %75, %22, %18
  ret void
}

declare dso_local i32 @OPTSTATE_INITIALIZER(i32) #1

declare dso_local i32 @HAS_originalOptArgArray(%struct.TYPE_20__*) #1

declare dso_local i32 @ao_bug(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @optionResetEverything(%struct.TYPE_20__*) #1

declare dso_local i32 @opt_find_short(%struct.TYPE_20__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @SUCCESSFUL(i32) #1

declare dso_local i32 @opt_find_long(%struct.TYPE_20__*, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @optionReset(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
