; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32)* }
%struct.TYPE_19__ = type { i64*, i32 }

@EXM_NOFILEYET = common dso_local global i32 0, align 4
@LOG_LINE_RESET_B = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"006|unable to store line %lu\00", align 1
@OOBLNO = common dso_local global i64 0, align 8
@F_FIRSTMODIFY = common dso_local global i32 0, align 4
@F_MODIFIED = common dso_local global i32 0, align 4
@LOG_LINE_RESET_F = common dso_local global i32 0, align 4
@LINE_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_set(%struct.TYPE_17__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %12, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = load i32, i32* @EXM_NOFILEYET, align 4
  %22 = call i32 @ex_emsg(%struct.TYPE_17__* %20, i32* null, i32 %21)
  store i32 1, i32* %5, align 4
  br label %88

23:                                               ; preds = %4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @LOG_LINE_RESET_B, align 4
  %27 = call i32 @log_line(%struct.TYPE_17__* %24, i64 %25, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @INT2FILE(%struct.TYPE_17__* %28, i32* %29, i64 %30, i8* %31, i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i64* %7, i64** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 8, i32* %35, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = bitcast i8* %36 to i64*
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i64* %37, i64** %38, align 8
  %39 = load i64, i64* %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32)** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = call i32 %46(%struct.TYPE_20__* %49, %struct.TYPE_19__* %11, %struct.TYPE_19__* %10, i32 0)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %23
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = load i32, i32* @M_SYSERR, align 4
  %55 = load i64, i64* %7, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @msgq(%struct.TYPE_17__* %53, i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 1, i32* %5, align 4
  br label %88

58:                                               ; preds = %23
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* @OOBLNO, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %70 = load i32, i32* @F_FIRSTMODIFY, align 4
  %71 = call i64 @F_ISSET(%struct.TYPE_18__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = call i32 @rcv_init(%struct.TYPE_17__* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %78 = load i32, i32* @F_MODIFIED, align 4
  %79 = call i32 @F_SET(%struct.TYPE_18__* %77, i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @LOG_LINE_RESET_F, align 4
  %83 = call i32 @log_line(%struct.TYPE_17__* %80, i64 %81, i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* @LINE_RESET, align 4
  %87 = call i32 @scr_update(%struct.TYPE_17__* %84, i64 %85, i32 %86, i32 1)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %76, %52, %19
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @ex_emsg(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @log_line(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @INT2FILE(%struct.TYPE_17__*, i32*, i64, i8*, i64) #1

declare dso_local i32 @msgq(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @rcv_init(%struct.TYPE_17__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @scr_update(%struct.TYPE_17__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
