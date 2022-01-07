; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_5__* }

@skel_char_type = common dso_local global i64* null, align 8
@type_space = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i32, i32*)* @list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @list(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp uge i8* %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 40
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %112

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__** %10, %struct.TYPE_5__*** %11, align 8
  br label %31

31:                                               ; preds = %76, %27
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i64*, i64** @skel_char_type, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @type_space, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %36, %32
  %46 = phi i1 [ false, %32 ], [ %44, %36 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  br label %32

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp uge i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %112

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 41
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %91

63:                                               ; preds = %55
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %7, align 8
  %72 = call %struct.TYPE_5__* @parse(i8* %64, i32 %70, i32* %71)
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %12, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %112

76:                                               ; preds = %63
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store %struct.TYPE_5__** %82, %struct.TYPE_5__*** %11, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8* %90, i8** %5, align 8
  br label %31

91:                                               ; preds = %60
  %92 = load i32*, i32** %7, align 8
  %93 = call %struct.TYPE_5__* @apr_pcalloc(i32* %92, i32 40)
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %13, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %110, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %4, align 8
  br label %112

112:                                              ; preds = %91, %75, %54, %26
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %113
}

declare dso_local %struct.TYPE_5__* @parse(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
