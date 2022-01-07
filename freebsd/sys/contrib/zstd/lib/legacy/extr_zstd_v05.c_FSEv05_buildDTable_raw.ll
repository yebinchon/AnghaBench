; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_FSEv05_buildDTable_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_FSEv05_buildDTable_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i8*, i8*, i64 }

@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSEv05_buildDTable_raw(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ult i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @GENERIC, align 4
  %32 = call i64 @ERROR(i32 %31)
  store i64 %32, i64* %3, align 8
  br label %70

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %66, %33
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %52, i8** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8* %60, i8** %65, align 8
  br label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %40

69:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
