; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_newchunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_newchunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.chunk* }
%struct.chunk = type { i64, i32* }

@NCHUNKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@CHUNK0SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i64)* @newchunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @newchunk(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, 8
  %10 = sub i64 %9, 1
  %11 = and i64 %10, -8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.chunk*, %struct.chunk** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.chunk, %struct.chunk* %14, i64 %17
  store %struct.chunk* %18, %struct.chunk** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.chunk*, %struct.chunk** %5, align 8
  %21 = getelementptr inbounds %struct.chunk, %struct.chunk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %2
  %25 = load %struct.chunk*, %struct.chunk** %5, align 8
  %26 = getelementptr inbounds %struct.chunk, %struct.chunk* %25, i32 1
  store %struct.chunk* %26, %struct.chunk** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NCHUNKS, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = call i32 @bpf_error(%struct.TYPE_4__* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i32, i32* @CHUNK0SIZE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %39, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @malloc(i64 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.chunk*, %struct.chunk** %5, align 8
  %48 = getelementptr inbounds %struct.chunk, %struct.chunk* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.chunk*, %struct.chunk** %5, align 8
  %50 = getelementptr inbounds %struct.chunk, %struct.chunk* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = call i32 @bpf_error(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.chunk*, %struct.chunk** %5, align 8
  %58 = getelementptr inbounds %struct.chunk, %struct.chunk* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memset(i8* %60, i32 0, i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.chunk*, %struct.chunk** %5, align 8
  %65 = getelementptr inbounds %struct.chunk, %struct.chunk* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = call i32 @bpf_error(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %56
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i64, i64* %4, align 8
  %75 = load %struct.chunk*, %struct.chunk** %5, align 8
  %76 = getelementptr inbounds %struct.chunk, %struct.chunk* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.chunk*, %struct.chunk** %5, align 8
  %80 = getelementptr inbounds %struct.chunk, %struct.chunk* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load %struct.chunk*, %struct.chunk** %5, align 8
  %84 = getelementptr inbounds %struct.chunk, %struct.chunk* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  ret i8* %86
}

declare dso_local i32 @bpf_error(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
