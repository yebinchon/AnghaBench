; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_cache.c_cread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_cache.c_cread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_4__* }

@cachesize = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_5__* null, align 8
@DataBase = common dso_local global i32* null, align 8
@BlockSize = common dso_local global i32 0, align 4
@HSize = common dso_local global i64 0, align 8
@BlockHash = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cread(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca %struct.TYPE_4__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @cachesize, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @pread(i32 %24, i8* %25, i64 %26, i64 %27)
  store i64 %28, i64* %5, align 8
  br label %158

29:                                               ; preds = %18
  %30 = load i32*, i32** @DataBase, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @cinit()
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* @BlockSize, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = xor i64 %37, -1
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @BlockSize, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = sub i64 %47, 1
  %49 = xor i64 %44, %48
  %50 = load i64, i64* %15, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43, %34
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @pread(i32 %54, i8* %55, i64 %56, i64 %57)
  store i64 %58, i64* %5, align 8
  br label %158

59:                                               ; preds = %43
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @BlockSize, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %60, %62
  %64 = load i64, i64* @HSize, align 8
  %65 = urem i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @BlockHash, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %69
  store %struct.TYPE_4__** %70, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %12, align 8
  br label %71

71:                                               ; preds = %85, %59
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %10, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = xor i64 %78, %79
  %81 = load i64, i64* %15, align 8
  %82 = and i64 %80, %81
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__** %86, %struct.TYPE_4__*** %12, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store %struct.TYPE_4__** %88, %struct.TYPE_4__*** %11, align 8
  br label %71

89:                                               ; preds = %84, %71
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = icmp eq %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %119

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %10, align 8
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  store %struct.TYPE_4__** %95, %struct.TYPE_4__*** %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %15, align 8
  %98 = and i64 %96, %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @BlockSize, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @pread(i32 %101, i8* %104, i64 %106, i64 %109)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @BlockSize, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %92
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 -1, i64* %117, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  br label %118

118:                                              ; preds = %115, %92
  br label %119

119:                                              ; preds = %118, %89
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = icmp ne %struct.TYPE_4__* %120, null
  br i1 %121, label %122, label %152

122:                                              ; preds = %119
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %126, %129
  %131 = getelementptr i8, i8* %125, i64 %130
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @bcopy(i8* %131, i8* %132, i64 %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %138, align 8
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @BlockHash, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 %141
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %145, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %147 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @BlockHash, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %147, i64 %149
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %150, align 8
  %151 = load i64, i64* %8, align 8
  store i64 %151, i64* %5, align 8
  br label %158

152:                                              ; preds = %119
  %153 = load i32, i32* %6, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i64 @pread(i32 %153, i8* %154, i64 %155, i64 %156)
  store i64 %157, i64* %5, align 8
  br label %158

158:                                              ; preds = %152, %122, %53, %23
  %159 = load i64, i64* %5, align 8
  ret i64 %159
}

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @cinit(...) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
