; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_ldns_nsec3_closest_encloser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_ldns_nsec3_closest_encloser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c";; finding closest encloser for type %d \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c";; \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" hashes to: \00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c";; exact match found\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c";; in range of an nsec\0A\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c";; the closest encloser is the same name (ie. this is an exact match, ie there is no closest encloser)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c";; no closest encloser found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_nsec3_closest_encloser(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @ldns_rr_list_rr_count(i32* %28)
  %30 = icmp ult i64 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24, %3
  store i32* null, i32** %4, align 8
  br label %208

32:                                               ; preds = %27
  %33 = load i32, i32* @verbosity, align 4
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ldns_rdf_print(i32 %38, i32* %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @ldns_rr_list_rr(i32* %43, i64 0)
  store i32* %44, i32** %20, align 8
  %45 = load i32*, i32** %20, align 8
  %46 = call i32 @ldns_nsec3_algorithm(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %20, align 8
  %48 = call i32 @ldns_nsec3_salt_length(i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %20, align 8
  %50 = call i32* @ldns_nsec3_salt_data(i32* %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = call i32 @ldns_nsec3_iterations(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %191

56:                                               ; preds = %42
  %57 = load i32*, i32** %5, align 8
  %58 = call i32* @ldns_rdf_clone(i32* %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %191

62:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  %63 = load i32*, i32** %20, align 8
  %64 = call i32* @ldns_rr_owner(i32* %63)
  %65 = call i32* @ldns_dname_left_chop(i32* %64)
  store i32* %65, i32** %18, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %191

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %189, %69
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @ldns_dname_label_count(i32* %71)
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %190

74:                                               ; preds = %70
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %75 = load i32, i32* @verbosity, align 4
  %76 = icmp sge i32 %75, 3
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @stdout, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @ldns_rdf_print(i32 %79, i32* %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i32* @ldns_nsec3_hash_name(i32* %84, i32 %85, i32 %86, i32 %87, i32* %88)
  store i32* %89, i32** %13, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %191

93:                                               ; preds = %83
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = call i64 @ldns_dname_cat(i32* %94, i32* %95)
  %97 = load i64, i64* @LDNS_STATUS_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %191

100:                                              ; preds = %93
  %101 = load i32, i32* @verbosity, align 4
  %102 = icmp sge i32 %101, 3
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* @stdout, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @ldns_rdf_print(i32 %104, i32* %105)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %100
  store i64 0, i64* %19, align 8
  br label %109

109:                                              ; preds = %142, %108
  %110 = load i64, i64* %19, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i64 @ldns_rr_list_rr_count(i32* %111)
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %109
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* %19, align 8
  %117 = call i32* @ldns_rr_list_rr(i32* %115, i64 %116)
  store i32* %117, i32** %20, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = call i32* @ldns_rr_owner(i32* %118)
  %120 = load i32*, i32** %13, align 8
  %121 = call i64 @ldns_dname_compare(i32* %119, i32* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load i32, i32* @verbosity, align 4
  %125 = icmp sge i32 %124, 4
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  store i32 1, i32* %16, align 4
  br label %141

129:                                              ; preds = %114
  %130 = load i32*, i32** %20, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = call i64 @ldns_nsec_covers_name(i32* %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @verbosity, align 4
  %136 = icmp sge i32 %135, 4
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  store i32 1, i32* %17, align 4
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140, %128
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %19, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %19, align 8
  br label %109

145:                                              ; preds = %109
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 1, i32* %15, align 4
  br label %178

152:                                              ; preds = %148, %145
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %12, align 8
  %160 = call i32* @ldns_rdf_clone(i32* %159)
  store i32* %160, i32** %21, align 8
  br label %177

161:                                              ; preds = %155, %152
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* @verbosity, align 4
  %169 = icmp sge i32 %168, 4
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %167
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @ldns_rdf_deep_free(i32* %173)
  br label %191

175:                                              ; preds = %164, %161
  store i32 0, i32* %15, align 4
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176, %158
  br label %178

178:                                              ; preds = %177, %151
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @ldns_rdf_deep_free(i32* %179)
  %181 = load i32*, i32** %12, align 8
  store i32* %181, i32** %14, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = call i32* @ldns_dname_left_chop(i32* %182)
  store i32* %183, i32** %12, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @ldns_rdf_deep_free(i32* %184)
  %186 = load i32*, i32** %12, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %178
  br label %191

189:                                              ; preds = %178
  br label %70

190:                                              ; preds = %70
  br label %191

191:                                              ; preds = %190, %188, %172, %99, %92, %68, %61, %55
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @LDNS_FREE(i32* %192)
  %194 = load i32*, i32** %18, align 8
  %195 = call i32 @ldns_rdf_deep_free(i32* %194)
  %196 = load i32*, i32** %12, align 8
  %197 = call i32 @ldns_rdf_deep_free(i32* %196)
  %198 = load i32*, i32** %21, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %191
  %201 = load i32, i32* @verbosity, align 4
  %202 = icmp sge i32 %201, 4
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %200
  br label %206

206:                                              ; preds = %205, %191
  %207 = load i32*, i32** %21, align 8
  store i32* %207, i32** %4, align 8
  br label %208

208:                                              ; preds = %206, %31
  %209 = load i32*, i32** %4, align 8
  ret i32* %209
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ldns_rdf_print(i32, i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_nsec3_algorithm(i32*) #1

declare dso_local i32 @ldns_nsec3_salt_length(i32*) #1

declare dso_local i32* @ldns_nsec3_salt_data(i32*) #1

declare dso_local i32 @ldns_nsec3_iterations(i32*) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i32* @ldns_nsec3_hash_name(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i64 @ldns_dname_compare(i32*, i32*) #1

declare dso_local i64 @ldns_nsec_covers_name(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32 @LDNS_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
