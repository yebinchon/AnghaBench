; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_log.c_log_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_log.c_log_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_21__*, i64*, i32, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)* }
%struct.TYPE_20__ = type { i32, i64* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@F_NOLOG = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@LOG_CURSOR_INIT = common dso_local global i32 0, align 4
@LOG_MARK = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_mark(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %13 = load i32, i32* @F_NOLOG, align 4
  %14 = call i64 @F_ISSET(%struct.TYPE_19__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OOBLNO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = load i32, i32* @LOG_CURSOR_INIT, align 4
  %27 = call i64 @log_cursor1(%struct.TYPE_17__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %83

30:                                               ; preds = %24
  %31 = load i64, i64* @OOBLNO, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %17
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @BINC_RETC(%struct.TYPE_17__* %36, i64* %39, i32 %42, i32 16)
  %44 = load i64, i64* @LOG_MARK, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 %44, i64* %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = call i32 @memmove(i64* %52, %struct.TYPE_18__* %53, i32 12)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i64* %56, i64** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i64* %61, i64** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 16, i32* %63, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)** %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = call i32 %68(%struct.TYPE_21__* %71, %struct.TYPE_20__* %7, %struct.TYPE_20__* %6, i32 0)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %35
  %75 = load i32, i32* @LOG_ERR, align 4
  br label %76

76:                                               ; preds = %74, %35
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %76, %29, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @F_ISSET(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @log_cursor1(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @BINC_RETC(%struct.TYPE_17__*, i64*, i32, i32) #1

declare dso_local i32 @memmove(i64*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
