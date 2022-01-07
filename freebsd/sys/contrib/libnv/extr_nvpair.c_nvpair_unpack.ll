; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }

@NV_NAME_MAX = common dso_local global i64 0, align 8
@NVPAIR_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_unpack(i32 %0, i8* %1, i64* %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  %12 = load i64, i64* @NV_NAME_MAX, align 8
  %13 = add i64 16, %12
  %14 = call %struct.TYPE_8__* @nv_calloc(i32 1, i64 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %62

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 1
  %21 = bitcast %struct.TYPE_8__* %20 to i8*
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = call i8* @nvpair_unpack_header(i32 %24, %struct.TYPE_8__* %25, i8* %26, i64* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %59

32:                                               ; preds = %18
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add i64 16, %37
  %39 = add i64 %38, 1
  %40 = call %struct.TYPE_8__* @nv_realloc(%struct.TYPE_8__* %33, i64 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %59

44:                                               ; preds = %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %10, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 1
  %48 = bitcast %struct.TYPE_8__* %47 to i8*
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* @NVPAIR_MAGIC, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %57, align 8
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** %5, align 8
  br label %62

59:                                               ; preds = %43, %31
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = call i32 @nv_free(%struct.TYPE_8__* %60)
  store i8* null, i8** %5, align 8
  br label %62

62:                                               ; preds = %59, %44, %17
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

declare dso_local %struct.TYPE_8__* @nv_calloc(i32, i64) #1

declare dso_local i8* @nvpair_unpack_header(i32, %struct.TYPE_8__*, i8*, i64*) #1

declare dso_local %struct.TYPE_8__* @nv_realloc(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nv_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
