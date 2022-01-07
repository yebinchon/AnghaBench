; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c_xdrrec_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c_xdrrec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32, i8*, i64, i64, i8*, i32, i64, i8*, i32, i64, i32*, i64, i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"xdrrec_create: out of memory\00", align 1
@xdrrec_ops = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdrrec_create(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i32 (i8*, i8*, i32)* %4, i32 (i8*, i8*, i32)* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i8*, i32)*, align 8
  %12 = alloca i32 (i8*, i8*, i32)*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i8*, i32)* %4, i32 (i8*, i8*, i32)** %11, align 8
  store i32 (i8*, i8*, i32)* %5, i32 (i8*, i8*, i32)** %12, align 8
  %14 = call i8* @mem_alloc(i32 176)
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %144

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @fix_buf_size(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @mem_alloc(i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 20
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 20
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = call i32 @mem_free(%struct.TYPE_6__* %38, i32 176)
  br label %144

40:                                               ; preds = %20
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @fix_buf_size(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i8* @mem_alloc(i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 16
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 16
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 20
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @mem_free(%struct.TYPE_6__* %58, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = call i32 @mem_free(%struct.TYPE_6__* %61, i32 176)
  br label %144

63:                                               ; preds = %40
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32* @xdrrec_ops, i32** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 22
  store i8* %69, i8** %71, align 8
  %72 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %11, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 (i8*, i8*, i32)* %72, i32 (i8*, i8*, i32)** %74, align 8
  %75 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %12, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i32 (i8*, i8*, i32)* %75, i32 (i8*, i8*, i32)** %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 20
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 18
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 19
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 20
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = bitcast %struct.TYPE_6__* %87 to i8*
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 21
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 19
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 4
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %93, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 18
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = sext i32 %96 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %98, align 8
  %102 = load i8*, i8** @FALSE, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 17
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 16
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 14
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 14
  %116 = load i32*, i32** %115, align 8
  %117 = sext i32 %113 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %115, align 8
  %119 = ptrtoint i32* %118 to i64
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 15
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 13
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 8
  %127 = load i8*, i8** @FALSE, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 11
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 10
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 9
  %134 = bitcast i32* %133 to i8*
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @FALSE, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %63, %54, %36, %18
  ret void
}

declare dso_local i8* @mem_alloc(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @fix_buf_size(i32) #1

declare dso_local i32 @mem_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
