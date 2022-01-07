; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UES/extr_citrus_ues.c__citrus_UES_wcrtomb_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UES/extr_citrus_ues.c__citrus_UES_wcrtomb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@MODE_C99 = common dso_local global i32 0, align 4
@BMP_MAX = common dso_local global i32 0, align 4
@UCS2_BIT = common dso_local global i32 0, align 4
@UCS2_MAX = common dso_local global i32 0, align 4
@UCS4_MAX = common dso_local global i32 0, align 4
@UCS4_BIT = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i64, %struct.TYPE_5__*, i64*)* @_citrus_UES_wcrtomb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UES_wcrtomb_priv(%struct.TYPE_6__* noalias %0, i8* noalias %1, i64 %2, i64 %3, %struct.TYPE_5__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %7, align 4
  br label %167

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MODE_C99, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @is_basic(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %53

33:                                               ; preds = %22
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp sle i32 %35, 127
  br i1 %36, label %37, label %53

37:                                               ; preds = %33, %29
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %10, align 8
  %40 = icmp ult i64 %38, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %164

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %44, i8* %52, align 1
  br label %149

53:                                               ; preds = %33, %29
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @BMP_MAX, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i64, i64* %10, align 8
  %60 = icmp ult i64 %59, 6
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %164

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @UCS2_BIT, align 4
  %69 = call i8* @to_str(i8* %66, i64 %67, i32 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %148

73:                                               ; preds = %53
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MODE_C99, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %73
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @UCS2_MAX, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %80
  %86 = load i64, i64* %10, align 8
  %87 = icmp ult i64 %86, 12
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %164

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @ucs_to_surrogate(i64 %90, i64* %14, i64* %15)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i64, i64* %14, align 8
  %97 = load i32, i32* @UCS2_BIT, align 4
  %98 = call i8* @to_str(i8* %95, i64 %96, i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = ptrtoint i8* %102 to i64
  store i64 %103, i64* %100, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 6
  %108 = load i64, i64* %15, align 8
  %109 = load i32, i32* @UCS2_BIT, align 4
  %110 = call i8* @to_str(i8* %107, i64 %108, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr i8, i8* %110, i64 %113
  %115 = ptrtoint i8* %114 to i64
  store i64 %115, i64* %112, align 8
  br label %147

116:                                              ; preds = %80, %73
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MODE_C99, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %116
  %124 = load i64, i64* %11, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @UCS4_MAX, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load i64, i64* %10, align 8
  %130 = icmp ult i64 %129, 10
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %164

132:                                              ; preds = %128
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i64, i64* %11, align 8
  %138 = load i32, i32* @UCS4_BIT, align 4
  %139 = call i8* @to_str(i8* %136, i64 %137, i32 %138)
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %146

143:                                              ; preds = %123, %116
  %144 = load i64*, i64** %13, align 8
  store i64 -1, i64* %144, align 8
  %145 = load i32, i32* @EILSEQ, align 4
  store i32 %145, i32* %7, align 4
  br label %167

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %89
  br label %148

148:                                              ; preds = %147, %62
  br label %149

149:                                              ; preds = %148, %42
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @memcpy(i8* %150, i8* %153, i64 %156)
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %13, align 8
  store i64 %160, i64* %161, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  store i32 0, i32* %7, align 4
  br label %167

164:                                              ; preds = %131, %88, %61, %41
  %165 = load i64*, i64** %13, align 8
  store i64 -1, i64* %165, align 8
  %166 = load i32, i32* @E2BIG, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %164, %149, %143, %20
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @is_basic(i64) #1

declare dso_local i8* @to_str(i8*, i64, i32) #1

declare dso_local i32 @ucs_to_surrogate(i64, i64*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
