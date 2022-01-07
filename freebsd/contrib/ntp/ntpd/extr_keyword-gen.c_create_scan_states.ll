; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_keyword-gen.c_create_scan_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_keyword-gen.c_create_scan_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i64, i64, i8, i64 }

@sst = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Duplicate entries for keyword '%s' in keyword_gen.c ntp_keywords[].\0A\00", align 1
@current_keyword = common dso_local global i8* null, align 8
@sst_highwater = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [92 x i8] c"fatal, keyword scanner state array sst[%d] is too small, modify\0Akeyword-gen.c to increase.\0A\00", align 1
@FOLLBY_NON_ACCEPTING = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"fatal, sst[%d] not reserved for %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64)* @create_scan_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_scan_states(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %32, %4
  %16 = load i64, i64* %12, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %22, %28
  br label %30

30:                                               ; preds = %18, %15
  %31 = phi i1 [ false, %15 ], [ %29, %18 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load i64, i64* %12, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  br label %15

39:                                               ; preds = %30
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %46, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 0, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** @current_keyword, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = call i32 @exit(i32 2) #4
  unreachable

66:                                               ; preds = %54
  br label %126

67:                                               ; preds = %42, %39
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i64, i64* @sst_highwater, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* @sst_highwater, align 8
  store i64 %69, i64* %9, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %74 = call i64 @COUNTOF(%struct.TYPE_4__* %73)
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %76, %71
  %84 = phi i1 [ false, %71 ], [ %82, %76 ]
  br i1 %84, label %68, label %85

85:                                               ; preds = %83
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %88 = call i64 @COUNTOF(%struct.TYPE_4__* %87)
  %89 = icmp uge i64 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* @stderr, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %93 = call i64 @COUNTOF(%struct.TYPE_4__* %92)
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = call i32 @exit(i32 3) #4
  unreachable

97:                                               ; preds = %85
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i8 %100, i8* %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  %110 = load i8, i8* @FOLLBY_NON_ACCEPTING, align 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  store i8 %110, i8* %114, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %97
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i64 %118, i64* %122, align 8
  br label %125

123:                                              ; preds = %97
  %124 = load i64, i64* %9, align 8
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %123, %117
  br label %126

126:                                              ; preds = %125, %66
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 0, %130
  br i1 %131, label %132, label %199

132:                                              ; preds = %126
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i64 %133, i64* %137, align 8
  %138 = load i64, i64* %7, align 8
  %139 = trunc i64 %138 to i8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  store i8 %139, i8* %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %132
  %152 = load i32, i32* @stderr, align 4
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* %6, align 8
  %155 = call i8* @symbname(i64 %154)
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %153, i8* %155)
  %157 = call i32 @exit(i32 6) #4
  unreachable

158:                                              ; preds = %132
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %198

162:                                              ; preds = %158
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %167
  %169 = bitcast %struct.TYPE_4__* %165 to i8*
  %170 = bitcast %struct.TYPE_4__* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 40, i1 false)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = call i32 @ZERO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %173)
  br label %175

175:                                              ; preds = %178, %162
  %176 = load i64, i64* @sst_highwater, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* @sst_highwater, align 8
  br label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %180 = load i64, i64* @sst_highwater, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %175, label %185

185:                                              ; preds = %178
  %186 = load i64, i64* %6, align 8
  store i64 %186, i64* %9, align 8
  %187 = load i64, i64* %11, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  store i64 %190, i64* %194, align 8
  br label %197

195:                                              ; preds = %185
  %196 = load i64, i64* %9, align 8
  store i64 %196, i64* %10, align 8
  br label %197

197:                                              ; preds = %195, %189
  br label %198

198:                                              ; preds = %197, %158
  br label %214

199:                                              ; preds = %126
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i64, i64* %6, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %205 = load i64, i64* %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @create_scan_states(i8* %201, i64 %202, i64 %203, i64 %208)
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sst, align 8
  %211 = load i64, i64* %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i64 %209, i64* %213, align 8
  br label %214

214:                                              ; preds = %199, %198
  %215 = load i64, i64* %10, align 8
  ret i64 %215
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @COUNTOF(%struct.TYPE_4__*) #1

declare dso_local i8* @symbname(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ZERO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
