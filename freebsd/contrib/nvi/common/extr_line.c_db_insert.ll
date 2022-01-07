; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)* }
%struct.TYPE_21__ = type { i64*, i32 }

@EXM_NOFILEYET = common dso_local global i32 0, align 4
@R_IBEFORE = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"005|unable to insert at line %lu\00", align 1
@OOBLNO = common dso_local global i64 0, align 8
@F_FIRSTMODIFY = common dso_local global i32 0, align 4
@F_MODIFIED = common dso_local global i32 0, align 4
@LOG_LINE_INSERT = common dso_local global i32 0, align 4
@LINE_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_insert(%struct.TYPE_19__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %12, align 8
  %19 = icmp eq %struct.TYPE_20__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = load i32, i32* @EXM_NOFILEYET, align 4
  %23 = call i32 @ex_emsg(%struct.TYPE_19__* %21, i32* null, i32 %22)
  store i32 1, i32* %5, align 4
  br label %118

24:                                               ; preds = %4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @INT2FILE(%struct.TYPE_19__* %25, i32* %26, i64 %27, i8* %28, i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i64* %7, i64** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store i32 8, i32* %32, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = bitcast i8* %33 to i64*
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i64* %34, i64** %35, align 8
  %36 = load i64, i64* %14, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)** %42, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = load i32, i32* @R_IBEFORE, align 4
  %48 = call i32 %43(%struct.TYPE_22__* %46, %struct.TYPE_21__* %11, %struct.TYPE_21__* %10, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %24
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = load i32, i32* @M_SYSERR, align 4
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @msgq(%struct.TYPE_19__* %51, i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 1, i32* %5, align 4
  br label %118

56:                                               ; preds = %24
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* @OOBLNO, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @OOBLNO, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %66
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %79 = load i32, i32* @F_FIRSTMODIFY, align 4
  %80 = call i64 @F_ISSET(%struct.TYPE_20__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = call i32 @rcv_init(%struct.TYPE_19__* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %87 = load i32, i32* @F_MODIFIED, align 4
  %88 = call i32 @F_SET(%struct.TYPE_20__* %86, i32 %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* @LOG_LINE_INSERT, align 4
  %92 = call i32 @log_line(%struct.TYPE_19__* %89, i64 %90, i32 %91)
  store i32 0, i32* %15, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = load i32, i32* @LINE_INSERT, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @mark_insdel(%struct.TYPE_19__* %93, i32 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = load i32, i32* @LINE_INSERT, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @ex_g_insdel(%struct.TYPE_19__* %100, i32 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 1, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %99
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i32, i32* @LINE_INSERT, align 4
  %110 = call i64 @scr_update(%struct.TYPE_19__* %107, i64 %108, i32 %109, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %112, %106
  %116 = phi i1 [ true, %106 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %50, %20
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ex_emsg(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @INT2FILE(%struct.TYPE_19__*, i32*, i64, i8*, i64) #1

declare dso_local i32 @msgq(%struct.TYPE_19__*, i32, i8*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @rcv_init(%struct.TYPE_19__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @log_line(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i64 @mark_insdel(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i64 @ex_g_insdel(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i64 @scr_update(%struct.TYPE_19__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
