; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vdprintf.c_vdprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vdprintf.c_vdprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@FAKE_FILE = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__swrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdprintf(i32 %0, i8* noalias %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_7__* @FAKE_FILE to i8*), i64 56, i1 false)
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SHRT_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EMFILE, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i32, i32* @EOF, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %17, i8** %25, align 8
  %26 = trunc i64 %15 to i32
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @__SWR, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %32, align 8
  %33 = load i32, i32* @__swrite, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8* %17, i8** %36, align 8
  %37 = trunc i64 %15 to i32
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = call i32 (...) @__get_locale()
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @__vfprintf(%struct.TYPE_7__* %8, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

47:                                               ; preds = %24
  %48 = call i64 @__fflush(%struct.TYPE_7__* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @EOF, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %45, %21
  %57 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @__vfprintf(%struct.TYPE_7__*, i32, i8*, i32) #3

declare dso_local i32 @__get_locale(...) #3

declare dso_local i64 @__fflush(%struct.TYPE_7__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
