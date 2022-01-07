; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_curword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_curword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i8*, i32 }

@DBG_FATAL = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"212|Cursor not in a word\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_curword(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DBG_FATAL, align 4
  %15 = call i64 @db_get(%struct.TYPE_11__* %10, i32 %13, i32 %14, i32** %9, i64* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %104

18:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %36, %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ISSPACE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %22
  %34 = phi i1 [ false, %22 ], [ %32, %26 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %22

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load i32, i32* @M_BERR, align 4
  %46 = call i32 @msgq(%struct.TYPE_11__* %44, i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %104

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32 @vs_refresh(%struct.TYPE_11__* %54, i32 0)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %72, %56
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @inword(i32 %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %63, %58
  %71 = phi i1 [ false, %58 ], [ %69, %63 ]
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  br label %58

73:                                               ; preds = %70
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call %struct.TYPE_10__* @VIP(%struct.TYPE_11__* %74)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %7, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  %90 = call i32 @BINC_RETW(%struct.TYPE_11__* %81, i8* %84, i32 %87, i64 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @MEMMOVE(i8* %93, i32* %96, i64 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 0, i8* %103, align 1
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %73, %43, %17
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @db_get(%struct.TYPE_11__*, i32, i32, i32**, i64*) #1

declare dso_local i64 @ISSPACE(i32) #1

declare dso_local i32 @msgq(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @vs_refresh(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @inword(i32) #1

declare dso_local %struct.TYPE_10__* @VIP(%struct.TYPE_11__*) #1

declare dso_local i32 @BINC_RETW(%struct.TYPE_11__*, i8*, i32, i64) #1

declare dso_local i32 @MEMMOVE(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
