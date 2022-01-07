; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vasprintf.c_vasprintf_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vasprintf.c_vasprintf_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@FAKE_FILE = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@__SWR = common dso_local global i32 0, align 4
@__SSTR = common dso_local global i32 0, align 4
@__SALC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vasprintf_l(i8** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_6__* @FAKE_FILE to i8*), i64 40, i1 false)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @FIX_LOCALE(i32 %13)
  %15 = load i32, i32* @__SWR, align 4
  %16 = load i32, i32* @__SSTR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @__SALC, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = call i8* @malloc(i32 128)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i8**, i8*** %6, align 8
  store i8* null, i8** %30, align 8
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %57

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 127, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 127, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__vfprintf(%struct.TYPE_6__* %10, i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8**, i8*** %6, align 8
  store i8* null, i8** %47, align 8
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %57

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %6, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %42, %29
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FIX_LOCALE(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @__vfprintf(%struct.TYPE_6__*, i32, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
