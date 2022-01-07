; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_xdryp.c_xdr_ypresp_all_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_xdryp.c_xdr_ypresp_all_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_all = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@YP_YPERR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ypresp_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_ypresp_all_seq(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ypresp_all, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call i32 @bzero(%struct.ypresp_all* %6, i32 48)
  br label %12

12:                                               ; preds = %2, %146
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @xdr_ypresp_all(i32* %13, %struct.ypresp_all* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %18 = load i32, i32* @YP_YPERR, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %147

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %27 = load i32*, i32** %5, align 8
  store i32 129, i32* %27, align 4
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %147

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %141 [
    i32 128, label %35
    i32 129, label %137
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i64 @malloc(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %49 = load i32, i32* @YP_YPERR, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %147

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @bcopy(i32 %57, i8* %58, i64 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  store i8 0, i8* %71, align 1
  %72 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = call i64 @malloc(i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %52
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @free(i8* %84)
  %86 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %87 = load i32, i32* @YP_YPERR, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %147

90:                                               ; preds = %52
  %91 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @bcopy(i32 %95, i8* %96, i64 %101)
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  store i8 0, i8* %109, align 1
  %110 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %111 = load i32, i32* %7, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds %struct.ypresp_all, %struct.ypresp_all* %6, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @ypresp_data, align 4
  %125 = call i32 @ypresp_allfn(i32 %111, i8* %112, i64 %117, i8* %118, i64 %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %90
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %3, align 4
  br label %147

136:                                              ; preds = %90
  br label %146

137:                                              ; preds = %29
  %138 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %139 = load i32*, i32** %5, align 8
  store i32 129, i32* %139, align 4
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %3, align 4
  br label %147

141:                                              ; preds = %29
  %142 = call i32 @xdr_free(i32 ptrtoint (i32 (i32*, %struct.ypresp_all*)* @xdr_ypresp_all to i32), %struct.ypresp_all* %6)
  %143 = load i32, i32* %7, align 4
  %144 = load i32*, i32** %5, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %3, align 4
  br label %147

146:                                              ; preds = %136
  br label %12

147:                                              ; preds = %141, %137, %134, %83, %47, %25, %16
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @bzero(%struct.ypresp_all*, i32) #1

declare dso_local i32 @xdr_ypresp_all(i32*, %struct.ypresp_all*) #1

declare dso_local i32 @xdr_free(i32, %struct.ypresp_all*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ypresp_allfn(i32, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
