; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* }
%struct.TYPE_19__ = type { i64*, i32 }

@EXM_NOFILEYET = common dso_local global i32 0, align 4
@LINE_DELETE = common dso_local global i32 0, align 4
@LOG_LINE_DELETE = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"003|unable to delete line %lu\00", align 1
@OOBLNO = common dso_local global i64 0, align 8
@F_FIRSTMODIFY = common dso_local global i32 0, align 4
@F_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_delete(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %7, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = load i32, i32* @EXM_NOFILEYET, align 4
  %15 = call i32 @ex_emsg(%struct.TYPE_17__* %13, i32* null, i32 %14)
  store i32 1, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = load i32, i32* @LINE_DELETE, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @mark_insdel(%struct.TYPE_17__* %17, i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %90

23:                                               ; preds = %16
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load i32, i32* @LINE_DELETE, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @ex_g_insdel(%struct.TYPE_17__* %24, i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %90

30:                                               ; preds = %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @LOG_LINE_DELETE, align 4
  %34 = call i32 @log_line(%struct.TYPE_17__* %31, i64 %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i64* %5, i64** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 8, i32* %36, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %40, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = call i32 %41(%struct.TYPE_20__* %44, %struct.TYPE_19__* %6, i32 0)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %30
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = load i32, i32* @M_SYSERR, align 4
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @msgq(%struct.TYPE_17__* %48, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 1, i32* %3, align 4
  br label %90

53:                                               ; preds = %30
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @OOBLNO, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OOBLNO, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %76 = load i32, i32* @F_FIRSTMODIFY, align 4
  %77 = call i64 @F_ISSET(%struct.TYPE_18__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = call i32 @rcv_init(%struct.TYPE_17__* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = load i32, i32* @F_MODIFIED, align 4
  %85 = call i32 @F_SET(%struct.TYPE_18__* %83, i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* @LINE_DELETE, align 4
  %89 = call i32 @scr_update(%struct.TYPE_17__* %86, i64 %87, i32 %88, i32 1)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %82, %47, %29, %22, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ex_emsg(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @mark_insdel(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @ex_g_insdel(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @log_line(%struct.TYPE_17__*, i64, i32) #1

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
