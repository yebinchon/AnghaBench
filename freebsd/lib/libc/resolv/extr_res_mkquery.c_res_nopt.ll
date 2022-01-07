; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkquery.c_res_nopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkquery.c_res_nopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@RRFIXEDSZ = common dso_local global i32 0, align 4
@ns_t_opt = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4
@NOERROR = common dso_local global i64 0, align 8
@RES_USE_DNSSEC = common dso_local global i32 0, align 4
@NS_OPT_DNSSEC_OK = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_nopt(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %12, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = load i32, i32* @RRFIXEDSZ, align 4
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %104

37:                                               ; preds = %5
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %13, align 8
  store i32 0, i32* %38, align 4
  %40 = load i32, i32* @ns_t_opt, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @ns_put16(i32 %40, i32* %41)
  %43 = load i32, i32* @INT16SZ, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %13, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %47, 65535
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 65535, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 65535
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @ns_put16(i32 %52, i32* %53)
  %55 = load i32, i32* @INT16SZ, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %13, align 8
  %59 = load i64, i64* @NOERROR, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %13, align 8
  store i32 0, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RES_USE_DNSSEC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %50
  %72 = load i32, i32* @NS_OPT_DNSSEC_OK, align 4
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %71, %50
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @ns_put16(i32 %76, i32* %77)
  %79 = load i32, i32* @INT16SZ, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %13, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @ns_put16(i32 0, i32* %83)
  %85 = load i32, i32* @INT16SZ, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %13, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ntohs(i32 %91)
  %93 = add nsw i64 %92, 1
  %94 = call i32 @htons(i64 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %75, %36
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @ns_put16(i32, i32*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
