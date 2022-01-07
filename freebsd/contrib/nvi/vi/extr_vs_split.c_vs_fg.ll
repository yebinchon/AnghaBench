; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_split.c_vs_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_split.c_vs_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"223|There are no background screens\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"224|There's no background screen editing a file named %s\00", align 1
@q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_fg(%struct.TYPE_15__* %0, %struct.TYPE_15__** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @STRLEN(i32* %22)
  %24 = add nsw i64 %23, 1
  %25 = load i8*, i8** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @INT2CHAR(%struct.TYPE_15__* %20, i32* %21, i64 %24, i8* %25, i64 %26)
  br label %29

28:                                               ; preds = %4
  store i8* null, i8** %12, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call %struct.TYPE_15__* @vs_getbg(%struct.TYPE_15__* %33, i8* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %11, align 8
  br label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @vs_swap(%struct.TYPE_15__* %37, %struct.TYPE_15__** %11, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %92

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %32
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %45, align 8
  %46 = icmp eq %struct.TYPE_15__* %44, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = load i32, i32* @M_ERR, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0)
  %55 = call i32 @msgq_wstr(%struct.TYPE_15__* %48, i32 %49, i32* %50, i8* %54)
  store i32 1, i32* %5, align 4
  br label %92

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = load i32, i32* @q, align 4
  %65 = call i32 @TAILQ_REMOVE(i32 %62, %struct.TYPE_15__* %63, i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = call i64 @vs_split(%struct.TYPE_15__* %66, %struct.TYPE_15__* %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %75 = load i32, i32* @q, align 4
  %76 = call i32 @TAILQ_INSERT_TAIL(i32 %73, %struct.TYPE_15__* %74, i32 %75)
  store i32 1, i32* %5, align 4
  br label %92

77:                                               ; preds = %59
  br label %91

78:                                               ; preds = %56
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = load i32, i32* @q, align 4
  %84 = call i32 @TAILQ_REMOVE(i32 %81, %struct.TYPE_15__* %82, i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load i32, i32* @q, align 4
  %90 = call i32 @TAILQ_INSERT_TAIL(i32 %87, %struct.TYPE_15__* %88, i32 %89)
  br label %91

91:                                               ; preds = %78, %77
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %70, %47, %41
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @INT2CHAR(%struct.TYPE_15__*, i32*, i64, i8*, i64) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local %struct.TYPE_15__* @vs_getbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @vs_swap(%struct.TYPE_15__*, %struct.TYPE_15__**, i8*) #1

declare dso_local i32 @msgq_wstr(%struct.TYPE_15__*, i32, i32*, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @vs_split(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
