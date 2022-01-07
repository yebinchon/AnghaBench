; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64*, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)* }
%struct.TYPE_17__ = type { i64*, i32 }
%struct.TYPE_14__ = type { i64 }

@EXM_NOFILEYET = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@SC_TINPUT = common dso_local global i32 0, align 4
@_texth = common dso_local global i32 0, align 4
@R_LAST = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"007|unable to get last line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_last(%struct.TYPE_15__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = load i32, i32* @EXM_NOFILEYET, align 4
  %19 = call i32 @ex_emsg(%struct.TYPE_15__* %17, i32* null, i32 %18)
  store i32 1, i32* %3, align 4
  br label %160

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OOBLNO, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = load i32, i32* @SC_TINPUT, align 4
  %33 = call i64 @F_ISSET(%struct.TYPE_15__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @_texth, align 4
  %40 = call i64 @TAILQ_LAST(i32 %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_14__*
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @TAILQ_FIRST(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_14__*
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %43, %50
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %35, %26
  store i32 0, i32* %3, align 4
  br label %160

56:                                               ; preds = %20
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i64* %9, i64** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i32 8, i32* %58, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = load i32, i32* @R_LAST, align 4
  %68 = call i32 %63(%struct.TYPE_18__* %66, %struct.TYPE_17__* %7, %struct.TYPE_17__* %6, i32 %67)
  switch i32 %68, label %77 [
    i32 -1, label %69
    i32 1, label %75
  ]

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = load i32, i32* @M_SYSERR, align 4
  %73 = call i32 @msgq(%struct.TYPE_15__* %71, i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %74 = load i64*, i64** %5, align 8
  store i64 0, i64* %74, align 8
  store i32 1, i32* %3, align 4
  br label %160

75:                                               ; preds = %56
  %76 = load i64*, i64** %5, align 8
  store i64 0, i64* %76, align 8
  store i32 0, i32* %3, align 4
  br label %160

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @memcpy(i64* %9, i64* %79, i32 8)
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %77
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @FILE2INT(%struct.TYPE_15__* %87, i64* %89, i32 %91, i64* %92, i64 %93)
  %95 = load i64*, i64** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = icmp ne i64* %95, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %86
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @BINC_GOTOW(%struct.TYPE_15__* %100, i64* %103, i32 %106, i64 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = load i64*, i64** %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @MEMCPY(i64* %111, i64* %112, i64 %113)
  br label %120

115:                                              ; preds = %86
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store i64* %117, i64** %119, align 8
  br label %120

120:                                              ; preds = %115, %99
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %77
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = load i32, i32* @SC_TINPUT, align 4
  %133 = call i64 @F_ISSET(%struct.TYPE_15__* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %127
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @_texth, align 4
  %140 = call i64 @TAILQ_LAST(i32 %138, i32 %139)
  %141 = inttoptr i64 %140 to %struct.TYPE_14__*
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %135
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @_texth, align 4
  %151 = call i64 @TAILQ_LAST(i32 %149, i32 %150)
  %152 = inttoptr i64 %151 to %struct.TYPE_14__*
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  br label %157

155:                                              ; preds = %135, %127
  %156 = load i64, i64* %9, align 8
  br label %157

157:                                              ; preds = %155, %146
  %158 = phi i64 [ %154, %146 ], [ %156, %155 ]
  %159 = load i64*, i64** %5, align 8
  store i64 %158, i64* %159, align 8
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %75, %70, %55, %16
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ex_emsg(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @TAILQ_LAST(i32, i32) #1

declare dso_local i64 @TAILQ_FIRST(i32) #1

declare dso_local i32 @msgq(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @FILE2INT(%struct.TYPE_15__*, i64*, i32, i64*, i64) #1

declare dso_local i32 @BINC_GOTOW(%struct.TYPE_15__*, i64*, i32, i64) #1

declare dso_local i32 @MEMCPY(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
