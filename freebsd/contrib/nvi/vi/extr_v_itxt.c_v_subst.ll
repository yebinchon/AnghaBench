; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__, %struct.TYPE_15__, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@SM_CHANGE = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@TXT_EMARK = common dso_local global i32 0, align 4
@TXT_OVERWRITE = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@VC_BUFFER = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_subst(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = call i32 @set_txt_std(%struct.TYPE_17__* %10, %struct.TYPE_16__* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @SM_CHANGE, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @db_eget(%struct.TYPE_17__* %16, i32 %20, i32** %9, i64* %6, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %115

27:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  %28 = load i32, i32* @TXT_APPENDEOL, align 4
  %29 = call i32 @LF_SET(i32 %28)
  br label %41

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @TXT_APPENDEOL, align 4
  %35 = call i32 @LF_SET(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @TXT_EMARK, align 4
  %38 = load i32, i32* @TXT_OVERWRITE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @LF_SET(i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load i32, i32* @VC_C1SET, align 4
  %55 = call i64 @F_ISSET(%struct.TYPE_16__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  br label %63

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62, %57
  %64 = phi i32 [ %61, %57 ], [ 0, %62 ]
  %65 = sext i32 %64 to i64
  %66 = add i64 %52, %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %74, 1
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %78, 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %63
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = load i32, i32* @VC_BUFFER, align 4
  %90 = call i64 @F_ISSET(%struct.TYPE_16__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  br label %96

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i32* [ %94, %92 ], [ null, %95 ]
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = call i64 @cut(%struct.TYPE_17__* %87, i32* %97, %struct.TYPE_15__* %99, %struct.TYPE_18__* %101, i32 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %115

105:                                              ; preds = %96, %83
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @OOBLNO, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @v_txt(%struct.TYPE_17__* %106, %struct.TYPE_16__* %107, %struct.TYPE_18__* %109, i32* %110, i64 %111, i32 0, i32 %112, i32 1, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %105, %104, %26
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @set_txt_std(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @db_eget(%struct.TYPE_17__*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @cut(%struct.TYPE_17__*, i32*, %struct.TYPE_15__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @v_txt(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
