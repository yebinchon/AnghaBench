; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_search.c_v_searchw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_search.c_v_searchw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@RE_WSTART_LEN = common dso_local global i32 0, align 4
@RE_WSTOP_LEN = common dso_local global i32 0, align 4
@RE_NWSTOP_LEN = common dso_local global i32 0, align 4
@RE_WSTART = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@RE_WSTOP = common dso_local global i32* null, align 8
@RE_NWSTOP = common dso_local global i32* null, align 8
@SEARCH_SET = common dso_local global i32 0, align 4
@FORWARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_searchw(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_2__* @VIP(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @RE_WSTART_LEN, align 4
  %15 = call i64 @MAX(i32 %14, i32 1)
  %16 = add i64 %13, %15
  %17 = load i32, i32* @RE_WSTOP_LEN, align 4
  %18 = load i32, i32* @RE_NWSTOP_LEN, align 4
  %19 = call i64 @MAX(i32 %17, i32 %18)
  %20 = add i64 %16, %19
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @GET_SPACE_RETW(i32* %21, i32* %22, i64 %23, i64 %24)
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_2__* @VIP(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @inword(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** @RE_WSTART, align 8
  %38 = load i32, i32* @RE_WSTART_LEN, align 4
  %39 = call i32 @MEMCPY(i32* %36, i32* %37, i32 %38)
  %40 = load i32, i32* @RE_WSTART_LEN, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %9, align 8
  br label %60

44:                                               ; preds = %2
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_2__* @VIP(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @is_special(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @L(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @MEMCPY(i32* %54, i32* %55, i32 1)
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32* %58, i32** %9, align 8
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call %struct.TYPE_2__* @VIP(i32* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call %struct.TYPE_2__* @VIP(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @MEMCPY(i32* %61, i32* %65, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call %struct.TYPE_2__* @VIP(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @inword(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %60
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** @RE_WSTOP, align 8
  %86 = load i32, i32* @RE_WSTOP_LEN, align 4
  %87 = call i32 @MEMCPY(i32* %84, i32* %85, i32 %86)
  %88 = load i32, i32* @RE_WSTOP_LEN, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %9, align 8
  br label %101

92:                                               ; preds = %60
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** @RE_NWSTOP, align 8
  %95 = load i32, i32* @RE_NWSTOP_LEN, align 4
  %96 = call i32 @MEMCPY(i32* %93, i32* %94, i32 %95)
  %97 = load i32, i32* @RE_NWSTOP_LEN, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %9, align 8
  br label %101

101:                                              ; preds = %92, %83
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = ptrtoint i32* %102 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  store i64 %107, i64* %6, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @SEARCH_SET, align 4
  %113 = load i32, i32* @FORWARD, align 4
  %114 = call i32 @v_search(i32* %108, i32* %109, i32* %110, i64 %111, i32 %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @FREE_SPACEW(i32* %115, i32* %116, i64 %117)
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_2__* @VIP(i32*) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @GET_SPACE_RETW(i32*, i32*, i64, i64) #1

declare dso_local i64 @inword(i32) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i32) #1

declare dso_local i64 @is_special(i32) #1

declare dso_local i32* @L(i8*) #1

declare dso_local i32 @v_search(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @FREE_SPACEW(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
