; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_pack_string_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_pack_string_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@NV_TYPE_STRING_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_pack_string_array(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i32 @NVPAIR_ASSERT(%struct.TYPE_5__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NV_TYPE_STRING_ARRAY, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  store i64 0, i64* %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = call i8** @nvpair_get_string_array(%struct.TYPE_5__* %28, i32* null)
  store i8** %29, i8*** %10, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = icmp ne i8** %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @PJDLOG_ASSERT(i32 %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %73, %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load i8**, i8*** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp uge i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @PJDLOG_ASSERT(i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i8**, i8*** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @memcpy(i8* %55, i8* %60, i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, %69
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %40
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %34

76:                                               ; preds = %34
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @PJDLOG_ASSERT(i32 %82)
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

declare dso_local i32 @NVPAIR_ASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8** @nvpair_get_string_array(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
