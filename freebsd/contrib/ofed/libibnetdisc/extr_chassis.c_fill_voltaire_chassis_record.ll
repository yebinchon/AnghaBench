; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_fill_voltaire_chassis_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_fill_voltaire_chassis_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_16__**, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__* }

@IB_NODE_SWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @fill_voltaire_chassis_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_voltaire_chassis_record(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %214

14:                                               ; preds = %1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = call i64 @is_router(%struct.TYPE_17__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %30, i64 %32
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = icmp ne %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = call i64 @is_spine(%struct.TYPE_17__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = call i32 @get_router_slot(%struct.TYPE_17__* %46, %struct.TYPE_16__* %49)
  br label %51

51:                                               ; preds = %45, %37, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %21

55:                                               ; preds = %21
  br label %189

56:                                               ; preds = %14
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = call i64 @is_spine(%struct.TYPE_17__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %131

60:                                               ; preds = %56
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = call i32 @is_spine_4700x2(%struct.TYPE_17__* %61)
  store i32 %62, i32* %7, align 4
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %127, %60
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %64, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %72, i64 %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %5, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = icmp ne %struct.TYPE_16__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = icmp ne %struct.TYPE_16__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79, %69
  br label %127

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 18
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %127

94:                                               ; preds = %88, %85
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %6, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IB_NODE_SWITCH, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = call i32 @get_router_slot(%struct.TYPE_17__* %111, %struct.TYPE_16__* %112)
  br label %114

114:                                              ; preds = %110, %105
  br label %127

115:                                              ; preds = %94
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = call i32 @get_sfb_slot(%struct.TYPE_17__* %121, %struct.TYPE_16__* %124)
  br label %126

126:                                              ; preds = %120, %115
  br label %127

127:                                              ; preds = %126, %114, %93, %84
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %63

130:                                              ; preds = %63
  br label %188

131:                                              ; preds = %56
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = call i64 @is_line(%struct.TYPE_17__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %187

135:                                              ; preds = %131
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = call i32 @is_line_4700(%struct.TYPE_17__* %136)
  store i32 %137, i32* %8, align 4
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %183, %135
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sle i32 %139, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %138
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %147, i64 %149
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  store %struct.TYPE_16__* %151, %struct.TYPE_16__** %5, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = icmp ne %struct.TYPE_16__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %144
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = icmp ne %struct.TYPE_16__* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %154, %144
  br label %183

160:                                              ; preds = %154
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 18
  br i1 %167, label %176, label %168

168:                                              ; preds = %163, %160
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 12
  br i1 %175, label %176, label %177

176:                                              ; preds = %171, %163
  br label %183

177:                                              ; preds = %171, %168
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = call i32 @get_slb_slot(%struct.TYPE_17__* %178, %struct.TYPE_16__* %181)
  br label %186

183:                                              ; preds = %176, %159
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %138

186:                                              ; preds = %177, %138
  br label %187

187:                                              ; preds = %186, %131
  br label %188

188:                                              ; preds = %187, %130
  br label %189

189:                                              ; preds = %188, %55
  store i32 1, i32* %4, align 4
  br label %190

190:                                              ; preds = %210, %189
  %191 = load i32, i32* %4, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sle i32 %191, %194
  br i1 %195, label %196, label %213

196:                                              ; preds = %190
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %199, i64 %201
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  store %struct.TYPE_16__* %203, %struct.TYPE_16__** %5, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %205 = icmp ne %struct.TYPE_16__* %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %196
  br label %210

207:                                              ; preds = %196
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %209 = call i32 @voltaire_portmap(%struct.TYPE_16__* %208)
  br label %210

210:                                              ; preds = %207, %206
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %4, align 4
  br label %190

213:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %213, %13
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i64 @is_router(%struct.TYPE_17__*) #1

declare dso_local i64 @is_spine(%struct.TYPE_17__*) #1

declare dso_local i32 @get_router_slot(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @is_spine_4700x2(%struct.TYPE_17__*) #1

declare dso_local i32 @get_sfb_slot(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @is_line(%struct.TYPE_17__*) #1

declare dso_local i32 @is_line_4700(%struct.TYPE_17__*) #1

declare dso_local i32 @get_slb_slot(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @voltaire_portmap(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
