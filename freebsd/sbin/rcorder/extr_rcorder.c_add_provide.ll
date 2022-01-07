; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_add_provide.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_add_provide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i8*, i8* }

@provide_hash = common dso_local global i32 0, align 4
@SET = common dso_local global i8* null, align 8
@RESET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @add_provide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_provide(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @provide_hash, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @Hash_CreateEntry(i32 %10, i8* %11, i32* %9)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_7__* @Hash_GetValue(i32* %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = call i8* @emalloc(i32 40)
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = load i8*, i8** @SET, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @RESET, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = call i32 @Hash_SetValue(i32* %32, %struct.TYPE_7__* %33)
  br label %35

35:                                               ; preds = %17, %2
  %36 = call i8* @emalloc(i32 40)
  %37 = bitcast i8* %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %7, align 8
  %38 = load i8*, i8** @RESET, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @RESET, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %35
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %67, align 8
  br label %68

68:                                               ; preds = %62, %35
  %69 = call i8* @emalloc(i32 16)
  %70 = bitcast i8* %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  ret void
}

declare dso_local i32* @Hash_CreateEntry(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @Hash_GetValue(i32*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @Hash_SetValue(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
