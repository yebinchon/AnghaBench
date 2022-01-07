; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_unixRemapfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_unixRemapfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@MAP_SHARED = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@MREMAP_MAYMOVE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@UNIXFILE_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @unixRemapfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unixRemapfile(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %24 = load i32, i32* @PROT_READ, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** @MAP_FAILED, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %124

64:                                               ; preds = %2
  %65 = call i32 (...) @osGetpagesize()
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 1
  %71 = xor i32 %70, -1
  %72 = sext i32 %71 to i64
  %73 = and i64 %68, %72
  store i64 %73, i64* %12, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %13, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %64
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %12, align 8
  %84 = sub nsw i64 %82, %83
  %85 = call i32 @osMunmap(i32* %81, i64 %84)
  br label %86

86:                                               ; preds = %80, %64
  %87 = load i32*, i32** %13, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %12, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @MAP_SHARED, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i64, i64* %12, align 8
  %95 = call i32* @osMmap(i32* %87, i64 %90, i32 %91, i32 %92, i32 %93, i64 %94)
  store i32* %95, i32** %9, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** @MAP_FAILED, align 8
  %98 = icmp ne i32* %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %86
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32*, i32** %9, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub nsw i64 %105, %106
  %108 = call i32 @osMunmap(i32* %104, i64 %107)
  store i32* null, i32** %9, align 8
  br label %111

109:                                              ; preds = %99
  %110 = load i32*, i32** %7, align 8
  store i32* %110, i32** %9, align 8
  br label %111

111:                                              ; preds = %109, %103
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** @MAP_FAILED, align 8
  %115 = icmp eq i32* %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %9, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116, %112
  %120 = load i32*, i32** %7, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @osMunmap(i32* %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123, %2
  %125 = load i32*, i32** %9, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i64, i64* %4, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @MAP_SHARED, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32* @osMmap(i32* null, i64 %128, i32 %129, i32 %130, i32 %131, i64 0)
  store i32* %132, i32** %9, align 8
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** @MAP_FAILED, align 8
  %136 = icmp eq i32* %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  store i32* null, i32** %9, align 8
  store i64 0, i64* %4, align 8
  %138 = load i32, i32* @SQLITE_OK, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @unixLogError(i32 %138, i8* %139, i32 %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %137, %133
  %147 = load i32*, i32** %9, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* %4, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  store i64 %151, i64* %155, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @osGetpagesize(...) #1

declare dso_local i32 @osMunmap(i32*, i64) #1

declare dso_local i32* @osMmap(i32*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @unixLogError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
