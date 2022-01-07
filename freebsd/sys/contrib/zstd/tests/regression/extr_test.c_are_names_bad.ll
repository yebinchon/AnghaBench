; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_test.c_are_names_bad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_test.c_are_names_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@methods = common dso_local global %struct.TYPE_4__** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"method name %s is bad\0A\00", align 1
@data = common dso_local global %struct.TYPE_5__** null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"data name %s is bad\0A\00", align 1
@configs = common dso_local global %struct.TYPE_6__** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"config name %s is bad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @are_names_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_names_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %30, %0
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 %7
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @is_name_bad(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @methods, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %1, align 4
  br label %92

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %2, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %2, align 8
  br label %5

33:                                               ; preds = %5
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %59, %33
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @data, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @data, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @is_name_bad(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @data, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i32 1, i32* %1, align 4
  br label %92

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %34

62:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %88, %62
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @configs, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @configs, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @is_name_bad(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i32, i32* @stderr, align 4
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @configs, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %80, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  store i32 1, i32* %1, align 4
  br label %92

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %63

91:                                               ; preds = %63
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %78, %49, %20
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i64 @is_name_bad(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
