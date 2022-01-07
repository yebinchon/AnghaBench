; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vsnprintf.c_vsnprintf_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vsnprintf.c_vsnprintf_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }

@FAKE_FILE = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@INT_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__SSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsnprintf_l(i8* noalias %0, i64 %1, i32 %2, i8* noalias %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8], align 1
  %15 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_6__* @FAKE_FILE to i8*), i64 40, i1 false)
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @FIX_LOCALE(i32 %17)
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @INT_MAX, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @EOVERFLOW, align 4
  store i32 %30, i32* @errno, align 4
  %31 = load i8*, i8** %7, align 8
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* @EOF, align 4
  store i32 %32, i32* %6, align 4
  br label %67

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %36
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8* %42, i8** %7, align 8
  store i64 1, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* @__SWR, align 4
  %45 = load i32, i32* @__SSTR, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @__vfprintf(%struct.TYPE_6__* %15, i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i64, i64* %12, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %43
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %29
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FIX_LOCALE(i32) #2

declare dso_local i32 @__vfprintf(%struct.TYPE_6__*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
