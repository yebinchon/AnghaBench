; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_split.c_bt_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_split.c_bt_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i8*, i8* }

@P_INVALID = common dso_local global i8* null, align 8
@BTDATAOFF = common dso_local global i32 0, align 4
@P_TYPE = common dso_local global i32 0, align 4
@bt_rootsplit = common dso_local global i32 0, align 4
@bt_split = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__**, %struct.TYPE_15__**, i32*, i64)* @bt_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @bt_root(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__** %2, %struct.TYPE_15__** %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__**, align 8
  %11 = alloca %struct.TYPE_15__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = call %struct.TYPE_15__* @__bt_new(%struct.TYPE_16__* %19, i8** %17)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %14, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = call %struct.TYPE_15__* @__bt_new(%struct.TYPE_16__* %23, i8** %18)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %15, align 8
  %25 = icmp eq %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %6
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %82

27:                                               ; preds = %22
  %28 = load i8*, i8** %17, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %18, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @P_INVALID, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* @BTDATAOFF, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @P_TYPE, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call %struct.TYPE_15__* @bt_psplit(%struct.TYPE_16__* %70, %struct.TYPE_15__* %71, %struct.TYPE_15__* %72, %struct.TYPE_15__* %73, i32* %74, i64 %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %16, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %78 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %80 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %7, align 8
  br label %82

82:                                               ; preds = %27, %26
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %83
}

declare dso_local %struct.TYPE_15__* @__bt_new(%struct.TYPE_16__*, i8**) #1

declare dso_local %struct.TYPE_15__* @bt_psplit(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
