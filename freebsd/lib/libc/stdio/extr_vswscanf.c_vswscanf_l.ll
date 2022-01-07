; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vswscanf.c_vswscanf_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vswscanf.c_vswscanf_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i64 }

@vswscanf_l.initial = internal constant i32 0, align 4
@FAKE_FILE = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@SIZE_T_MAX = common dso_local global i32 0, align 4
@__SRD = common dso_local global i32 0, align 4
@eofread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vswscanf_l(i32* noalias %0, i32 %1, i32* noalias %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_6__* @FAKE_FILE to i8*), i64 48, i1 false)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @FIX_LOCALE(i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @wcslen(i32* %19)
  %21 = load i32, i32* @MB_CUR_MAX, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @EOF, align 4
  store i32 %27, i32* %5, align 4
  br label %60

28:                                               ; preds = %4
  %29 = load i32, i32* @vswscanf_l.initial, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %15, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @SIZE_T_MAX, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @wcsrtombs_l(i8* %31, i32** %15, i32 %32, i32* %10, i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* @EOF, align 4
  store i32 %39, i32* %5, align 4
  br label %60

40:                                               ; preds = %28
  %41 = load i32, i32* @__SRD, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load i32, i32* @eofread, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @__vfwscanf(%struct.TYPE_6__* %11, i32 %53, i32* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %40, %36, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FIX_LOCALE(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @wcsrtombs_l(i8*, i32**, i32, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @__vfwscanf(%struct.TYPE_6__*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
