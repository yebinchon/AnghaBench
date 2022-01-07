; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_page_bytitle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_page_bytitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_match = type { i32 }
%struct.dbm_res = type { i32, i8, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@page_bytitle.match = internal global %struct.dbm_match* null, align 8
@page_bytitle.cp = internal global i8* null, align 8
@page_bytitle.ip = internal global i64 0, align 8
@__const.page_bytitle.res = private unnamed_addr constant %struct.dbm_res { i32 -1, i8 0, i64 0, i32 0 }, align 8
@iteration = common dso_local global i32 0, align 4
@pages = common dso_local global %struct.TYPE_2__* null, align 8
@ITER_NONE = common dso_local global i32 0, align 4
@npages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbm_res*, i32, %struct.dbm_match*)* @page_bytitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_bytitle(%struct.dbm_res* noalias sret %0, i32 %1, %struct.dbm_match* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dbm_match*, align 8
  store i32 %1, i32* %4, align 4
  store %struct.dbm_match* %2, %struct.dbm_match** %5, align 8
  %6 = bitcast %struct.dbm_res* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.dbm_res* @__const.page_bytitle.res to i8*), i64 24, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 129
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 130
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 128
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i1 [ true, %9 ], [ true, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.dbm_match*, %struct.dbm_match** %5, align 8
  %20 = icmp ne %struct.dbm_match* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* @iteration, align 4
  %23 = load %struct.dbm_match*, %struct.dbm_match** %5, align 8
  store %struct.dbm_match* %23, %struct.dbm_match** @page_bytitle.match, align 8
  %24 = load i32, i32* @iteration, align 4
  switch i32 %24, label %43 [
    i32 129, label %25
    i32 128, label %31
    i32 130, label %37
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pages, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @dbm_get(i32 %29)
  store i8* %30, i8** @page_bytitle.cp, align 8
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pages, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @dbm_get(i32 %35)
  store i8* %36, i8** @page_bytitle.cp, align 8
  br label %45

37:                                               ; preds = %21
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pages, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @dbm_get(i32 %41)
  store i8* %42, i8** @page_bytitle.cp, align 8
  br label %45

43:                                               ; preds = %21
  %44 = call i32 (...) @abort() #4
  unreachable

45:                                               ; preds = %37, %31, %25
  %46 = load i8*, i8** @page_bytitle.cp, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ITER_NONE, align 4
  store i32 %49, i32* @iteration, align 4
  store %struct.dbm_match* null, %struct.dbm_match** @page_bytitle.match, align 8
  store i8* null, i8** @page_bytitle.cp, align 8
  %50 = load i64, i64* @npages, align 8
  store i64 %50, i64* @page_bytitle.ip, align 8
  br label %52

51:                                               ; preds = %45
  store i64 0, i64* @page_bytitle.ip, align 8
  br label %52

52:                                               ; preds = %51, %48
  br label %141

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %90, %53
  %55 = load i64, i64* @page_bytitle.ip, align 8
  %56 = load i64, i64* @npages, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load i32, i32* @iteration, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** @page_bytitle.cp, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** @page_bytitle.cp, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.dbm_match*, %struct.dbm_match** @page_bytitle.match, align 8
  %66 = load i8*, i8** @page_bytitle.cp, align 8
  %67 = call i64 @dbm_match(%struct.dbm_match* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %91

70:                                               ; preds = %64
  %71 = load i8*, i8** @page_bytitle.cp, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 0)
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** @page_bytitle.cp, align 8
  %74 = load i32, i32* @iteration, align 4
  %75 = icmp eq i32 %74, 130
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* @page_bytitle.ip, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* @page_bytitle.ip, align 8
  br label %90

79:                                               ; preds = %70
  %80 = load i8*, i8** @page_bytitle.cp, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** @page_bytitle.cp, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** @page_bytitle.cp, align 8
  %87 = load i64, i64* @page_bytitle.ip, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* @page_bytitle.ip, align 8
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %76
  br label %54

91:                                               ; preds = %69, %54
  %92 = load i64, i64* @page_bytitle.ip, align 8
  %93 = load i64, i64* @npages, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @ITER_NONE, align 4
  store i32 %96, i32* @iteration, align 4
  store %struct.dbm_match* null, %struct.dbm_match** @page_bytitle.match, align 8
  store i8* null, i8** @page_bytitle.cp, align 8
  br label %141

97:                                               ; preds = %91
  %98 = load i64, i64* @page_bytitle.ip, align 8
  %99 = getelementptr inbounds %struct.dbm_res, %struct.dbm_res* %0, i32 0, i32 2
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* @iteration, align 4
  %101 = icmp eq i32 %100, 129
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** @page_bytitle.cp, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  br label %108

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i32 [ %106, %102 ], [ 0, %107 ]
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds %struct.dbm_res, %struct.dbm_res* %0, i32 0, i32 1
  store i8 %110, i8* %111, align 4
  %112 = load i64, i64* @page_bytitle.ip, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* @page_bytitle.ip, align 8
  %114 = load i64, i64* @npages, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %137, %116
  %118 = load i8*, i8** @page_bytitle.cp, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** @page_bytitle.cp, align 8
  br label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** @page_bytitle.cp, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @iteration, align 4
  %128 = icmp ne i32 %127, 130
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i8*, i8** @page_bytitle.cp, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 -2
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %129, %126
  %136 = phi i1 [ false, %126 ], [ %134, %129 ]
  br label %137

137:                                              ; preds = %135, %120
  %138 = phi i1 [ true, %120 ], [ %136, %135 ]
  br i1 %138, label %117, label %139

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139, %108
  br label %141

141:                                              ; preds = %140, %95, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @dbm_get(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @dbm_match(%struct.dbm_match*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
