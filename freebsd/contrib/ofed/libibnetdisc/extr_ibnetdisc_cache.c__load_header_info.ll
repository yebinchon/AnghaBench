; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__load_header_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__load_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@IBND_FABRIC_CACHE_BUFLEN = common dso_local global i32 0, align 4
@IBND_FABRIC_CACHE_HEADER_LEN = common dso_local global i32 0, align 4
@IBND_FABRIC_CACHE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid fabric cache file\0A\00", align 1
@IBND_FABRIC_CACHE_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid fabric cache version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i32*, i32*)* @_load_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_load_header_info(i32 %0, %struct.TYPE_7__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @IBND_FABRIC_CACHE_BUFLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IBND_FABRIC_CACHE_HEADER_LEN, align 4
  %23 = call i64 @ibnd_read(i32 %21, i32* %20, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

26:                                               ; preds = %4
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds i32, i32* %20, i64 %27
  %29 = call i64 (i32*, ...) @_unmarshall32(i32* %28, i64* %12)
  %30 = load i64, i64* %14, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @IBND_FABRIC_CACHE_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

37:                                               ; preds = %26
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i32, i32* %20, i64 %38
  %40 = call i64 (i32*, ...) @_unmarshall32(i32* %39, i64* %13)
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @IBND_FABRIC_CACHE_VERSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

48:                                               ; preds = %37
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i32, i32* %20, i64 %49
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 (i32*, ...) @_unmarshall32(i32* %50, i32* %51)
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i32, i32* %20, i64 %55
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 (i32*, ...) @_unmarshall32(i32* %56, i32* %57)
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds i32, i32* %20, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = call i64 @_unmarshall64(i32* %62, i32* %64)
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds i32, i32* %20, i64 %68
  %70 = call i64 (i32*, ...) @_unmarshall32(i32* %69, i64* %15)
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 %73, i64* %78, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %48, %46, %35, %25
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ibnd_read(i32, i32*, i32) #2

declare dso_local i64 @_unmarshall32(i32*, ...) #2

declare dso_local i32 @IBND_DEBUG(i8*) #2

declare dso_local i64 @_unmarshall64(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
