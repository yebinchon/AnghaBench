; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/mdc2/extr_mdc2dgst.c_MDC2_Update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/mdc2/extr_mdc2dgst.c_MDC2_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@MDC2_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MDC2_Update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MDC2_BLOCK, align 8
  %18 = load i64, i64* %8, align 8
  %19 = sub i64 %17, %18
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @memcpy(i8* %26, i8* %27, i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %32
  store i64 %36, i64* %34, align 8
  store i32 1, i32* %4, align 4
  br label %100

37:                                               ; preds = %15
  %38 = load i64, i64* @MDC2_BLOCK, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i64, i64* @MDC2_BLOCK, align 8
  %63 = call i32 @mdc2_body(%struct.TYPE_4__* %57, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %3
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @MDC2_BLOCK, align 8
  %68 = sub i64 %67, 1
  %69 = xor i64 %68, -1
  %70 = and i64 %66, %69
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @mdc2_body(%struct.TYPE_4__* %74, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %65
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %79, %80
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @memcpy(i8* %88, i8* %91, i64 %92)
  %94 = load i64, i64* %9, align 8
  %95 = trunc i64 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %84, %78
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %21
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mdc2_body(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
