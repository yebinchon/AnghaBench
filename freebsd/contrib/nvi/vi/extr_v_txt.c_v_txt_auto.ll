; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_v_txt_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_v_txt_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32*, i32 }

@DBG_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_txt_auto(i32* %0, i64 %1, %struct.TYPE_4__* %2, i64 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %6, align 4
  br label %108

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @DBG_FATAL, align 4
  %27 = call i64 @db_get(i32* %24, i64 %25, i32 %26, i32** %14, i64* %10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %108

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %14, align 8
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i32*, i32** %14, align 8
  store i32* %36, i32** %13, align 8
  br label %37

37:                                               ; preds = %47, %35
  %38 = load i64, i64* %10, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @isblank(i32 %42) #3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %52

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %13, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %10, align 8
  br label %37

52:                                               ; preds = %45, %37
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  store i64 %58, i64* %12, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %108

61:                                               ; preds = %52
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @BINC_RETW(i32* %62, i32* %65, i32 %68, i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %61
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @MEMMOVE(i32* %85, i32* %88, i64 %91)
  br label %93

93:                                               ; preds = %80, %61
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @MEMMOVE(i32* %101, i32* %102, i64 %103)
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %93, %60, %29, %20
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @db_get(i32*, i64, i32, i32**, i64*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isblank(i32) #2

declare dso_local i32 @BINC_RETW(i32*, i32*, i32, i32) #1

declare dso_local i32 @MEMMOVE(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
