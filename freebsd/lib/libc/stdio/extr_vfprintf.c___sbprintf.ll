; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfprintf.c___sbprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfprintf.c___sbprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, i64, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@FAKE_FILE = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@__SNBF = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8*, i32)* @__sbprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sbprintf(%struct.TYPE_9__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_9__* @FAKE_FILE to i8*), i64 72, i1 false)
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i64 @prepwrite(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EOF, align 4
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @__SNBF, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 9
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i8* %19, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i8* %19, i8** %55, align 8
  %56 = trunc i64 %17 to i32
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @__vfprintf(%struct.TYPE_9__* %11, i32 %61, i8* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %25
  %68 = call i64 @__fflush(%struct.TYPE_9__* %11)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @EOF, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %67, %25
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @__SERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* @__SERR, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %23
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @prepwrite(%struct.TYPE_9__*) #3

declare dso_local i32 @__vfprintf(%struct.TYPE_9__*, i32, i8*, i32) #3

declare dso_local i64 @__fflush(%struct.TYPE_9__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
