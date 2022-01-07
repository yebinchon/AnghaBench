; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_apl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_apl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@LDNS_APL_NEGATION = common dso_local global i32 0, align 4
@LDNS_APL_MASK = common dso_local global i32 0, align 4
@LDNS_APL_IP4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"/%u \00", align 1
@LDNS_APL_IP6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Unknown address family: %u data: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_apl(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @ldns_rdf_data(i32* %13)
  store i32* %14, i32** %6, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %211, %2
  %16 = load i64, i64* %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @ldns_rdf_size(i32* %17)
  %19 = trunc i64 %18 to i32
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %217

22:                                               ; preds = %15
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %23, 3
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ldns_rdf_size(i32* %25)
  %27 = trunc i64 %26 to i32
  %28 = zext i32 %27 to i64
  %29 = icmp uge i64 %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %31, i32* %3, align 4
  br label %220

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @ldns_read_uint16(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, 2
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 3
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LDNS_APL_NEGATION, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 3
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LDNS_APL_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @LDNS_APL_IP4, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %115

59:                                               ; preds = %32
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %108, %65
  %70 = load i64, i64* %11, align 8
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  %73 = load i64, i64* %11, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* %10, align 4
  %81 = trunc i32 %80 to i16
  %82 = zext i16 %81 to i64
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %78
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %85, %86
  %88 = add i64 %87, 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @ldns_rdf_size(i32* %89)
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %93, i32* %3, align 4
  br label %220

94:                                               ; preds = %84
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %97, %98
  %100 = add i64 %99, 4
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %107

104:                                              ; preds = %78
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %69

111:                                              ; preds = %69
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %211

115:                                              ; preds = %32
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @LDNS_APL_IP6, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %179

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  store i64 0, i64* %11, align 8
  br label %129

129:                                              ; preds = %172, %125
  %130 = load i64, i64* %11, align 8
  %131 = icmp ult i64 %130, 16
  br i1 %131, label %132, label %175

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = urem i64 %133, 2
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i64, i64* %11, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %136, %132
  %143 = load i64, i64* %11, align 8
  %144 = load i32, i32* %10, align 4
  %145 = trunc i32 %144 to i16
  %146 = zext i16 %145 to i64
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %142
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %149, %150
  %152 = add i64 %151, 4
  %153 = load i32*, i32** %5, align 8
  %154 = call i64 @ldns_rdf_size(i32* %153)
  %155 = icmp uge i64 %152, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %157, i32* %3, align 4
  br label %220

158:                                              ; preds = %148
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %161, %162
  %164 = add i64 %163, 4
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %171

168:                                              ; preds = %142
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %158
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %11, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %11, align 8
  br label %129

175:                                              ; preds = %129
  %176 = load i32*, i32** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  br label %210

179:                                              ; preds = %115
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %180, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %181)
  store i64 1, i64* %11, align 8
  br label %183

183:                                              ; preds = %206, %179
  %184 = load i64, i64* %11, align 8
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 4, %185
  %187 = trunc i32 %186 to i16
  %188 = zext i16 %187 to i64
  %189 = icmp ult i64 %184, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %183
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %191, %192
  %194 = load i32*, i32** %5, align 8
  %195 = call i64 @ldns_rdf_size(i32* %194)
  %196 = icmp uge i64 %193, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %198, i32* %3, align 4
  br label %220

199:                                              ; preds = %190
  %200 = load i32*, i32** %4, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = load i64, i64* %11, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %199
  %207 = load i64, i64* %11, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %11, align 8
  br label %183

209:                                              ; preds = %183
  br label %210

210:                                              ; preds = %209, %175
  br label %211

211:                                              ; preds = %210, %111
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 4, %212
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %12, align 8
  br label %15

217:                                              ; preds = %15
  %218 = load i32*, i32** %4, align 8
  %219 = call i32 @ldns_buffer_status(i32* %218)
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %217, %197, %156, %92, %30
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i64 @ldns_rdf_size(i32*) #1

declare dso_local i32 @ldns_read_uint16(i32*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
