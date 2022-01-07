; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_do_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_do_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.user_segment_descriptor }
%struct.user_segment_descriptor = type { i64, i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.reg = type { i64, i64, i64, i64, i64, i64 }

@curproc = common dso_local global %struct.TYPE_11__* null, align 8
@SEL_UPL = common dso_local global i64 0, align 8
@max_ldt_segment = common dso_local global i64 0, align 8
@NGDT = common dso_local global i64 0, align 8
@gdt = common dso_local global %struct.TYPE_13__* null, align 8
@PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.reg*, i64*)* @fasttrap_do_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_do_seg(%struct.TYPE_12__* %0, %struct.reg* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.reg*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.user_segment_descriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.reg* %1, %struct.reg** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curproc, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %8, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 133, label %18
    i32 132, label %22
    i32 131, label %26
    i32 130, label %30
    i32 129, label %34
    i32 128, label %38
  ]

18:                                               ; preds = %3
  %19 = load %struct.reg*, %struct.reg** %6, align 8
  %20 = getelementptr inbounds %struct.reg, %struct.reg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.reg*, %struct.reg** %6, align 8
  %24 = getelementptr inbounds %struct.reg, %struct.reg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.reg*, %struct.reg** %6, align 8
  %28 = getelementptr inbounds %struct.reg, %struct.reg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  br label %42

30:                                               ; preds = %3
  %31 = load %struct.reg*, %struct.reg** %6, align 8
  %32 = getelementptr inbounds %struct.reg, %struct.reg* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  br label %42

34:                                               ; preds = %3
  %35 = load %struct.reg*, %struct.reg** %6, align 8
  %36 = getelementptr inbounds %struct.reg, %struct.reg* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.reg*, %struct.reg** %6, align 8
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %3, %38, %34, %30, %26, %22, %18
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @ISPL(i64 %43)
  %45 = load i64, i64* @SEL_UPL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %183

48:                                               ; preds = %42
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @IDXSEL(i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @ISLDT(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @max_ldt_segment, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %183

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.user_segment_descriptor*
  store %struct.user_segment_descriptor* %68, %struct.user_segment_descriptor** %9, align 8
  br label %80

69:                                               ; preds = %48
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @NGDT, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %183

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @gdt, align 8
  %76 = call %struct.user_segment_descriptor** @PCPU_PTR(%struct.TYPE_13__* %75)
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %76, i64 %77
  %79 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %78, align 8
  store %struct.user_segment_descriptor* %79, %struct.user_segment_descriptor** %9, align 8
  br label %80

80:                                               ; preds = %74, %59
  %81 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %82 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SEL_UPL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %88 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %80
  store i32 -1, i32* %4, align 4
  br label %183

92:                                               ; preds = %86
  %93 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %94 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = and i64 %96, 16
  %98 = icmp ne i64 %97, 16
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %183

100:                                              ; preds = %92
  %101 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %102 = call i32 @USD_GETLIMIT(%struct.user_segment_descriptor* %101)
  %103 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %104 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @PAGESIZE, align 4
  br label %110

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 1, %109 ]
  %112 = mul nsw i32 %102, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %13, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 133
  br i1 %117, label %118, label %130

118:                                              ; preds = %110
  %119 = load i64, i64* %12, align 8
  %120 = and i64 %119, 10
  %121 = icmp ne i64 %120, 10
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %183

123:                                              ; preds = %118
  %124 = load i64*, i64** %7, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %183

129:                                              ; preds = %123
  br label %177

130:                                              ; preds = %110
  %131 = load i64, i64* %12, align 8
  %132 = and i64 %131, 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %183

135:                                              ; preds = %130
  %136 = load i64, i64* %12, align 8
  %137 = and i64 %136, 4
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %13, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 -1, i32* %4, align 4
  br label %183

145:                                              ; preds = %139
  br label %176

146:                                              ; preds = %135
  %147 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %148 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load i64*, i64** %7, align 8
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %154, 1
  %156 = icmp ult i64 %153, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = load i64*, i64** %7, align 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 65535, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157, %151
  store i32 -1, i32* %4, align 4
  br label %183

162:                                              ; preds = %157
  br label %175

163:                                              ; preds = %146
  %164 = load i64*, i64** %7, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = add i64 %166, 1
  %168 = icmp ult i64 %165, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %163
  %170 = load i64*, i64** %7, align 8
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 4294967295, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %163
  store i32 -1, i32* %4, align 4
  br label %183

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174, %162
  br label %176

176:                                              ; preds = %175, %145
  br label %177

177:                                              ; preds = %176, %129
  %178 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %9, align 8
  %179 = call i64 @USD_GETBASE(%struct.user_segment_descriptor* %178)
  %180 = load i64*, i64** %7, align 8
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %179
  store i64 %182, i64* %180, align 8
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %177, %173, %161, %144, %134, %128, %122, %99, %91, %73, %58, %47
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @ISPL(i64) #1

declare dso_local i64 @IDXSEL(i64) #1

declare dso_local i64 @ISLDT(i64) #1

declare dso_local %struct.user_segment_descriptor** @PCPU_PTR(%struct.TYPE_13__*) #1

declare dso_local i32 @USD_GETLIMIT(%struct.user_segment_descriptor*) #1

declare dso_local i64 @USD_GETBASE(%struct.user_segment_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
