; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_pack_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_pack_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tidx = type { i32, i64, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tidx*, i8*, i32)* @pack_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pack_object(%struct.tidx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tidx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.tidx* %0, %struct.tidx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %65, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.tidx*, %struct.tidx** %5, align 8
  %13 = getelementptr inbounds %struct.tidx, %struct.tidx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %10
  %17 = load %struct.tidx*, %struct.tidx** %5, align 8
  %18 = getelementptr inbounds %struct.tidx, %struct.tidx* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %65

29:                                               ; preds = %16
  %30 = load %struct.tidx*, %struct.tidx** %5, align 8
  %31 = getelementptr inbounds %struct.tidx, %struct.tidx* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tidx*, %struct.tidx** %5, align 8
  %39 = getelementptr inbounds %struct.tidx, %struct.tidx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %65

43:                                               ; preds = %29
  %44 = load %struct.tidx*, %struct.tidx** %5, align 8
  %45 = getelementptr inbounds %struct.tidx, %struct.tidx* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %65

56:                                               ; preds = %43
  %57 = load %struct.tidx*, %struct.tidx** %5, align 8
  %58 = getelementptr inbounds %struct.tidx, %struct.tidx* %57, i32 0, i32 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  br label %139

65:                                               ; preds = %55, %42, %28
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %10

68:                                               ; preds = %10
  %69 = load %struct.tidx*, %struct.tidx** %5, align 8
  %70 = getelementptr inbounds %struct.tidx, %struct.tidx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load %struct.tidx*, %struct.tidx** %5, align 8
  %74 = getelementptr inbounds %struct.tidx, %struct.tidx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %68
  %78 = load %struct.tidx*, %struct.tidx** %5, align 8
  %79 = getelementptr inbounds %struct.tidx, %struct.tidx* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 4
  store i32 %81, i32* %79, align 8
  %82 = load %struct.tidx*, %struct.tidx** %5, align 8
  %83 = getelementptr inbounds %struct.tidx, %struct.tidx* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.tidx*, %struct.tidx** %5, align 8
  %86 = getelementptr inbounds %struct.tidx, %struct.tidx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 32
  %90 = trunc i64 %89 to i32
  %91 = call %struct.TYPE_7__* @realloc(%struct.TYPE_7__* %84, i32 %90)
  %92 = load %struct.tidx*, %struct.tidx** %5, align 8
  %93 = getelementptr inbounds %struct.tidx, %struct.tidx* %92, i32 0, i32 4
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %93, align 8
  %94 = load %struct.tidx*, %struct.tidx** %5, align 8
  %95 = getelementptr inbounds %struct.tidx, %struct.tidx* %94, i32 0, i32 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = icmp eq %struct.TYPE_7__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  store i64 0, i64* %4, align 8
  br label %139

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %68
  %101 = load %struct.tidx*, %struct.tidx** %5, align 8
  %102 = getelementptr inbounds %struct.tidx, %struct.tidx* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %9, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = call i32 @memset(%struct.TYPE_7__* %107, i32 0, i32 32)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @strlcpy(i32 %111, i8* %112, i32 4)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 32, i32* %120, align 4
  %121 = load %struct.tidx*, %struct.tidx** %5, align 8
  %122 = getelementptr inbounds %struct.tidx, %struct.tidx* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.tidx*, %struct.tidx** %5, align 8
  %127 = getelementptr inbounds %struct.tidx, %struct.tidx* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.tidx*, %struct.tidx** %5, align 8
  %133 = getelementptr inbounds %struct.tidx, %struct.tidx* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %4, align 8
  br label %139

139:                                              ; preds = %100, %98, %56
  %140 = load i64, i64* %4, align 8
  ret i64 %140
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
