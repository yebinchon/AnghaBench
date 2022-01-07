; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_handles.c_efi_register_handles.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_handles.c_efi_register_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.devsw*, i32*, i8* }
%struct.devsw = type { i32 }

@nentries = common dso_local global i32 0, align 4
@entry = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_register_handles(%struct.devsw* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.devsw*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.devsw* %0, %struct.devsw** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @nentries, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @nentries, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* @nentries, align 4
  %16 = load i32, i32* @nentries, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.TYPE_5__* @malloc(i64 %22)
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi %struct.TYPE_5__* [ %23, %21 ], [ %27, %24 ]
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @entry, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %78, %28
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @nentries, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i8* %39, i8** %44, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %34
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32* %53, i32** %58, align 8
  br label %65

59:                                               ; preds = %34
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %59, %47
  %66 = load %struct.devsw*, %struct.devsw** %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store %struct.devsw* %66, %struct.devsw** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %30

83:                                               ; preds = %30
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @malloc(i64) #1

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
