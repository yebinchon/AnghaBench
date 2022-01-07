; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_intel_sha1_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_intel_sha1_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_ctxt = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @intel_sha1_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sha1_update(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha1_ctxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.sha1_ctxt*
  store %struct.sha1_ctxt* %15, %struct.sha1_ctxt** %7, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  store i64 0, i64* %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %21 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 64
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = mul nsw i32 %28, 64
  %30 = mul nsw i32 %29, 8
  %31 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %32 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %30
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %39 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @intel_sha1_step(i32 %41, i8* %44, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 64
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %25, %19, %3
  br label %53

53:                                               ; preds = %130, %52
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %134

58:                                               ; preds = %53
  %59 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %60 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = srem i32 %61, 64
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 64, %64
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %68, %69
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i64, i64* %9, align 8
  br label %79

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %74, %72
  %80 = phi i64 [ %73, %72 ], [ %78, %74 ]
  store i64 %80, i64* %12, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %85 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @bcopy(i8* %83, i32* %89, i64 %90)
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %94 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %100 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = srem i32 %101, 64
  store i32 %102, i32* %100, align 8
  %103 = load i64, i64* %12, align 8
  %104 = mul i64 %103, 8
  %105 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %106 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, %104
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %115 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = srem i32 %116, 64
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %79
  %120 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %121 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %7, align 8
  %125 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = bitcast i32* %127 to i8*
  %129 = call i32 @intel_sha1_step(i32 %123, i8* %128, i32 1)
  br label %130

130:                                              ; preds = %119, %79
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %11, align 8
  br label %53

134:                                              ; preds = %53
  ret i32 0
}

declare dso_local i32 @intel_sha1_step(i32, i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
