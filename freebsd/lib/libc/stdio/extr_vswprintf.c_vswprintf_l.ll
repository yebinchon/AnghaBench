; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vswprintf.c_vswprintf_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vswprintf.c_vswprintf_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@vswprintf_l.initial = internal constant i32 0, align 4
@FAKE_FILE = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__SSTR = common dso_local global i32 0, align 4
@__SALC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vswprintf_l(i32* noalias %0, i64 %1, i32 %2, i32* noalias %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = bitcast %struct.TYPE_6__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_6__* @FAKE_FILE to i8*), i64 40, i1 false)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @FIX_LOCALE(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %102

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = load i64, i64* @INT_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EOVERFLOW, align 4
  store i32 %31, i32* @errno, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  store i32 -1, i32* %6, align 4
  br label %102

33:                                               ; preds = %25
  %34 = load i32, i32* @__SWR, align 4
  %35 = load i32, i32* @__SSTR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @__SALC, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = call i64 @malloc(i32 128)
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* @errno, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 0, i32* %51, align 4
  store i32 -1, i32* %6, align 4
  br label %102

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 127, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 127, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @__vfwprintf(%struct.TYPE_6__* %13, i32 %56, i32* %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load i32, i32* @errno, align 4
  store i32 %63, i32* %16, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* @errno, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 0, i32* %69, align 4
  store i32 -1, i32* %6, align 4
  br label %102

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %14, align 8
  %76 = load i32, i32* @vswprintf_l.initial, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @mbsrtowcs_l(i32* %77, i8** %14, i64 %78, i32* %12, i32 %79)
  store i64 %80, i64* %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i64, i64* %17, align 8
  %86 = icmp eq i64 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %70
  %88 = load i32, i32* @EILSEQ, align 4
  store i32 %88, i32* @errno, align 4
  %89 = load i32*, i32** %7, align 8
  store i32 0, i32* %89, align 4
  store i32 -1, i32* %6, align 4
  br label %102

90:                                               ; preds = %70
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32*, i32** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* @EOVERFLOW, align 4
  store i32 %99, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %94, %87, %62, %49, %30, %23
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FIX_LOCALE(i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @__vfwprintf(%struct.TYPE_6__*, i32, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @mbsrtowcs_l(i32*, i8**, i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
