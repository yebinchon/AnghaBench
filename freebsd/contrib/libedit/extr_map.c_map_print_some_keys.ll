; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_map.c_map_print_some_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_map.c_map_print_some_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@EL_BUFSIZ = common dso_local global i32 0, align 4
@ED_UNASSIGNED = common dso_local global i64 0, align 8
@STRQQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%-15s->  is undefined\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%-15s->  %ls\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%-4s to %-7s->  %ls\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Error printing keys\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64*, i64, i64)* @map_print_some_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_print_some_keys(%struct.TYPE_7__* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i64], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i32, i32* @EL_BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @EL_BUFSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %24, i64* %25, align 16
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ED_UNASSIGNED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %42 = trunc i64 %18 to i32
  %43 = load i32, i32* @STRQQ, align 4
  %44 = call i32 @keymacro__decode_str(i64* %41, i8* %20, i32 %42, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %49

49:                                               ; preds = %40, %36
  store i32 1, i32* %16, align 4
  br label %119

50:                                               ; preds = %4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %58
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %10, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %9, align 8
  br label %64

64:                                               ; preds = %111, %50
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = icmp ult %struct.TYPE_6__* %65, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %83 = trunc i64 %18 to i32
  %84 = load i32, i32* @STRQQ, align 4
  %85 = call i32 @keymacro__decode_str(i64* %82, i8* %20, i32 %83, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %91)
  br label %109

93:                                               ; preds = %77
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %95 = trunc i64 %18 to i32
  %96 = load i32, i32* @STRQQ, align 4
  %97 = call i32 @keymacro__decode_str(i64* %94, i8* %20, i32 %95, i32 %96)
  %98 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %99 = trunc i64 %22 to i32
  %100 = load i32, i32* @STRQQ, align 4
  %101 = call i32 @keymacro__decode_str(i64* %98, i8* %23, i32 %99, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %23, i32 %107)
  br label %109

109:                                              ; preds = %93, %81
  store i32 1, i32* %16, align 4
  br label %119

110:                                              ; preds = %68
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 1
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %9, align 8
  br label %64

114:                                              ; preds = %64
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @EL_ABORT(i32 ptrtoint ([21 x i8]* @.str.3 to i32))
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %114, %109, %49
  %120 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %16, align 4
  switch i32 %121, label %123 [
    i32 0, label %122
    i32 1, label %122
  ]

122:                                              ; preds = %119, %119
  ret void

123:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @keymacro__decode_str(i64*, i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @EL_ABORT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
