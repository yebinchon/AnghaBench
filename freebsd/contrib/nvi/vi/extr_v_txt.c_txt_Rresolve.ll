; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_Rresolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_Rresolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i32, i64 }

@q = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@DBG_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*, i64)* @txt_Rresolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txt_Rresolve(i32* %0, i32* %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %99

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %46, %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = icmp eq %struct.TYPE_6__* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  br label %37

29:                                               ; preds = %21
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i64 [ %28, %25 ], [ %36, %29 ]
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = load i32, i32* @q, align 4
  %43 = call %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__* %41, i32 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %9, align 8
  %44 = icmp eq %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %47

46:                                               ; preds = %37
  br label %21

47:                                               ; preds = %45
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %55, %56
  %58 = call i64 @MIN(i64 %54, i64 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DBG_FATAL, align 4
  %65 = load i32, i32* @DBG_NOCACHE, align 4
  %66 = or i32 %64, %65
  %67 = call i64 @db_get(i32* %59, i32 %63, i32 %66, i32** %12, i32* null)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %99

70:                                               ; preds = %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @MEMCPY(i64 %77, i32* %80, i64 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %85, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %94
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %17, %69, %70, %47
  ret void
}

declare dso_local %struct.TYPE_6__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @MEMCPY(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
