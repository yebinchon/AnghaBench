; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i32, i64, i8* }

@SHA512_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha512_process(%struct.sha512_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sha512_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sha512_state* %0, %struct.sha512_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %10 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %106

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %104, %15
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %16
  %20 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %21 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @sha512_compress(%struct.sha512_state* %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %106

34:                                               ; preds = %28
  %35 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %36 = mul i64 %35, 8
  %37 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %38 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %6, align 8
  %44 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %104

47:                                               ; preds = %24, %19
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %50 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %51 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = sub i64 %49, %53
  %55 = call i64 @MIN(i64 %48, i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %57 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %60 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @os_memcpy(i8* %63, i8* %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %69 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %81 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %47
  %87 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %88 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %89 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @sha512_compress(%struct.sha512_state* %87, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %106

94:                                               ; preds = %86
  %95 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %96 = mul i64 8, %95
  %97 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %98 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %102 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %94, %47
  br label %104

104:                                              ; preds = %103, %34
  br label %16

105:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %93, %33, %14
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @sha512_compress(%struct.sha512_state*, i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
