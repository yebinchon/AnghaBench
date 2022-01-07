; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@TXT_ADDNEWLINE = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@SM_INSERT = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOG_CORRECT = common dso_local global i32 0, align 4
@O_cmd = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = load i32, i32* @TXT_ADDNEWLINE, align 4
  %16 = load i32, i32* @TXT_APPENDEOL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @set_txt_std(%struct.TYPE_15__* %13, %struct.TYPE_14__* %14, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @SM_INSERT, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = call i64 @db_last(%struct.TYPE_15__* %27, i64* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %115

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %38

35:                                               ; preds = %31
  store i32* null, i32** %12, align 8
  store i64 0, i64* %10, align 8
  %36 = load i64, i64* @OOBLNO, align 8
  store i64 %36, i64* %8, align 8
  br label %96

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %34
  %39 = call i32* @L(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %39, i32** %12, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @LOG_CORRECT, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @O_cmd, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @db_insert(%struct.TYPE_15__* %47, i32 %50, i32* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %115

55:                                               ; preds = %46
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DBG_FATAL, align 4
  %61 = call i64 @db_get(%struct.TYPE_15__* %56, i32 %59, i32 %60, i32** %12, i64* %10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %115

64:                                               ; preds = %55
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %8, align 8
  br label %95

70:                                               ; preds = %38
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i64 @db_append(%struct.TYPE_15__* %71, i32 1, i32 %74, i32* %75, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %115

79:                                               ; preds = %70
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @DBG_FATAL, align 4
  %86 = call i64 @db_get(%struct.TYPE_15__* %80, i32 %84, i32 %85, i32** %12, i64* %10)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %115

89:                                               ; preds = %79
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %8, align 8
  br label %95

95:                                               ; preds = %89, %64
  br label %96

96:                                               ; preds = %95, %35
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = load i32, i32* @VC_C1SET, align 4
  %104 = call i64 @F_ISSET(%struct.TYPE_14__* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %111

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i32 [ %109, %106 ], [ 1, %110 ]
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @v_txt(%struct.TYPE_15__* %97, %struct.TYPE_14__* %98, i32* null, i32* %99, i64 %100, i32 0, i64 %101, i32 %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %88, %78, %63, %54, %30
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @set_txt_std(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @db_last(%struct.TYPE_15__*, i64*) #1

declare dso_local i32* @L(i8*) #1

declare dso_local i64 @db_insert(%struct.TYPE_15__*, i32, i32*, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_15__*, i32, i32, i32**, i64*) #1

declare dso_local i64 @db_append(%struct.TYPE_15__*, i32, i32, i32*, i32) #1

declare dso_local i32 @v_txt(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32*, i64, i32, i64, i32, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
