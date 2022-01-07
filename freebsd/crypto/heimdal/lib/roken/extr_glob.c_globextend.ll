; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_globextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_globextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i32 }

@GLOB_NOSPACE = common dso_local global i32 0, align 4
@GLOB_LIMIT = common dso_local global i32 0, align 4
@ARG_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64*)* @globextend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globextend(i32* %0, %struct.TYPE_3__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 2, %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  store i64 %23, i64* %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i8* @realloc(i8** %31, i64 %32)
  br label %37

34:                                               ; preds = %3
  %35 = load i64, i64* %10, align 8
  %36 = call i8* @malloc(i64 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i8* [ %33, %28 ], [ %36, %34 ]
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %8, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = icmp eq i8** %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %43, i32* %4, align 4
  br label %147

44:                                               ; preds = %37
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = icmp eq i8** %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8**, i8*** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8** %60, i8*** %8, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %68, %54
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8**, i8*** %8, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 -1
  store i8** %70, i8*** %8, align 8
  store i8* null, i8** %70, align 8
  br label %64

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %49, %44
  %73 = load i8**, i8*** %8, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i8** %73, i8*** %75, align 8
  %76 = load i32*, i32** %5, align 8
  store i32* %76, i32** %13, align 8
  br label %77

77:                                               ; preds = %82, %72
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %13, align 8
  %80 = load i32, i32* %78, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %77

83:                                               ; preds = %77
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %90
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i8* @malloc(i64 %94)
  store i8* %95, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %83
  %98 = load i32*, i32** %5, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @g_Ctoc(i32* %98, i8* %99)
  %101 = load i8*, i8** %12, align 8
  %102 = load i8**, i8*** %8, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = add nsw i32 %105, %108
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %102, i64 %111
  store i8* %101, i8** %112, align 8
  br label %113

113:                                              ; preds = %97, %83
  %114 = load i8**, i8*** %8, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %114, i64 %122
  store i8* null, i8** %123, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GLOB_LIMIT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %113
  %131 = load i64, i64* %10, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %131, %133
  %135 = load i64, i64* @ARG_MAX, align 8
  %136 = icmp uge i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  store i64 0, i64* @errno, align 8
  %138 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %138, i32* %4, align 4
  br label %147

139:                                              ; preds = %130, %113
  %140 = load i8*, i8** %12, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @GLOB_NOSPACE, align 4
  br label %145

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %137, %42
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i8* @realloc(i8**, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @g_Ctoc(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
