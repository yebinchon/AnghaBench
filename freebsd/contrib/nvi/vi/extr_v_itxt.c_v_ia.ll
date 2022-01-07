; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_ia.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_v_ia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@SM_APPEND = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_ia(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = call i32 @set_txt_std(%struct.TYPE_14__* %10, %struct.TYPE_13__* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @SM_APPEND, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @db_eget(%struct.TYPE_14__* %22, i32 %25, i32** %9, i64* %6, i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %82

32:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  %33 = load i32, i32* @TXT_APPENDEOL, align 4
  %34 = call i32 @LF_SET(i32 %33)
  br label %63

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @TXT_APPENDEOL, align 4
  %52 = call i32 @LF_SET(i32 %51)
  br label %58

53:                                               ; preds = %38
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %46
  br label %62

59:                                               ; preds = %35
  %60 = load i32, i32* @TXT_APPENDEOL, align 4
  %61 = call i32 @LF_SET(i32 %60)
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* @OOBLNO, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = load i32, i32* @VC_C1SET, align 4
  %71 = call i64 @F_ISSET(%struct.TYPE_13__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ %76, %73 ], [ 1, %77 ]
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @v_txt(%struct.TYPE_14__* %64, %struct.TYPE_13__* %65, i32* null, i32* %66, i64 %67, i32 0, i32 %68, i32 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %31
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @set_txt_std(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @db_eget(%struct.TYPE_14__*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i32 @v_txt(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
