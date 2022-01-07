; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_z.c_v_z.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_z.c_v_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_23__, %struct.TYPE_19__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@VC_C2SET = common dso_local global i32 0, align 4
@O_WINDOW = common dso_local global i32 0, align 4
@P_BOTTOM = common dso_local global i32 0, align 4
@P_MIDDLE = common dso_local global i32 0, align 4
@P_TOP = common dso_local global i32 0, align 4
@Z_PLUS = common dso_local global i32 0, align 4
@Z_CARAT = common dso_local global i32 0, align 4
@K_CR = common dso_local global i32 0, align 4
@K_NL = common dso_local global i32 0, align 4
@VIM_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_z(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %9 = load i32, i32* @VC_C1SET, align 4
  %10 = call i64 @F_ISSET(%struct.TYPE_21__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @db_exist(%struct.TYPE_22__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = call i64 @db_last(%struct.TYPE_22__* %21, i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %204

25:                                               ; preds = %20, %12
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = load i32, i32* @VC_C2SET, align 4
  %45 = call i64 @F_ISSET(%struct.TYPE_21__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %31
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = load i32, i32* @O_WINDOW, align 4
  %58 = call i64 @O_VAL(%struct.TYPE_22__* %56, i32 %57)
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = load i32, i32* @O_WINDOW, align 4
  %63 = call i64 @O_VAL(%struct.TYPE_22__* %61, i32 %62)
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @vs_crel(%struct.TYPE_22__* %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %204

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %47, %31
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %173 [
    i32 45, label %79
    i32 46, label %87
    i32 43, label %95
    i32 94, label %129
  ]

79:                                               ; preds = %75
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @P_BOTTOM, align 4
  %83 = call i32 @vs_sm_fill(%struct.TYPE_22__* %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %204

86:                                               ; preds = %79
  br label %203

87:                                               ; preds = %75
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @P_MIDDLE, align 4
  %91 = call i32 @vs_sm_fill(%struct.TYPE_22__* %88, i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %204

94:                                               ; preds = %87
  br label %203

95:                                               ; preds = %75
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = load i32, i32* @VC_C1SET, align 4
  %98 = call i64 @F_ISSET(%struct.TYPE_21__* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @P_TOP, align 4
  %104 = call i32 @vs_sm_fill(%struct.TYPE_22__* %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %204

107:                                              ; preds = %100
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load i32, i32* @P_TOP, align 4
  %112 = call i32 @vs_sm_position(%struct.TYPE_22__* %108, %struct.TYPE_23__* %110, i32 0, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %204

115:                                              ; preds = %107
  br label %128

116:                                              ; preds = %95
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @Z_PLUS, align 4
  %124 = call i32 @vs_sm_scroll(%struct.TYPE_22__* %117, %struct.TYPE_23__* %119, i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %204

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %115
  br label %203

129:                                              ; preds = %75
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = load i32, i32* @VC_C1SET, align 4
  %132 = call i64 @F_ISSET(%struct.TYPE_21__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %129
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @P_BOTTOM, align 4
  %138 = call i32 @vs_sm_fill(%struct.TYPE_22__* %135, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, i32* %3, align 4
  br label %204

141:                                              ; preds = %134
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  %145 = load i32, i32* @P_TOP, align 4
  %146 = call i32 @vs_sm_position(%struct.TYPE_22__* %142, %struct.TYPE_23__* %144, i32 0, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %204

149:                                              ; preds = %141
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @P_BOTTOM, align 4
  %156 = call i32 @vs_sm_fill(%struct.TYPE_22__* %150, i32 %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %204

159:                                              ; preds = %149
  br label %172

160:                                              ; preds = %129
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @Z_CARAT, align 4
  %168 = call i32 @vs_sm_scroll(%struct.TYPE_22__* %161, %struct.TYPE_23__* %163, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  store i32 1, i32* %3, align 4
  br label %204

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %159
  br label %203

173:                                              ; preds = %75
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @KEY_VAL(%struct.TYPE_22__* %174, i32 %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @K_CR, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %173
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @K_NL, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @VIM_USAGE, align 4
  %194 = call i32 @v_emsg(%struct.TYPE_22__* %187, i32 %192, i32 %193)
  store i32 1, i32* %3, align 4
  br label %204

195:                                              ; preds = %182, %173
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @P_TOP, align 4
  %199 = call i32 @vs_sm_fill(%struct.TYPE_22__* %196, i32 %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 1, i32* %3, align 4
  br label %204

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %172, %128, %94, %86
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %201, %186, %170, %158, %148, %140, %126, %114, %106, %93, %85, %73, %24
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @db_exist(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @db_last(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @O_VAL(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @vs_crel(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @vs_sm_fill(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @vs_sm_position(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @vs_sm_scroll(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @KEY_VAL(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @v_emsg(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
