; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_ieee754io.c_put_ieee754.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_ieee754io.c_put_ieee754.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@IEEE_BADCALL = common dso_local global i32 0, align 4
@IEEE_OK = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_ieee754(i8** %0, i32 %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = bitcast %struct.TYPE_6__* %10 to i8*
  %18 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %22 [
    i32 129, label %20
    i32 128, label %21
  ]

20:                                               ; preds = %4
  store i32 52, i32* %11, align 4
  br label %24

21:                                               ; preds = %4
  store i32 23, i32* %11, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @IEEE_BADCALL, align 4
  store i32 %23, i32* %5, align 4
  br label %192

24:                                               ; preds = %21, %20
  %25 = call i64 @L_ISNEG(%struct.TYPE_6__* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @L_NEG(%struct.TYPE_6__* %10)
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = call i64 @L_ISZERO(%struct.TYPE_6__* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %190

34:                                               ; preds = %30
  store i64 2147483648, i64* %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  store i32 63, i32* %12, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %15, align 8
  %47 = and i64 %45, %46
  %48 = icmp eq i64 %47, 0
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi i1 [ false, %39 ], [ %48, %42 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load i64, i64* %15, align 8
  %53 = lshr i64 %52, 1
  store i64 %53, i64* %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %12, align 4
  br label %39

56:                                               ; preds = %49
  br label %75

57:                                               ; preds = %34
  store i32 31, i32* %12, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %15, align 8
  %65 = and i64 %63, %64
  %66 = icmp eq i64 %65, 0
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i1 [ false, %58 ], [ %66, %61 ]
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = load i64, i64* %15, align 8
  %71 = lshr i64 %70, 1
  store i64 %71, i64* %15, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %12, align 4
  br label %58

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* %7, align 4
  switch i32 %76, label %189 [
    i32 128, label %77
    i32 129, label %120
  ]

77:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %78, 32
  br i1 %79, label %80, label %105

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 32
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %82, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %89, 32
  %91 = sub nsw i32 %88, %90
  %92 = shl i32 %87, %91
  store i32 %92, i32* %13, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %96, 32
  %98 = sub nsw i32 %95, %97
  %99 = zext i32 %98 to i64
  %100 = lshr i64 %94, %99
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = or i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %13, align 4
  br label %119

105:                                              ; preds = %77
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = shl i64 %107, %111
  %113 = load i32, i32* %11, align 4
  %114 = shl i32 1, %113
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = and i64 %112, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %105, %80
  br label %189

120:                                              ; preds = %75
  %121 = load i32, i32* %12, align 4
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %171

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %126, %127
  %129 = shl i32 %125, %128
  %130 = load i32, i32* %11, align 4
  %131 = sub nsw i32 %130, 32
  %132 = shl i32 1, %131
  %133 = sub nsw i32 %132, 1
  %134 = and i32 %129, %133
  store i32 %134, i32* %14, align 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sub nsw i32 32, %139
  %141 = zext i32 %140 to i64
  %142 = lshr i64 %136, %141
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = or i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %14, align 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %149, %150
  %152 = shl i32 1, %151
  %153 = sub nsw i32 %152, 1
  %154 = and i32 %148, %153
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 32, %157
  %159 = shl i32 %154, %158
  store i32 %159, i32* %13, align 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %162, %163
  %165 = zext i32 %164 to i64
  %166 = lshr i64 %161, %165
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = or i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  br label %188

171:                                              ; preds = %120
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sub nsw i32 %174, 32
  %176 = load i32, i32* %12, align 4
  %177 = sub nsw i32 %175, %176
  %178 = zext i32 %177 to i64
  %179 = shl i64 %173, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %14, align 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %183, 32
  %185 = zext i32 %184 to i64
  %186 = shl i64 %182, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %171, %123
  br label %189

189:                                              ; preds = %188, %75, %119
  br label %190

190:                                              ; preds = %189, %33
  %191 = load i32, i32* @IEEE_OK, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %190, %22
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @L_ISNEG(%struct.TYPE_6__*) #2

declare dso_local i32 @L_NEG(%struct.TYPE_6__*) #2

declare dso_local i64 @L_ISZERO(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
