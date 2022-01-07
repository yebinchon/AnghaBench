; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_23__*, i64, i64)*, i32 (%struct.TYPE_23__*, i64*, i64*)* }
%struct.TYPE_21__ = type { i32 }

@TMAP = common dso_local global %struct.TYPE_19__* null, align 8
@HMAP = common dso_local global %struct.TYPE_22__* null, align 8
@VIP_N_RENUMBER = common dso_local global i32 0, align 4
@VIP_N_REFRESH = common dso_local global i32 0, align 4
@VIP_CUR_INVALID = common dso_local global i32 0, align 4
@SC_TINPUT_INFO = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@VIP_N_EX_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_change(%struct.TYPE_23__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = call %struct.TYPE_21__* @VIP(%struct.TYPE_23__* %13)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %17
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = call i32 @db_exist(%struct.TYPE_23__* %27, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  store i32 128, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %26, %23, %20
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 131
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  store i32 129, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %225

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** @HMAP, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %120

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %119 [
    i32 131, label %52
    i32 130, label %54
    i32 129, label %86
    i32 128, label %118
  ]

52:                                               ; preds = %50
  %53 = call i32 (...) @abort() #3
  unreachable

54:                                               ; preds = %50
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** @HMAP, align 8
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %9, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %68, %54
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %10, align 8
  %62 = icmp ne i64 %60, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 1
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %9, align 8
  br label %59

71:                                               ; preds = %59
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %71
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %84 = load i32, i32* @VIP_N_RENUMBER, align 4
  %85 = call i32 @F_SET(%struct.TYPE_21__* %83, i32 %84)
  br label %119

86:                                               ; preds = %50
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** @HMAP, align 8
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %9, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %100, %86
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %10, align 8
  %94 = icmp ne i64 %92, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 1
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %9, align 8
  br label %91

103:                                              ; preds = %91
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %109, %103
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = load i32, i32* @VIP_N_RENUMBER, align 4
  %117 = call i32 @F_SET(%struct.TYPE_21__* %115, i32 %116)
  br label %119

118:                                              ; preds = %50
  br label %119

119:                                              ; preds = %50, %118, %114, %82
  store i32 0, i32* %4, align 4
  br label %225

120:                                              ; preds = %44
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %122 = load i32, i32* @VIP_N_REFRESH, align 4
  %123 = call i32 @F_SET(%struct.TYPE_21__* %121, i32 %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %125 = call i32 @VI_SCR_CFLUSH(%struct.TYPE_21__* %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %133 = load i32, i32* @VIP_CUR_INVALID, align 4
  %134 = call i32 @F_SET(%struct.TYPE_21__* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %120
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = load i32, i32* @SC_TINPUT_INFO, align 4
  %138 = call i64 @F_ISSET(%struct.TYPE_23__* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %142 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %143 = call i64 @F_ISSET(%struct.TYPE_23__* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %147 = call %struct.TYPE_21__* @VIP(%struct.TYPE_23__* %146)
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %155

151:                                              ; preds = %145, %140
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %153 = load i32, i32* @VIP_N_EX_REDRAW, align 4
  %154 = call i32 @F_SET(%struct.TYPE_21__* %152, i32 %153)
  store i32 0, i32* %4, align 4
  br label %225

155:                                              ; preds = %145, %135
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_23__*, i64*, i64*)*, i32 (%struct.TYPE_23__*, i64*, i64*)** %159, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %162 = call i32 %160(%struct.TYPE_23__* %161, i64* %11, i64* %12)
  %163 = load i32, i32* %7, align 4
  switch i32 %163, label %213 [
    i32 130, label %164
    i32 129, label %185
    i32 128, label %206
  ]

164:                                              ; preds = %155
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @vs_sm_delete(%struct.TYPE_23__* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %4, align 4
  br label %225

170:                                              ; preds = %164
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %176, %170
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %183 = load i32, i32* @VIP_N_RENUMBER, align 4
  %184 = call i32 @F_SET(%struct.TYPE_21__* %182, i32 %183)
  br label %215

185:                                              ; preds = %155
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @vs_sm_insert(%struct.TYPE_23__* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i32 1, i32* %4, align 4
  br label %225

191:                                              ; preds = %185
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %197, %191
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %204 = load i32, i32* @VIP_N_RENUMBER, align 4
  %205 = call i32 @F_SET(%struct.TYPE_21__* %203, i32 %204)
  br label %215

206:                                              ; preds = %155
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @vs_sm_reset(%struct.TYPE_23__* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store i32 1, i32* %4, align 4
  br label %225

212:                                              ; preds = %206
  br label %215

213:                                              ; preds = %155
  %214 = call i32 (...) @abort() #3
  unreachable

215:                                              ; preds = %212, %202, %181
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_23__*, i64, i64)*, i32 (%struct.TYPE_23__*, i64, i64)** %219, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %222 = load i64, i64* %11, align 8
  %223 = load i64, i64* %12, align 8
  %224 = call i32 %220(%struct.TYPE_23__* %221, i64 %222, i64 %223)
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %215, %211, %190, %169, %151, %119, %43
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.TYPE_21__* @VIP(%struct.TYPE_23__*) #1

declare dso_local i32 @db_exist(%struct.TYPE_23__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @VI_SCR_CFLUSH(%struct.TYPE_21__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vs_sm_delete(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vs_sm_insert(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vs_sm_reset(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
