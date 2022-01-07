; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_mem.c_mem_getunlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_mem.c_mem_getunlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i64, %struct.TYPE_7__*, %struct.TYPE_6__**, i32, i32, i8* (i32, i64)* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i64)* @mem_getunlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mem_getunlocked(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @quantize(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %86

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = icmp ugt i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i8* null, i8** %7, align 8
  br label %150

38:                                               ; preds = %26, %21
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 8
  %41 = load i8* (i32, i64)*, i8* (i32, i64)** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i8* %41(i32 %44, i64 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %150

54:                                               ; preds = %38
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load i64, i64* %5, align 8
  store i64 %85, i64* %6, align 8
  br label %150

86:                                               ; preds = %15
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %89, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = icmp eq %struct.TYPE_6__* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @more_frags(%struct.TYPE_8__* %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i8* null, i8** %3, align 8
  br label %152

100:                                              ; preds = %94, %86
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = bitcast %struct.TYPE_6__* %106 to i8*
  store i8* %107, i8** %7, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %110, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %118, i64 %119
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 4
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, %145
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %100, %54, %49, %37
  %151 = load i8*, i8** %7, align 8
  store i8* %151, i8** %3, align 8
  br label %152

152:                                              ; preds = %150, %99
  %153 = load i8*, i8** %3, align 8
  ret i8* %153
}

declare dso_local i64 @quantize(i64) #1

declare dso_local i32 @more_frags(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
