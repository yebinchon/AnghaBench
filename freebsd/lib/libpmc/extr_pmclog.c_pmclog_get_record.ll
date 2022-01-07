; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_pmclog.c_pmclog_get_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_pmclog.c_pmclog_get_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmclog_parse_state = type { i32, i32, i32 }

@PL_STATE_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmclog_parse_state*, i8**, i32*)* @pmclog_get_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmclog_get_record(%struct.pmclog_parse_state* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmclog_parse_state*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.pmclog_parse_state* %0, %struct.pmclog_parse_state** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 4, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** @PL_STATE_ERROR, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %23 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 %21, i32* %4, align 4
  br label %215

24:                                               ; preds = %3
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %28 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %33 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %36 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %35, i32 0, i32 2
  %37 = bitcast i32* %36 to i8*
  %38 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %39 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8* %42, i8** %15, align 8
  %43 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %44 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %192 [
    i32 129, label %46
    i32 130, label %108
    i32 128, label %151
  ]

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  br label %52

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 4, %51 ]
  store i32 %53, i32* %9, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @bcopy(i8* %54, i8* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %60 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %65 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %64, i32 0, i32 0
  store i32 130, i32* %65, align 4
  br label %194

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %15, align 8
  %75 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %76 = call i32 @PMCLOG_HEADER_FROM_SAVED_STATE(%struct.pmclog_parse_state* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @PMCLOG_HEADER_TO_LENGTH(i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %207

82:                                               ; preds = %66
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @bcopy(i8* %87, i8* %88, i32 %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %95 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %194

96:                                               ; preds = %82
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @bcopy(i8* %97, i8* %98, i32 %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %11, align 4
  %104 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %105 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %107 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %106, i32 0, i32 0
  store i32 128, i32* %107, align 4
  br label %193

108:                                              ; preds = %34
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %111 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @bcopy(i8* %116, i8* %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %122 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %11, align 4
  br label %193

126:                                              ; preds = %108
  %127 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %128 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 4, %129
  store i32 %130, i32* %9, align 4
  store i32 %130, i32* %11, align 4
  %131 = load i8*, i8** %14, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @bcopy(i8* %131, i8* %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i8*, i8** %14, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %14, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i8*, i8** %15, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %15, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %148 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %34, %126
  %152 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %153 = call i32 @PMCLOG_HEADER_FROM_SAVED_STATE(%struct.pmclog_parse_state* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @PMCLOG_HEADER_TO_LENGTH(i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp sle i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %207

159:                                              ; preds = %151
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %162 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %9, align 4
  %169 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %170 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %169, i32 0, i32 0
  store i32 128, i32* %170, align 4
  br label %179

171:                                              ; preds = %159
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %174 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  store i32 %176, i32* %9, align 4
  %177 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %178 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %177, i32 0, i32 0
  store i32 129, i32* %178, align 4
  br label %179

179:                                              ; preds = %171, %167
  %180 = load i8*, i8** %14, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @bcopy(i8* %180, i8* %181, i32 %182)
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %186 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %11, align 4
  br label %193

192:                                              ; preds = %34
  br label %207

193:                                              ; preds = %179, %115, %96
  br label %194

194:                                              ; preds = %193, %86, %63
  %195 = load i32, i32* %11, align 4
  %196 = load i8**, i8*** %6, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = sext i32 %195 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %196, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, %200
  store i32 %203, i32* %201, align 4
  %204 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %205 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %4, align 4
  br label %215

207:                                              ; preds = %192, %158, %81
  %208 = load i8*, i8** @PL_STATE_ERROR, align 8
  %209 = ptrtoint i8* %208 to i32
  %210 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %211 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 4
  %212 = load %struct.pmclog_parse_state*, %struct.pmclog_parse_state** %5, align 8
  %213 = getelementptr inbounds %struct.pmclog_parse_state, %struct.pmclog_parse_state* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %207, %194, %19
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @PMCLOG_HEADER_FROM_SAVED_STATE(%struct.pmclog_parse_state*) #1

declare dso_local i32 @PMCLOG_HEADER_TO_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
