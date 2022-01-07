; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i32, i32, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha512_done(%struct.sha512_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sha512_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sha512_state* %0, %struct.sha512_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %8 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp uge i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %15 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @CONST64(i32 8)
  %18 = mul nsw i32 %16, %17
  %19 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %20 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %24 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %27 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  store i8 -128, i8* %31, align 1
  %32 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %33 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 112
  br i1 %35, label %36, label %60

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %42, %36
  %38 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %39 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 128
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %44 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %47 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8 0, i8* %51, align 1
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %54 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %55 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @sha512_compress(%struct.sha512_state* %53, i8* %56)
  %58 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %59 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %52, %13
  br label %61

61:                                               ; preds = %66, %60
  %62 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %63 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 120
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %68 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %71 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  store i8 0, i8* %75, align 1
  br label %61

76:                                               ; preds = %61
  %77 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %78 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 120
  %81 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %82 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @WPA_PUT_BE64(i8* %80, i32 %83)
  %85 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %86 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %87 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @sha512_compress(%struct.sha512_state* %85, i8* %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %107, %76
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 8, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %100 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @WPA_PUT_BE64(i8* %98, i32 %105)
  br label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %90

110:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %12
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @CONST64(i32) #1

declare dso_local i32 @sha512_compress(%struct.sha512_state*, i8*) #1

declare dso_local i32 @WPA_PUT_BE64(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
