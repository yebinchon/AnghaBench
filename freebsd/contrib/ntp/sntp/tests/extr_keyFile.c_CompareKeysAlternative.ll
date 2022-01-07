; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_keyFile.c_CompareKeysAlternative.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_keyFile.c_CompareKeysAlternative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareKeysAlternative(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.key, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.key, align 4
  %13 = bitcast %struct.key* %7 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %4, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %5, i64* %15, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @strlcpy(i32 %21, i8* %22, i32 4)
  %24 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @memcpy(i32 %25, i8* %26, i32 %27)
  %29 = bitcast %struct.key* %12 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.key* %7 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @CompareKeys(i64 %31, i64 %33, i64 %36, i64 %38)
  ret i32 %39
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @CompareKeys(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
