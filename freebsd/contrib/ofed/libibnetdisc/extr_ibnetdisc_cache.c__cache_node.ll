; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__cache_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__cache_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__**, i32, i32, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@IBND_FABRIC_CACHE_BUFLEN = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @_cache_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cache_node(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %13 = load i32, i32* @IBND_FABRIC_CACHE_BUFLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @_marshall16(i64* %18, i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i64, i64* %16, i64 %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @_marshall8(i64* %26, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %16, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @_marshall8(i64* %34, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i64, i64* %16, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %47 = call i64 @_marshall_buf(i64* %42, i32 %45, i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i64, i64* %16, i64 %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @_marshall64(i64* %51, i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %16, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @_marshall8(i64* %59, i64 %62)
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i64, i64* %16, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = call i64 @_marshall8(i64* %67, i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i64, i64* %16, i64 %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %81 = call i64 @_marshall_buf(i64* %76, i32 %79, i32 %80)
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i64, i64* %16, i64 %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %90 = call i64 @_marshall_buf(i64* %85, i32 %88, i32 %89)
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 8
  store i64 %95, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %143, %2
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %97, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = icmp ne %struct.TYPE_4__* %109, null
  br i1 %110, label %111, label %142

111:                                              ; preds = %102
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i64, i64* %16, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 %118
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @_marshall64(i64* %113, i32 %122)
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds i64, i64* %16, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @_marshall8(i64* %127, i64 %136)
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %10, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %10, align 8
  br label %142

142:                                              ; preds = %111, %102
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %96

146:                                              ; preds = %96
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds i64, i64* %16, i64 %147
  %149 = load i64, i64* %10, align 8
  %150 = call i64 @_marshall8(i64* %148, i64 %149)
  %151 = load i32, i32* %4, align 4
  %152 = load i64, i64* %8, align 8
  %153 = call i64 @ibnd_write(i32 %151, i64* %16, i64 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %157

156:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_marshall16(i64*, i32) #2

declare dso_local i64 @_marshall8(i64*, i64) #2

declare dso_local i64 @_marshall_buf(i64*, i32, i32) #2

declare dso_local i64 @_marshall64(i64*, i32) #2

declare dso_local i64 @ibnd_write(i32, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
