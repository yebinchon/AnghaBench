; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_get_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_get_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_mstring = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }

@AES_SET_MBS = common dso_local global i32 0, align 4
@AES_SET_WCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_mstring_get_mbs(%struct.archive* %0, %struct.archive_mstring* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_mstring*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store %struct.archive_mstring* %1, %struct.archive_mstring** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.archive*, %struct.archive** %5, align 8
  %11 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %12 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AES_SET_MBS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %19 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load i8**, i8*** %7, align 8
  store i8* null, i8** %25, align 8
  %26 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %27 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AES_SET_WCS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %24
  %33 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %34 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %33, i32 0, i32 1
  %35 = call i32 @archive_string_empty(%struct.TYPE_5__* %34)
  %36 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %37 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %36, i32 0, i32 1
  %38 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %39 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %43 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @archive_string_append_from_wcs(%struct.TYPE_5__* %37, i32 %41, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %48 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %32
  %55 = load i32, i32* @AES_SET_MBS, align 4
  %56 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %57 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %32
  store i32 -1, i32* %9, align 4
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %24
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %54, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @archive_string_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @archive_string_append_from_wcs(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
