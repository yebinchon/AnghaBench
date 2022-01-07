; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sha3.c_sha3_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_m_sha3.c_sha3_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @sha3_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha3_update(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %108

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  store i32 1, i32* %4, align 4
  br label %108

49:                                               ; preds = %28
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @memcpy(i8* %54, i8* %55, i64 %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %9, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @SHA3_absorb(i32 %66, i8* %69, i64 %70, i64 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %49, %23
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @SHA3_absorb(i32 %82, i8* %83, i64 %84, i64 %85)
  store i64 %86, i64* %12, align 8
  br label %89

87:                                               ; preds = %75
  %88 = load i64, i64* %7, align 8
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %87, %79
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %12, align 8
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @memcpy(i8* %95, i8* %101, i64 %102)
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %92, %89
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %35, %22
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @SHA3_absorb(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
