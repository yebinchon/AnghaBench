; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_collect_private_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_collect_private_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"malloc - out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_collector_collect_private_keys(i32 %0, %struct.hx509_collector* %1, i32*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hx509_collector*, align 8
  %7 = alloca i32***, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %6, align 8
  store i32*** %2, i32**** %7, align 8
  %10 = load i32***, i32**** %7, align 8
  store i32** null, i32*** %10, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %14 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %20 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  %39 = call i32** @calloc(i64 %38, i32 8)
  %40 = load i32***, i32**** %7, align 8
  store i32** %39, i32*** %40, align 8
  %41 = load i32***, i32**** %7, align 8
  %42 = load i32**, i32*** %41, align 8
  %43 = icmp eq i32** %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @hx509_set_error_string(i32 %45, i32 0, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %100

49:                                               ; preds = %36
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %53 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %50
  %58 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %59 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %57
  %69 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %70 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32***, i32**** %7, align 8
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  %82 = getelementptr inbounds i32*, i32** %79, i64 %80
  store i32* %77, i32** %82, align 8
  %83 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %84 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %68, %57
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %50

95:                                               ; preds = %50
  %96 = load i32***, i32**** %7, align 8
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  store i32* null, i32** %99, align 8
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %44
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32** @calloc(i64, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
