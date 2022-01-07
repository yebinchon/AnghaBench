; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_strtofflags.c_strtofflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_strtofflags.c_strtofflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"\09 ,\00", align 1
@nmappings = common dso_local global i32 0, align 4
@mapping = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtofflags(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %144, %33, %20
  %24 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %145

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = load i8**, i8*** %5, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %23

34:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %136, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @nmappings, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 2
  %48 = call i64 @strcmp(i8* %40, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %39
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %61, %58
  br label %86

72:                                               ; preds = %50
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %75, %72
  br label %86

86:                                               ; preds = %85, %71
  br label %139

87:                                               ; preds = %39
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @strcmp(i8* %88, i64 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %87
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %97
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %108, %105
  br label %133

119:                                              ; preds = %97
  %120 = load i32*, i32** %7, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %122, %119
  br label %133

133:                                              ; preds = %132, %118
  br label %139

134:                                              ; preds = %87
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %35

139:                                              ; preds = %133, %86, %35
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @nmappings, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, i32* %4, align 4
  br label %146

144:                                              ; preds = %139
  br label %23

145:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %143
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
