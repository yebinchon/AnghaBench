; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_endparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_endparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@MANDOCERR_BLK_NOEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@roff_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_endparse(%struct.roff* %0) #0 {
  %2 = alloca %struct.roff*, align 8
  store %struct.roff* %0, %struct.roff** %2, align 8
  %3 = load %struct.roff*, %struct.roff** %2, align 8
  %4 = getelementptr inbounds %struct.roff, %struct.roff* %3, i32 0, i32 2
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i32, i32* @MANDOCERR_BLK_NOEND, align 4
  %9 = load %struct.roff*, %struct.roff** %2, align 8
  %10 = getelementptr inbounds %struct.roff, %struct.roff* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.roff*, %struct.roff** %2, align 8
  %15 = getelementptr inbounds %struct.roff, %struct.roff* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** @roff_name, align 8
  %20 = load %struct.roff*, %struct.roff** %2, align 8
  %21 = getelementptr inbounds %struct.roff, %struct.roff* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %8, i32 %13, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %7, %1
  %29 = load %struct.roff*, %struct.roff** %2, align 8
  %30 = getelementptr inbounds %struct.roff, %struct.roff* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load i32, i32* @MANDOCERR_BLK_NOEND, align 4
  %35 = load %struct.roff*, %struct.roff** %2, align 8
  %36 = getelementptr inbounds %struct.roff, %struct.roff* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.roff*, %struct.roff** %2, align 8
  %43 = getelementptr inbounds %struct.roff, %struct.roff* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %34, i32 %41, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.roff*, %struct.roff** %2, align 8
  %51 = getelementptr inbounds %struct.roff, %struct.roff* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @eqn_parse(%struct.TYPE_6__* %52)
  %54 = load %struct.roff*, %struct.roff** %2, align 8
  %55 = getelementptr inbounds %struct.roff, %struct.roff* %54, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %55, align 8
  br label %56

56:                                               ; preds = %33, %28
  %57 = load %struct.roff*, %struct.roff** %2, align 8
  %58 = getelementptr inbounds %struct.roff, %struct.roff* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.roff*, %struct.roff** %2, align 8
  %63 = getelementptr inbounds %struct.roff, %struct.roff* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @tbl_end(i32* %64, i32 1)
  %66 = load %struct.roff*, %struct.roff** %2, align 8
  %67 = getelementptr inbounds %struct.roff, %struct.roff* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @eqn_parse(%struct.TYPE_6__*) #1

declare dso_local i32 @tbl_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
