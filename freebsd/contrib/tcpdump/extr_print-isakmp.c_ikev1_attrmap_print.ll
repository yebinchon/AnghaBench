; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_attrmap_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_attrmap_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attrmap = type { i64, i64*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"[|attr]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"type=%s \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"type=#%d \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"value=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"len=%d value=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.attrmap*, i64)* @ikev1_attrmap_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ikev1_attrmap_print(i32* %0, i32* %1, i32* %2, %struct.attrmap* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.attrmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.attrmap* %3, %struct.attrmap** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ND_TCHECK(i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 4, i32* %12, align 4
  br label %33

25:                                               ; preds = %5
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = call i32 @ND_TCHECK_16BITS(i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = call i32 @EXTRACT_16BITS(i32* %30)
  %32 = add nsw i32 4, %31
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = icmp ult i32* %34, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str to i32*))
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32* %44, i32** %6, align 8
  br label %172

45:                                               ; preds = %33
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @ND_TCHECK_16BITS(i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i32 @EXTRACT_16BITS(i32* %52)
  %54 = and i32 %53, 32767
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %13, align 8
  %56 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %57 = icmp ne %struct.attrmap* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %45
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %63, i64 %64
  %66 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %71, i64 %72
  %74 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 @ND_PRINT(i32* %76)
  br label %83

78:                                               ; preds = %62, %58, %45
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %13, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @ND_PRINT(i32* %81)
  br label %83

83:                                               ; preds = %78, %69
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %146

89:                                               ; preds = %83
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = call i32 @ND_TCHECK_16BITS(i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = call i32 @EXTRACT_16BITS(i32* %96)
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %14, align 8
  %99 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %100 = icmp ne %struct.attrmap* %99, null
  br i1 %100, label %101, label %135

101:                                              ; preds = %89
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %101
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %107, i64 %108
  %110 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %106, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %105
  %114 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %114, i64 %115
  %117 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %113
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.attrmap*, %struct.attrmap** %10, align 8
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %125, i64 %126
  %128 = getelementptr inbounds %struct.attrmap, %struct.attrmap* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = call i32 @ND_PRINT(i32* %133)
  br label %145

135:                                              ; preds = %113, %105, %101, %89
  %136 = load i32*, i32** %7, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = call i32 @rawprint(i32* %136, i32* %138, i32 2)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  br label %171

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %123
  br label %164

146:                                              ; preds = %83
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i32*
  %152 = call i32 @ND_PRINT(i32* %151)
  %153 = load i32*, i32** %7, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 4
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %156, 4
  %158 = call i32 @rawprint(i32* %153, i32* %155, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %146
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  br label %171

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32* %170, i32** %6, align 8
  br label %172

171:                                              ; preds = %160, %141
  store i32* null, i32** %6, align 8
  br label %172

172:                                              ; preds = %171, %164, %40
  %173 = load i32*, i32** %6, align 8
  ret i32* %173
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @rawprint(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
