; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_lookup_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_lookup_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@NONE = common dso_local global i32 0, align 4
@DELETED = common dso_local global i32* null, align 8
@STAT_HASH_LENGTH = common dso_local global i32 0, align 4
@STAT_HASH_LOOKUP = common dso_local global i32 0, align 4
@STAT_HASH_POSITIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohash_lookup_memory(%struct.ohash* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ohash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ohash* %0, %struct.ohash** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @NONE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ohash*, %struct.ohash** %6, align 8
  %16 = getelementptr inbounds %struct.ohash, %struct.ohash* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %14, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.ohash*, %struct.ohash** %6, align 8
  %21 = getelementptr inbounds %struct.ohash, %struct.ohash* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 2
  %24 = srem i32 %19, %23
  %25 = and i32 %24, -2
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %141, %4
  %28 = load %struct.ohash*, %struct.ohash** %6, align 8
  %29 = getelementptr inbounds %struct.ohash, %struct.ohash* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %142

37:                                               ; preds = %27
  %38 = load %struct.ohash*, %struct.ohash** %6, align 8
  %39 = getelementptr inbounds %struct.ohash, %struct.ohash* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** @DELETED, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @NONE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %126

55:                                               ; preds = %37
  %56 = load %struct.ohash*, %struct.ohash** %6, align 8
  %57 = getelementptr inbounds %struct.ohash, %struct.ohash* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %55
  %67 = load %struct.ohash*, %struct.ohash** %6, align 8
  %68 = getelementptr inbounds %struct.ohash, %struct.ohash* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.ohash*, %struct.ohash** %6, align 8
  %76 = getelementptr inbounds %struct.ohash, %struct.ohash* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @memcmp(i32* %80, i8* %81, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %66
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.ohash*, %struct.ohash** %6, align 8
  %92 = getelementptr inbounds %struct.ohash, %struct.ohash* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 8
  %98 = load %struct.ohash*, %struct.ohash** %6, align 8
  %99 = getelementptr inbounds %struct.ohash, %struct.ohash* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.ohash*, %struct.ohash** %6, align 8
  %107 = getelementptr inbounds %struct.ohash, %struct.ohash* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32* %105, i32** %112, align 8
  %113 = load i32*, i32** @DELETED, align 8
  %114 = load %struct.ohash*, %struct.ohash** %6, align 8
  %115 = getelementptr inbounds %struct.ohash, %struct.ohash* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32* %113, i32** %120, align 8
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %5, align 4
  br label %158

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  br label %158

125:                                              ; preds = %66, %55
  br label %126

126:                                              ; preds = %125, %54
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.ohash*, %struct.ohash** %6, align 8
  %132 = getelementptr inbounds %struct.ohash, %struct.ohash* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp uge i32 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = load %struct.ohash*, %struct.ohash** %6, align 8
  %137 = getelementptr inbounds %struct.ohash, %struct.ohash* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %135, %126
  br label %27

142:                                              ; preds = %27
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @NONE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.ohash*, %struct.ohash** %6, align 8
  %151 = getelementptr inbounds %struct.ohash, %struct.ohash* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i32 %149, i32* %156, align 8
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %148, %123, %89
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
