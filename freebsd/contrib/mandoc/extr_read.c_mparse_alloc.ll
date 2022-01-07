; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@MPARSE_QUICK = common dso_local global i32 0, align 4
@MPARSE_MDOC = common dso_local global i32 0, align 4
@MACROSET_MDOC = common dso_local global i32 0, align 4
@MDOC_Dd = common dso_local global i32 0, align 4
@MDOC_MAX = common dso_local global i32 0, align 4
@MPARSE_MAN = common dso_local global i32 0, align 4
@MACROSET_MAN = common dso_local global i32 0, align 4
@MAN_TH = common dso_local global i32 0, align 4
@MAN_MAX = common dso_local global i32 0, align 4
@TOKEN_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mparse* @mparse_alloc(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mparse*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call %struct.mparse* @mandoc_calloc(i32 1, i32 32)
  store %struct.mparse* %8, %struct.mparse** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mparse*, %struct.mparse** %7, align 8
  %11 = getelementptr inbounds %struct.mparse, %struct.mparse* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.mparse*, %struct.mparse** %7, align 8
  %14 = getelementptr inbounds %struct.mparse, %struct.mparse* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @roff_alloc(i32 %15)
  %17 = load %struct.mparse*, %struct.mparse** %7, align 8
  %18 = getelementptr inbounds %struct.mparse, %struct.mparse* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mparse*, %struct.mparse** %7, align 8
  %20 = getelementptr inbounds %struct.mparse, %struct.mparse* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mparse*, %struct.mparse** %7, align 8
  %23 = getelementptr inbounds %struct.mparse, %struct.mparse* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.mparse*, %struct.mparse** %7, align 8
  %26 = getelementptr inbounds %struct.mparse, %struct.mparse* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MPARSE_QUICK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = call %struct.TYPE_6__* @roff_man_alloc(i32 %21, i8* %24, i32 %32)
  %34 = load %struct.mparse*, %struct.mparse** %7, align 8
  %35 = getelementptr inbounds %struct.mparse, %struct.mparse* %34, i32 0, i32 2
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.mparse*, %struct.mparse** %7, align 8
  %37 = getelementptr inbounds %struct.mparse, %struct.mparse* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MPARSE_MDOC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %3
  %43 = load i32, i32* @MACROSET_MDOC, align 4
  %44 = load %struct.mparse*, %struct.mparse** %7, align 8
  %45 = getelementptr inbounds %struct.mparse, %struct.mparse* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %43, i32* %48, align 8
  %49 = load %struct.mparse*, %struct.mparse** %7, align 8
  %50 = getelementptr inbounds %struct.mparse, %struct.mparse* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load i32, i32* @MDOC_Dd, align 4
  %57 = load i32, i32* @MDOC_MAX, align 4
  %58 = call i8* @roffhash_alloc(i32 %56, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.mparse*, %struct.mparse** %7, align 8
  %61 = getelementptr inbounds %struct.mparse, %struct.mparse* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32* %59, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %42
  br label %96

65:                                               ; preds = %3
  %66 = load %struct.mparse*, %struct.mparse** %7, align 8
  %67 = getelementptr inbounds %struct.mparse, %struct.mparse* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MPARSE_MAN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = load i32, i32* @MACROSET_MAN, align 4
  %74 = load %struct.mparse*, %struct.mparse** %7, align 8
  %75 = getelementptr inbounds %struct.mparse, %struct.mparse* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 8
  %79 = load %struct.mparse*, %struct.mparse** %7, align 8
  %80 = getelementptr inbounds %struct.mparse, %struct.mparse* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %72
  %86 = load i32, i32* @MAN_TH, align 4
  %87 = load i32, i32* @MAN_MAX, align 4
  %88 = call i8* @roffhash_alloc(i32 %86, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.mparse*, %struct.mparse** %7, align 8
  %91 = getelementptr inbounds %struct.mparse, %struct.mparse* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32* %89, i32** %93, align 8
  br label %94

94:                                               ; preds = %85, %72
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i32, i32* @TOKEN_NONE, align 4
  %98 = load %struct.mparse*, %struct.mparse** %7, align 8
  %99 = getelementptr inbounds %struct.mparse, %struct.mparse* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.mparse*, %struct.mparse** %7, align 8
  %107 = getelementptr inbounds %struct.mparse, %struct.mparse* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 8
  %111 = load %struct.mparse*, %struct.mparse** %7, align 8
  ret %struct.mparse* %111
}

declare dso_local %struct.mparse* @mandoc_calloc(i32, i32) #1

declare dso_local i32 @roff_alloc(i32) #1

declare dso_local %struct.TYPE_6__* @roff_man_alloc(i32, i8*, i32) #1

declare dso_local i8* @roffhash_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
