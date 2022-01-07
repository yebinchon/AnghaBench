; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lhash.c_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/lhash/extr_lhash.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__**, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  %24 = load i32, i32* %9, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %1
  %27 = load i32, i32* %10, align 4
  %28 = mul i32 %27, 2
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_7__** @OPENSSL_realloc(%struct.TYPE_7__** %31, i32 %35)
  store %struct.TYPE_7__** %36, %struct.TYPE_7__*** %4, align 8
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %38 = icmp eq %struct.TYPE_7__** %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %136

44:                                               ; preds = %26
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store %struct.TYPE_7__** %45, %struct.TYPE_7__*** %47, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(%struct.TYPE_7__** %51, i32 0, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %76

71:                                               ; preds = %1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %44
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %87, i64 %89
  store %struct.TYPE_7__** %90, %struct.TYPE_7__*** %5, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %94, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %97
  store %struct.TYPE_7__** %98, %struct.TYPE_7__*** %6, align 8
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %99, align 8
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %7, align 8
  br label %102

102:                                              ; preds = %132, %76
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = urem i64 %109, %111
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %105
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %121, align 8
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %127, align 8
  br label %132

128:                                              ; preds = %105
  %129 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store %struct.TYPE_7__** %131, %struct.TYPE_7__*** %5, align 8
  br label %132

132:                                              ; preds = %128, %116
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %7, align 8
  br label %102

135:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %39
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_7__** @OPENSSL_realloc(%struct.TYPE_7__**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
