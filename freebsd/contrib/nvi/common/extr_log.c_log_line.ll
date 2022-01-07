; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_log.c_log_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_log.c_log_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, i32, i32, %struct.TYPE_20__*, i32, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32)* }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i64 }

@F_NOLOG = common dso_local global i32 0, align 4
@F_UNDO = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@LOG_CURSOR_INIT = common dso_local global i32 0, align 4
@DBG_NOCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DBG_FATAL = common dso_local global i32 0, align 4
@CHAR_T_OFFSET = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_line(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %10, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %18 = load i32, i32* @F_NOLOG, align 4
  %19 = call i64 @F_ISSET(%struct.TYPE_18__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %140

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %24 = load i32, i32* @F_UNDO, align 4
  %25 = call i32 @F_CLR(%struct.TYPE_18__* %23, i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OOBLNO, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load i32, i32* @LOG_CURSOR_INIT, align 4
  %35 = call i64 @log_cursor1(%struct.TYPE_17__* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %140

38:                                               ; preds = %32
  %39 = load i64, i64* @OOBLNO, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %22
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DBG_NOCACHE, align 4
  %50 = call i64 @db_get(%struct.TYPE_17__* %47, i32 %48, i32 %49, i32** %12, i64* %11)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @db_err(%struct.TYPE_17__* %56, i32 %57)
  store i32 1, i32* %4, align 4
  br label %140

59:                                               ; preds = %52
  store i64 0, i64* %11, align 8
  %60 = call i32* @L(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %60, i32** %12, align 8
  br label %61

61:                                               ; preds = %59, %46
  br label %70

62:                                               ; preds = %43
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DBG_FATAL, align 4
  %66 = call i64 @db_get(%struct.TYPE_17__* %63, i32 %64, i32 %65, i32** %12, i64* %11)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %140

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %61
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = mul i64 %78, 4
  %80 = load i32, i32* @CHAR_T_OFFSET, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %79, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @BINC_RETC(%struct.TYPE_17__* %71, i32* %74, i32 %77, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = call i32 @memmove(i32* %93, i32* %6, i64 4)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @CHAR_T_OFFSET, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32*, i32** %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = mul i64 %102, 4
  %104 = call i32 @memmove(i32* %100, i32* %101, i64 %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %13, align 4
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i32* %13, i32** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 4, i32* %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32* %112, i32** %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = mul i64 %114, 4
  %116 = load i32, i32* @CHAR_T_OFFSET, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %115, %117
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32)** %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = call i32 %125(%struct.TYPE_20__* %128, %struct.TYPE_19__* %9, %struct.TYPE_19__* %8, i32 0)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %70
  %132 = load i32, i32* @LOG_ERR, align 4
  br label %133

133:                                              ; preds = %131, %70
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %133, %68, %55, %37, %21
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @log_cursor1(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_17__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @db_err(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @L(i8*) #1

declare dso_local i32 @BINC_RETC(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
