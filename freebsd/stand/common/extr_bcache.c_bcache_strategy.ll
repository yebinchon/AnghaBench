; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_bcache_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_bcache_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_devdata = type { i32 (i32, i32, i64, i64, i8*, i64*)*, i32, %struct.bcache* }
%struct.bcache = type { i64 }

@bcache_ops = common dso_local global i32 0, align 4
@bcache_blksize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"bypass %zu from %qu\00", align 1
@bcache_bypasses = common dso_local global i32 0, align 4
@F_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcache_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.bcache_devdata*, align 8
  %15 = alloca %struct.bcache*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.bcache_devdata*
  store %struct.bcache_devdata* %24, %struct.bcache_devdata** %14, align 8
  %25 = load %struct.bcache_devdata*, %struct.bcache_devdata** %14, align 8
  %26 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %25, i32 0, i32 2
  %27 = load %struct.bcache*, %struct.bcache** %26, align 8
  store %struct.bcache* %27, %struct.bcache** %15, align 8
  store i64 0, i64* %16, align 8
  %28 = load i32, i32* @bcache_ops, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @bcache_ops, align 4
  %30 = load %struct.bcache*, %struct.bcache** %15, align 8
  %31 = icmp ne %struct.bcache* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load %struct.bcache*, %struct.bcache** %15, align 8
  %34 = getelementptr inbounds %struct.bcache, %struct.bcache* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  br label %36

36:                                               ; preds = %32, %6
  %37 = load %struct.bcache*, %struct.bcache** %15, align 8
  %38 = icmp eq %struct.bcache* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = mul i64 %40, 2
  %42 = load i64, i64* @bcache_blksize, align 8
  %43 = udiv i64 %41, %42
  %44 = load i64, i64* %16, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %39, %36
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @bcache_blksize, align 8
  %49 = udiv i64 %47, %48
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i32, i32* @bcache_bypasses, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @bcache_bypasses, align 4
  %54 = load i32, i32* @F_MASK, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.bcache_devdata*, %struct.bcache_devdata** %14, align 8
  %58 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %57, i32 0, i32 0
  %59 = load i32 (i32, i32, i64, i64, i8*, i64*)*, i32 (i32, i32, i64, i64, i8*, i64*)** %58, align 8
  %60 = load %struct.bcache_devdata*, %struct.bcache_devdata** %14, align 8
  %61 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = call i32 %59(i32 %62, i32 %63, i64 %64, i64 %65, i8* %66, i64* %67)
  store i32 %68, i32* %7, align 4
  br label %162

69:                                               ; preds = %39
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @F_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %161 [
    i32 129, label %73
    i32 128, label %154
  ]

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @bcache_blksize, align 8
  %76 = udiv i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %17, align 4
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %83, %80, %73
  store i32 0, i32* %19, align 4
  store i64 0, i64* %22, align 8
  br label %87

87:                                               ; preds = %130, %86
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %87
  %91 = load i64, i64* %16, align 8
  %92 = load %struct.bcache*, %struct.bcache** %15, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @BHASH(%struct.bcache* %92, i64 %93)
  %95 = sext i32 %94 to i64
  %96 = sub i64 %91, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @MIN(i32 %98, i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @bcache_blksize, align 8
  %103 = icmp ule i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %20, align 8
  br label %111

106:                                              ; preds = %90
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @bcache_blksize, align 8
  %110 = mul i64 %108, %109
  store i64 %110, i64* %20, align 8
  br label %111

111:                                              ; preds = %106, %104
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %20, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i64, i64* %22, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = call i32 @read_strategy(i8* %112, i32 %113, i64 %114, i64 %115, i8* %118, i64* %21)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %111
  %123 = load i64, i64* %21, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122, %111
  %126 = load i64, i64* %22, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %128, %125
  br label %146

130:                                              ; preds = %122
  %131 = load i64, i64* %21, align 8
  %132 = load i64, i64* @bcache_blksize, align 8
  %133 = udiv i64 %131, %132
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %10, align 8
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* %22, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %22, align 8
  %139 = load i64, i64* %21, align 8
  %140 = load i64, i64* %11, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @bcache_blksize, align 8
  %144 = udiv i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %17, align 4
  br label %87

146:                                              ; preds = %129, %87
  %147 = load i64*, i64** %13, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* %22, align 8
  %151 = load i64*, i64** %13, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %19, align 4
  store i32 %153, i32* %7, align 4
  br label %162

154:                                              ; preds = %69
  %155 = load i8*, i8** %8, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i64*, i64** %13, align 8
  %160 = call i32 @write_strategy(i8* %155, i32 128, i64 %156, i64 %157, i8* %158, i64* %159)
  store i32 %160, i32* %7, align 4
  br label %162

161:                                              ; preds = %69
  store i32 -1, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %154, %152, %46
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

declare dso_local i32 @BHASH(%struct.bcache*, i64) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @read_strategy(i8*, i32, i64, i64, i8*, i64*) #1

declare dso_local i32 @write_strategy(i8*, i32, i64, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
