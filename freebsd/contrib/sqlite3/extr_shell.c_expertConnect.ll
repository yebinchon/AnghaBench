; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertConnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [16 x i8] c"internal error!\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @expertConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expertConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %12, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %24, i32* %15, align 4
  br label %72

25:                                               ; preds = %6
  %26 = load i8**, i8*** %10, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @expertDequote(i8* %28)
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = call i32 @sqlite3_declare_vtab(i32* %33, i8* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call %struct.TYPE_7__* @idxMalloc(i32* %15, i32 16)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %14, align 8
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** %10, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @sqlite3_stricmp(i32 %58, i8* %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %66

66:                                               ; preds = %45, %41
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @sqlite3_free(i8* %67)
  br label %71

69:                                               ; preds = %25
  %70 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %21
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = bitcast %struct.TYPE_7__* %73 to i32*
  %75 = load i32**, i32*** %11, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i8* @expertDequote(i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @idxMalloc(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_stricmp(i32, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
