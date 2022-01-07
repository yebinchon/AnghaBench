; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_bindText.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_bindText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, void (i8*)*, i64)* @bindText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bindText(i32* %0, i32 %1, i8* %2, i32 %3, void (i8*)* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (i8*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store void (i8*)* %4, void (i8*)** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %13, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @vdbeUnbind(%struct.TYPE_6__* %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %6
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load void (i8*)*, void (i8*)** %11, align 8
  %40 = call i32 @sqlite3VdbeMemSetStr(i32* %35, i8* %36, i32 %37, i64 %38, void (i8*)* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %27
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32*, i32** %14, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @ENC(%struct.TYPE_7__* %51)
  %53 = call i32 @sqlite3VdbeChangeEncoding(i32* %48, i32 %52)
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %47, %44, %27
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @sqlite3Error(%struct.TYPE_7__* %60, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @sqlite3ApiExit(%struct.TYPE_7__* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %57, %54
  br label %69

69:                                               ; preds = %68, %24
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sqlite3_mutex_leave(i32 %74)
  br label %86

76:                                               ; preds = %6
  %77 = load void (i8*)*, void (i8*)** %11, align 8
  %78 = icmp ne void (i8*)* %77, @SQLITE_STATIC
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load void (i8*)*, void (i8*)** %11, align 8
  %81 = icmp ne void (i8*)* %80, @SQLITE_TRANSIENT
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load void (i8*)*, void (i8*)** %11, align 8
  %84 = load i8*, i8** %9, align 8
  call void %83(i8* %84)
  br label %85

85:                                               ; preds = %82, %79, %76
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i32, i32* %15, align 4
  ret i32 %87
}

declare dso_local i32 @vdbeUnbind(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemSetStr(i32*, i8*, i32, i64, void (i8*)*) #1

declare dso_local i32 @sqlite3VdbeChangeEncoding(i32*, i32) #1

declare dso_local i32 @ENC(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local void @SQLITE_STATIC(i8*) #1

declare dso_local void @SQLITE_TRANSIENT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
