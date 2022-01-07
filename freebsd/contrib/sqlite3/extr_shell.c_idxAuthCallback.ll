; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxAuthCallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxAuthCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_INSERT = common dso_local global i32 0, align 4
@SQLITE_UPDATE = common dso_local global i32 0, align 4
@SQLITE_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @idxAuthCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxAuthCallback(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SQLITE_INSERT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SQLITE_UPDATE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SQLITE_DELETE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %27, %23, %6
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @sqlite3_stricmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %111

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %14, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %15, align 8
  br label %41

41:                                               ; preds = %53, %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @sqlite3_stricmp(i8* %45, i8* %48)
  %50 = icmp eq i64 0, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %15, align 8
  br label %41

57:                                               ; preds = %51, %41
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %110

60:                                               ; preds = %57
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %16, align 8
  br label %64

64:                                               ; preds = %81, %60
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %72 = icmp eq %struct.TYPE_7__* %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %85

80:                                               ; preds = %73, %67
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %16, align 8
  br label %64

85:                                               ; preds = %79, %64
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = icmp eq %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = call %struct.TYPE_6__* @idxMalloc(i32* %13, i32 24)
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %16, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %107, align 8
  br label %108

108:                                              ; preds = %93, %88
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %57
  br label %111

111:                                              ; preds = %110, %31
  br label %112

112:                                              ; preds = %111, %27
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @idxMalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
