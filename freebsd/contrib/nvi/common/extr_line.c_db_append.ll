; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_line.c_db_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)* }
%struct.TYPE_21__ = type { i64*, i32 }

@EXM_NOFILEYET = common dso_local global i32 0, align 4
@R_IAFTER = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"004|unable to append to line %lu\00", align 1
@OOBLNO = common dso_local global i64 0, align 8
@F_FIRSTMODIFY = common dso_local global i32 0, align 4
@F_MODIFIED = common dso_local global i32 0, align 4
@LOG_LINE_APPEND = common dso_local global i32 0, align 4
@LINE_INSERT = common dso_local global i32 0, align 4
@LINE_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_append(%struct.TYPE_19__* %0, i32 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %14, align 8
  %21 = icmp eq %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = load i32, i32* @EXM_NOFILEYET, align 4
  %25 = call i32 @ex_emsg(%struct.TYPE_19__* %23, i32* null, i32 %24)
  store i32 1, i32* %6, align 4
  br label %124

26:                                               ; preds = %5
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @INT2FILE(%struct.TYPE_19__* %27, i32* %28, i64 %29, i8* %30, i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store i64* %9, i64** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  store i32 8, i32* %34, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = bitcast i8* %35 to i64*
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i64* %36, i64** %37, align 8
  %38 = load i64, i64* %16, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)** %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = load i32, i32* @R_IAFTER, align 4
  %50 = call i32 %45(%struct.TYPE_22__* %48, %struct.TYPE_21__* %13, %struct.TYPE_21__* %12, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %26
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = load i32, i32* @M_SYSERR, align 4
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @msgq(%struct.TYPE_19__* %53, i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 1, i32* %6, align 4
  br label %124

58:                                               ; preds = %26
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* @OOBLNO, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OOBLNO, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %81 = load i32, i32* @F_FIRSTMODIFY, align 4
  %82 = call i64 @F_ISSET(%struct.TYPE_20__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = call i32 @rcv_init(%struct.TYPE_19__* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %89 = load i32, i32* @F_MODIFIED, align 4
  %90 = call i32 @F_SET(%struct.TYPE_20__* %88, i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, 1
  %94 = load i32, i32* @LOG_LINE_APPEND, align 4
  %95 = call i32 @log_line(%struct.TYPE_19__* %91, i64 %93, i32 %94)
  store i32 0, i32* %17, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = load i32, i32* @LINE_INSERT, align 4
  %98 = load i64, i64* %9, align 8
  %99 = add nsw i64 %98, 1
  %100 = call i64 @mark_insdel(%struct.TYPE_19__* %96, i32 %97, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %102, %87
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = load i32, i32* @LINE_INSERT, align 4
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, 1
  %108 = call i64 @ex_g_insdel(%struct.TYPE_19__* %104, i32 %105, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 1, i32* %17, align 4
  br label %111

111:                                              ; preds = %110, %103
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* @LINE_APPEND, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i64 @scr_update(%struct.TYPE_19__* %112, i64 %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi i1 [ true, %111 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %52, %22
  %125 = load i32, i32* %6, align 4
  ret i32 %125
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
