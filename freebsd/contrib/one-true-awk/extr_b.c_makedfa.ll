; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_makedfa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_makedfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }

@makedfa.now = internal global i32 1, align 4
@setvec = common dso_local global i32* null, align 8
@MAXLIN = common dso_local global i32 0, align 4
@maxsetvec = common dso_local global i32 0, align 4
@tmpset = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"out of space initializing makedfa\00", align 1
@compile_time = common dso_local global i64 0, align 8
@nfatab = common dso_local global i32 0, align 4
@fatab = common dso_local global %struct.TYPE_6__** null, align 8
@NFA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @makedfa(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** @setvec, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i32, i32* @MAXLIN, align 4
  store i32 %13, i32* @maxsetvec, align 4
  %14 = load i32, i32* @maxsetvec, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @setvec, align 8
  %20 = load i32, i32* @maxsetvec, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64 @malloc(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** @tmpset, align 8
  %26 = load i32*, i32** @setvec, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %12
  %29 = load i32*, i32** @tmpset, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %12
  %32 = call i32 @overflo(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i64, i64* @compile_time, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.TYPE_6__* @mkdfa(i8* %38, i32 %39)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %3, align 8
  br label %160

41:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @nfatab, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %46
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %56
  %69 = load i32, i32* @makedfa.now, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @makedfa.now, align 4
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 4
  %77 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %77, i64 %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %3, align 8
  br label %160

82:                                               ; preds = %56, %46
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %42

86:                                               ; preds = %42
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call %struct.TYPE_6__* @mkdfa(i8* %87, i32 %88)
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %9, align 8
  %90 = load i32, i32* @nfatab, align 4
  %91 = load i32, i32* @NFA, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %96 = load i32, i32* @nfatab, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %98, align 8
  %99 = load i32, i32* @makedfa.now, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @makedfa.now, align 4
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %102 = load i32, i32* @nfatab, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %99, i32* %106, align 4
  %107 = load i32, i32* @nfatab, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @nfatab, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %3, align 8
  br label %160

110:                                              ; preds = %86
  %111 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %111, i64 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %116

116:                                              ; preds = %140, %110
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @nfatab, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %116
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %121, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %120
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %131, i64 %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %130, %120
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %116

143:                                              ; preds = %116
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = call i32 @freefa(%struct.TYPE_6__* %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %151 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fatab, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %151, i64 %153
  store %struct.TYPE_6__* %150, %struct.TYPE_6__** %154, align 8
  %155 = load i32, i32* @makedfa.now, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @makedfa.now, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %159, %struct.TYPE_6__** %3, align 8
  br label %160

160:                                              ; preds = %143, %93, %68, %37
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %161
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @overflo(i8*) #1

declare dso_local %struct.TYPE_6__* @mkdfa(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freefa(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
