; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/generic/extr_tclsqlite3.c_DbTraceV2Handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/generic/extr_tclsqlite3.c_DbTraceV2Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@TCL_EVAL_DIRECT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @DbTraceV2Handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DbTraceV2Handler(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %9, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %154 [
    i32 128, label %20
    i32 130, label %57
    i32 129, label %96
    i32 131, label %125
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %12, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32* @Tcl_NewStringObj(i8* %26, i32 -1)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @Tcl_IncrRefCount(i32* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32* @Tcl_NewWideIntObj(i32 %35)
  %37 = call i32 @Tcl_ListObjAppendElement(i32 %32, i32* %33, i32* %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32* @Tcl_NewStringObj(i8* %42, i32 -1)
  %44 = call i32 @Tcl_ListObjAppendElement(i32 %40, i32* %41, i32* %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %50 = call i32 @Tcl_EvalObjEx(i32 %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @Tcl_DecrRefCount(i32* %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @Tcl_ResetResult(i32 %55)
  br label %154

57:                                               ; preds = %4
  %58 = load i8*, i8** %7, align 8
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32* @Tcl_NewStringObj(i8* %65, i32 -1)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @Tcl_IncrRefCount(i32* %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = call i32* @Tcl_NewWideIntObj(i32 %74)
  %76 = call i32 @Tcl_ListObjAppendElement(i32 %71, i32* %72, i32* %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32* @Tcl_NewWideIntObj(i32 %81)
  %83 = call i32 @Tcl_ListObjAppendElement(i32 %79, i32* %80, i32* %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %89 = call i32 @Tcl_EvalObjEx(i32 %86, i32* %87, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @Tcl_DecrRefCount(i32* %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @Tcl_ResetResult(i32 %94)
  br label %154

96:                                               ; preds = %4
  %97 = load i8*, i8** %7, align 8
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %15, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32* @Tcl_NewStringObj(i8* %101, i32 -1)
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @Tcl_IncrRefCount(i32* %103)
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = ptrtoint i32* %109 to i32
  %111 = call i32* @Tcl_NewWideIntObj(i32 %110)
  %112 = call i32 @Tcl_ListObjAppendElement(i32 %107, i32* %108, i32* %111)
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %118 = call i32 @Tcl_EvalObjEx(i32 %115, i32* %116, i32 %117)
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @Tcl_DecrRefCount(i32* %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @Tcl_ResetResult(i32 %123)
  br label %154

125:                                              ; preds = %4
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to i32*
  store i32* %127, i32** %16, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32* @Tcl_NewStringObj(i8* %130, i32 -1)
  store i32* %131, i32** %10, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @Tcl_IncrRefCount(i32* %132)
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = ptrtoint i32* %138 to i32
  %140 = call i32* @Tcl_NewWideIntObj(i32 %139)
  %141 = call i32 @Tcl_ListObjAppendElement(i32 %136, i32* %137, i32* %140)
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %147 = call i32 @Tcl_EvalObjEx(i32 %144, i32* %145, i32 %146)
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @Tcl_DecrRefCount(i32* %148)
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @Tcl_ResetResult(i32 %152)
  br label %154

154:                                              ; preds = %4, %125, %96, %57, %20
  %155 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %155
}

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32, i32*, i32*) #1

declare dso_local i32* @Tcl_NewWideIntObj(i32) #1

declare dso_local i32 @Tcl_EvalObjEx(i32, i32*, i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32 @Tcl_ResetResult(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
