; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_nprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_nprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }

@INDIR_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"<BAD PTR>\00", align 1
@EDNS0_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"<ELT %d>\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @ns_nprint(%struct.TYPE_7__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = call i64 @labellen(%struct.TYPE_7__* %15, i64* %16)
  store i64 %17, i64* %9, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %183

20:                                               ; preds = %3
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ND_TTEST2(i64 %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i64* null, i64** %4, align 8
  br label %183

26:                                               ; preds = %20
  %27 = load i64*, i64** %6, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = ptrtoint i64* %27 to i64
  %30 = ptrtoint i64* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  store i64 %32, i64* %14, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %6, align 8
  %35 = load i64, i64* %33, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* @INDIR_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @INDIR_MASK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64* %43, i64** %10, align 8
  br label %44

44:                                               ; preds = %40, %26
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %178

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %176, %106, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i64*, i64** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = icmp ult i64* %52, %55
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i1 [ false, %48 ], [ %56, %51 ]
  br i1 %58, label %59, label %177

59:                                               ; preds = %57
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @INDIR_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* @INDIR_MASK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i64*, i64** %6, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64* %70, i64** %10, align 8
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ND_TTEST2(i64 %73, i32 1)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i64* null, i64** %4, align 8
  br label %183

77:                                               ; preds = %71
  %78 = load i64, i64* %8, align 8
  %79 = shl i64 %78, 8
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %79, %81
  %83 = and i64 %82, 16383
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([10 x i8]* @.str to %struct.TYPE_7__*))
  store i64* null, i64** %4, align 8
  br label %183

90:                                               ; preds = %77
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %14, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64* %94, i64** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = call i64 @labellen(%struct.TYPE_7__* %95, i64* %96)
  store i64 %97, i64* %9, align 8
  %98 = icmp eq i64 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i64* null, i64** %4, align 8
  br label %183

100:                                              ; preds = %90
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ND_TTEST2(i64 %102, i32 1)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i64* null, i64** %4, align 8
  br label %183

106:                                              ; preds = %100
  %107 = load i64*, i64** %6, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %6, align 8
  %109 = load i64, i64* %107, align 8
  store i64 %109, i64* %8, align 8
  br label %48

110:                                              ; preds = %59
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @INDIR_MASK, align 8
  %113 = and i64 %111, %112
  %114 = load i64, i64* @EDNS0_MASK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %110
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @INDIR_MASK, align 8
  %119 = xor i64 %118, -1
  %120 = and i64 %117, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  switch i32 %122, label %130 [
    i32 128, label %123
  ]

123:                                              ; preds = %116
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = call i32* @blabel_print(%struct.TYPE_7__* %124, i64* %125)
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i64* null, i64** %4, align 8
  br label %183

129:                                              ; preds = %123
  br label %136

130:                                              ; preds = %116
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_7__*
  %135 = call i32 @ND_PRINT(%struct.TYPE_7__* %134)
  store i64* null, i64** %4, align 8
  br label %183

136:                                              ; preds = %129
  br label %148

137:                                              ; preds = %110
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = load i64*, i64** %6, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = call i64 @fn_printn(%struct.TYPE_7__* %138, i64* %139, i64 %140, i64* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i64* null, i64** %4, align 8
  br label %183

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %136
  %149 = load i64, i64* %9, align 8
  %150 = load i64*, i64** %6, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %149
  store i64* %151, i64** %6, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_7__*))
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = load i64*, i64** %6, align 8
  %156 = call i64 @labellen(%struct.TYPE_7__* %154, i64* %155)
  store i64 %156, i64* %9, align 8
  %157 = icmp eq i64 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  store i64* null, i64** %4, align 8
  br label %183

159:                                              ; preds = %148
  %160 = load i64*, i64** %6, align 8
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @ND_TTEST2(i64 %161, i32 1)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i64* null, i64** %4, align 8
  br label %183

165:                                              ; preds = %159
  %166 = load i64*, i64** %6, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %6, align 8
  %168 = load i64, i64* %166, align 8
  store i64 %168, i64* %8, align 8
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %165
  %172 = load i64, i64* %9, align 8
  %173 = add nsw i64 %172, 1
  %174 = load i64*, i64** %10, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 %173
  store i64* %175, i64** %10, align 8
  br label %176

176:                                              ; preds = %171, %165
  br label %48

177:                                              ; preds = %57
  br label %181

178:                                              ; preds = %44
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_7__*))
  br label %181

181:                                              ; preds = %178, %177
  %182 = load i64*, i64** %10, align 8
  store i64* %182, i64** %4, align 8
  br label %183

183:                                              ; preds = %181, %164, %158, %146, %130, %128, %105, %99, %87, %76, %25, %19
  %184 = load i64*, i64** %4, align 8
  ret i64* %184
}

declare dso_local i64 @labellen(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @ND_TTEST2(i64, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32* @blabel_print(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @fn_printn(%struct.TYPE_7__*, i64*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
