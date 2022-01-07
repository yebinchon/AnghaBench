; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_findassidrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_findassidrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@numassoc = common dso_local global i64 0, align 8
@assoc_cache = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"***Association ID %u not found in list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*)* @findassidrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findassidrange(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %19 = call i64 @COUNTOF(i64* %18)
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i64, i64* @numassoc, align 8
  %23 = icmp eq i64 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @dogetassoc(i32* %25)
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @checkassocid(i32 %28)
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = icmp eq i64 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %121

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @checkassocid(i32 %36)
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 0, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %121

43:                                               ; preds = %35
  store i64 0, i64* %16, align 8
  br label %44

44:                                               ; preds = %76, %43
  %45 = load i64, i64* %16, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %47 = call i64 @COUNTOF(i64* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = load i64, i64* %16, align 8
  %51 = getelementptr inbounds i32, i32* %21, i64 %50
  store i32 -1, i32* %51, align 4
  store i64 0, i64* %15, align 8
  br label %52

52:                                               ; preds = %72, %49
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @numassoc, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i64, i64* %15, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds i32, i32* %21, i64 %69
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %15, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %15, align 8
  br label %52

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %16, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %16, align 8
  br label %44

79:                                               ; preds = %44
  store i64 0, i64* %16, align 8
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %83 = call i64 @COUNTOF(i64* %82)
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds i32, i32* %21, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 -1, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @stderr, align 4
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %94)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %121

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %16, align 8
  br label %80

100:                                              ; preds = %80
  %101 = getelementptr inbounds i32, i32* %21, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = getelementptr inbounds i32, i32* %21, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = getelementptr inbounds i32, i32* %21, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %21, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %10, align 8
  store i32 %111, i32* %112, align 4
  br label %120

113:                                              ; preds = %100
  %114 = getelementptr inbounds i32, i32* %21, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %21, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %106
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %121

121:                                              ; preds = %120, %90, %42, %34
  %122 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i64 @COUNTOF(i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dogetassoc(i32*) #1

declare dso_local i64 @checkassocid(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
