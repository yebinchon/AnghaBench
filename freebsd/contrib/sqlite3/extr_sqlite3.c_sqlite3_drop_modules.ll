; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_drop_modules.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_drop_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_drop_modules(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32* @sqliteHashFirst(i32* %10)
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %63, %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %65

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @sqliteHashData(i32* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @sqliteHashNext(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i8* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %31, %24
  %43 = phi i1 [ false, %24 ], [ %41, %31 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %24

48:                                               ; preds = %42
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %63

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %15
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @createModule(%struct.TYPE_6__* %58, i32 %61, i32 0, i32 0, i32 0)
  br label %63

63:                                               ; preds = %57, %55
  %64 = load i32*, i32** %6, align 8
  store i32* %64, i32** %5, align 8
  br label %12

65:                                               ; preds = %12
  %66 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %66
}

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @createModule(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
