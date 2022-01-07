; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_node_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_node_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32*, i64, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"| [%u+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"]%u\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"| [%u]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32*, i64, i32)* @ldns_radix_node_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_radix_node_print(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %126

18:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %26, %18
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %13, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i64 0, i64* %14, align 8
  br label %36

36:                                               ; preds = %49, %32
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %36

52:                                               ; preds = %36
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %29
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %122, %73
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %76
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %121

92:                                               ; preds = %82
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  call void @ldns_radix_node_print(i32* %93, %struct.TYPE_5__* %101, i32 %102, i32* %110, i64 %118, i32 %120)
  br label %121

121:                                              ; preds = %92, %82
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %76

125:                                              ; preds = %76
  br label %126

126:                                              ; preds = %125, %17
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
