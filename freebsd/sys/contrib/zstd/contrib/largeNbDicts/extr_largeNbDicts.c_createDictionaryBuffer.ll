; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_createDictionaryBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_createDictionaryBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"loading dictionary %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"creating dictionary, of target size %u bytes \0A\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, i64*, i64, i64)* @createDictionaryBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createDictionaryBuffer(%struct.TYPE_4__* noalias sret %0, i8* %1, i8* %2, i64* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 %5, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %7, align 8
  call void @createBuffer_fromFile(%struct.TYPE_4__* sret %0, i8* %19)
  br label %54

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %11, align 8
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @CONTROL(i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @UINT_MAX, align 8
  %32 = icmp ule i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @ZDICT_trainFromBuffer(i8* %35, i64 %36, i8* %37, i64* %38, i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @ZSTD_isError(i64 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @CONTROL(i32 %46)
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local void @createBuffer_fromFile(%struct.TYPE_4__* sret, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @CONTROL(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZDICT_trainFromBuffer(i8*, i64, i8*, i64*, i32) #1

declare dso_local i32 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
