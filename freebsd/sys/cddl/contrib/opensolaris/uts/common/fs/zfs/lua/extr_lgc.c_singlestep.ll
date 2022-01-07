; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_singlestep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32**, i32**, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@GCSatomic = common dso_local global i32 0, align 4
@GCSWEEPCOST = common dso_local global i32 0, align 4
@GCSWEEPMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlestep(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_8__* @G(i32* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %184 [
    i32 132, label %15
    i32 131, label %38
    i32 129, label %77
    i32 128, label %133
    i32 130, label %154
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = call i32 @isgenerational(%struct.TYPE_8__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @lua_assert(i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @restartcollection(%struct.TYPE_8__* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 131, i32* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %186

38:                                               ; preds = %1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = call i32 @propagatemark(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %2, align 4
  br label %186

54:                                               ; preds = %38
  %55 = load i32, i32* @GCSatomic, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @atomic(i32* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @entersweep(i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @GCSWEEPCOST, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %2, align 4
  br label %186

77:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %109, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @GCSWEEPMAX, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %87, %91
  br label %93

93:                                               ; preds = %82, %78
  %94 = phi i1 [ false, %78 ], [ %92, %82 ]
  br i1 %94, label %95, label %112

95:                                               ; preds = %93
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = call i32 @sweepwholelist(i32* %96, i32* %107)
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %78

112:                                              ; preds = %93
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %120, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %112
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 128, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %112
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @GCSWEEPCOST, align 4
  %132 = mul nsw i32 %130, %131
  store i32 %132, i32* %2, align 4
  br label %186

133:                                              ; preds = %1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  %136 = load i32**, i32*** %135, align 8
  %137 = icmp ne i32** %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 6
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* @GCSWEEPMAX, align 4
  %144 = call i8* @sweeplist(i32* %139, i32** %142, i32 %143)
  %145 = bitcast i8* %144 to i32**
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 6
  store i32** %145, i32*** %147, align 8
  %148 = load i32, i32* @GCSWEEPMAX, align 4
  %149 = load i32, i32* @GCSWEEPCOST, align 4
  %150 = mul nsw i32 %148, %149
  store i32 %150, i32* %2, align 4
  br label %186

151:                                              ; preds = %133
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i32 130, i32* %153, align 8
  store i32 0, i32* %2, align 4
  br label %186

154:                                              ; preds = %1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load i32**, i32*** %156, align 8
  %158 = icmp ne i32** %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load i32*, i32** %3, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* @GCSWEEPMAX, align 4
  %165 = call i8* @sweeplist(i32* %160, i32** %163, i32 %164)
  %166 = bitcast i8* %165 to i32**
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  store i32** %166, i32*** %168, align 8
  %169 = load i32, i32* @GCSWEEPMAX, align 4
  %170 = load i32, i32* @GCSWEEPCOST, align 4
  %171 = mul nsw i32 %169, %170
  store i32 %171, i32* %2, align 4
  br label %186

172:                                              ; preds = %154
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32* @obj2gco(i32 %175)
  store i32* %176, i32** %9, align 8
  %177 = load i32*, i32** %3, align 8
  %178 = call i8* @sweeplist(i32* %177, i32** %9, i32 1)
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @checkSizes(i32* %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i32 132, i32* %182, align 8
  %183 = load i32, i32* @GCSWEEPCOST, align 4
  store i32 %183, i32* %2, align 4
  br label %186

184:                                              ; preds = %1
  %185 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %184, %172, %159, %151, %138, %129, %54, %43, %15
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_8__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isgenerational(%struct.TYPE_8__*) #1

declare dso_local i32 @restartcollection(%struct.TYPE_8__*) #1

declare dso_local i32 @propagatemark(%struct.TYPE_8__*) #1

declare dso_local i32 @atomic(i32*) #1

declare dso_local i32 @entersweep(i32*) #1

declare dso_local i32 @sweepwholelist(i32*, i32*) #1

declare dso_local i8* @sweeplist(i32*, i32**, i32) #1

declare dso_local i32* @obj2gco(i32) #1

declare dso_local i32 @checkSizes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
