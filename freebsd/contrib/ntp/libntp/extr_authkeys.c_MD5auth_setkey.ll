; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_MD5auth_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_MD5auth_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64, i32*, i64 }

@USHRT_MAX = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MD5auth_setkey(i64 %0, i32 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @USHRT_MAX, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @DEBUG_ENSURE(i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 4096
  %20 = zext i1 %19 to i32
  %21 = call i32 @DEBUG_ENSURE(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.TYPE_3__* @auth_findkey(i64 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %11, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %85

26:                                               ; preds = %5
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* null, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memset(i32* %40, i32 0, i64 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @free(i32* %47)
  br label %49

49:                                               ; preds = %37, %32
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  %52 = call i8* @emalloc(i64 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %49
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @keyacc_all_free(i32* %71)
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %68, %49
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @memcpy(i32* %79, i32* %80, i64 %81)
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @authcache_flush_id(i64 %83)
  br label %101

85:                                               ; preds = %26, %5
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  %88 = call i8* @emalloc(i64 %87)
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @memcpy(i32* %90, i32* %91, i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @allocsymkey(i64 %94, i32 0, i64 %96, i32 0, i64 %97, i32* %98, i32* %99)
  br label %101

101:                                              ; preds = %85, %76
  ret void
}

declare dso_local i32 @DEBUG_ENSURE(i32) #1

declare dso_local %struct.TYPE_3__* @auth_findkey(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @keyacc_all_free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @authcache_flush_id(i64) #1

declare dso_local i32 @allocsymkey(i64, i32, i64, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
