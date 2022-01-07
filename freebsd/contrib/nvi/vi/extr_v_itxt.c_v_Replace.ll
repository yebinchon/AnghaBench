; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_Replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_Replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }

@SM_REPLACE = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@TXT_OVERWRITE = common dso_local global i32 0, align 4
@TXT_REPLACE = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_Replace(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = call i32 @set_txt_std(%struct.TYPE_15__* %10, %struct.TYPE_14__* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @SM_REPLACE, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @db_eget(%struct.TYPE_15__* %16, i32 %20, i32** %9, i64* %6, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %80

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
  %37 = load i32, i32* @TXT_OVERWRITE, align 4
  %38 = load i32, i32* @TXT_REPLACE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @LF_SET(i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, 1
  br label %55

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i64 [ %53, %51 ], [ 0, %54 ]
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @OOBLNO, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = load i32, i32* @VC_C1SET, align 4
  %69 = call i64 @F_ISSET(%struct.TYPE_14__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  br label %76

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 1, %75 ]
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @v_txt(%struct.TYPE_15__* %60, %struct.TYPE_14__* %61, %struct.TYPE_16__* %63, i32* %64, i64 %65, i32 0, i32 %66, i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %26
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @set_txt_std(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @db_eget(%struct.TYPE_15__*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i32 @v_txt(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
