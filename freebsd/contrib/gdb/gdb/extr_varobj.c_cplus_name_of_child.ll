; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_name_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_name_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32, %struct.varobj* }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@v_public = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@v_private = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.varobj*, i32)* @cplus_name_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cplus_name_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.varobj*, %struct.varobj** %4, align 8
  %11 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.varobj*, %struct.varobj** %4, align 8
  %15 = getelementptr inbounds %struct.varobj, %struct.varobj* %14, i32 0, i32 1
  %16 = load %struct.varobj*, %struct.varobj** %15, align 8
  %17 = call %struct.type* @get_type_deref(%struct.varobj* %16)
  store %struct.type* %17, %struct.type** %7, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.varobj*, %struct.varobj** %4, align 8
  %20 = call %struct.type* @get_type_deref(%struct.varobj* %19)
  store %struct.type* %20, %struct.type** %7, align 8
  br label %21

21:                                               ; preds = %18, %13
  store i8* null, i8** %6, align 8
  %22 = load %struct.type*, %struct.type** %7, align 8
  %23 = call i32 @TYPE_CODE(%struct.type* %22)
  switch i32 %23, label %201 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = load %struct.varobj*, %struct.varobj** %4, align 8
  %26 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %142

28:                                               ; preds = %24
  %29 = load %struct.type*, %struct.type** %7, align 8
  %30 = call i32 @TYPE_N_BASECLASSES(%struct.type* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.varobj*, %struct.varobj** %4, align 8
  %32 = getelementptr inbounds %struct.varobj, %struct.varobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.type*, %struct.type** %7, align 8
  %42 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %41)
  %43 = load %struct.type*, %struct.type** %7, align 8
  %44 = icmp eq %struct.type* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.type*, %struct.type** %7, align 8
  %48 = call i32 @TYPE_VPTR_FIELDNO(%struct.type* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %60

51:                                               ; preds = %45, %40
  %52 = load %struct.type*, %struct.type** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @TYPE_FIELD_PRIVATE(%struct.type* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %37

63:                                               ; preds = %37
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %138

66:                                               ; preds = %28
  %67 = load %struct.varobj*, %struct.varobj** %4, align 8
  %68 = getelementptr inbounds %struct.varobj, %struct.varobj* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @strcmp(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %96, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.type*, %struct.type** %7, align 8
  %78 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %77)
  %79 = load %struct.type*, %struct.type** %7, align 8
  %80 = icmp eq %struct.type* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.type*, %struct.type** %7, align 8
  %84 = call i32 @TYPE_VPTR_FIELDNO(%struct.type* %83)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %96

87:                                               ; preds = %81, %76
  %88 = load %struct.type*, %struct.type** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @TYPE_FIELD_PROTECTED(%struct.type* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %73

99:                                               ; preds = %73
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  br label %137

102:                                              ; preds = %66
  br label %103

103:                                              ; preds = %131, %102
  %104 = load i32, i32* %5, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load %struct.type*, %struct.type** %7, align 8
  %108 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %107)
  %109 = load %struct.type*, %struct.type** %7, align 8
  %110 = icmp eq %struct.type* %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.type*, %struct.type** %7, align 8
  %114 = call i32 @TYPE_VPTR_FIELDNO(%struct.type* %113)
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %131

117:                                              ; preds = %111, %106
  %118 = load %struct.type*, %struct.type** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @TYPE_FIELD_PRIVATE(%struct.type* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = load %struct.type*, %struct.type** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @TYPE_FIELD_PROTECTED(%struct.type* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %127, %122, %117
  br label %131

131:                                              ; preds = %130, %116
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %103

134:                                              ; preds = %103
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %99
  br label %138

138:                                              ; preds = %137, %63
  %139 = load %struct.type*, %struct.type** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i8* @TYPE_FIELD_NAME(%struct.type* %139, i32 %140)
  store i8* %141, i8** %6, align 8
  br label %200

142:                                              ; preds = %24
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.type*, %struct.type** %7, align 8
  %145 = call i32 @TYPE_N_BASECLASSES(%struct.type* %144)
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.type*, %struct.type** %7, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i8* @TYPE_FIELD_NAME(%struct.type* %148, i32 %149)
  store i8* %150, i8** %6, align 8
  br label %199

151:                                              ; preds = %142
  %152 = load %struct.type*, %struct.type** %7, align 8
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %154 = call i32 @cplus_class_num_children(%struct.type* %152, i32* %153)
  %155 = load %struct.type*, %struct.type** %7, align 8
  %156 = call i32 @TYPE_N_BASECLASSES(%struct.type* %155)
  %157 = load i32, i32* %5, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  switch i32 %159, label %197 [
    i32 0, label %160
    i32 1, label %175
    i32 2, label %196
  ]

160:                                              ; preds = %151
  %161 = load i64, i64* @v_public, align 8
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %174

166:                                              ; preds = %160
  %167 = load i64, i64* @v_private, align 8
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %173

172:                                              ; preds = %166
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %173

173:                                              ; preds = %172, %171
  br label %174

174:                                              ; preds = %173, %165
  br label %198

175:                                              ; preds = %151
  %176 = load i64, i64* @v_public, align 8
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load i64, i64* @v_private, align 8
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %187

186:                                              ; preds = %180
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %187

187:                                              ; preds = %186, %185
  br label %195

188:                                              ; preds = %175
  %189 = load i64, i64* @v_private, align 8
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %194

194:                                              ; preds = %193, %188
  br label %195

195:                                              ; preds = %194, %187
  br label %198

196:                                              ; preds = %151
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %198

197:                                              ; preds = %151
  br label %198

198:                                              ; preds = %197, %196, %195, %174
  br label %199

199:                                              ; preds = %198, %147
  br label %200

200:                                              ; preds = %199, %138
  br label %202

201:                                              ; preds = %21
  br label %202

202:                                              ; preds = %201, %200
  %203 = load i8*, i8** %6, align 8
  %204 = icmp eq i8* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load %struct.varobj*, %struct.varobj** %4, align 8
  %207 = load i32, i32* %5, align 4
  %208 = call i8* @c_name_of_child(%struct.varobj* %206, i32 %207)
  store i8* %208, i8** %3, align 8
  br label %220

209:                                              ; preds = %202
  %210 = load i8*, i8** %6, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i8*, i8** %6, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = call i32 @strlen(i8* %214)
  %216 = call i8* @savestring(i8* %213, i32 %215)
  store i8* %216, i8** %6, align 8
  br label %217

217:                                              ; preds = %212, %209
  br label %218

218:                                              ; preds = %217
  %219 = load i8*, i8** %6, align 8
  store i8* %219, i8** %3, align 8
  br label %220

220:                                              ; preds = %218, %205
  %221 = load i8*, i8** %3, align 8
  ret i8* %221
}

declare dso_local i64 @CPLUS_FAKE_CHILD(%struct.varobj*) #1

declare dso_local %struct.type* @get_type_deref(%struct.varobj*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.type* @TYPE_VPTR_BASETYPE(%struct.type*) #1

declare dso_local i32 @TYPE_VPTR_FIELDNO(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_PRIVATE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_PROTECTED(%struct.type*, i32) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @cplus_class_num_children(%struct.type*, i32*) #1

declare dso_local i8* @c_name_of_child(%struct.varobj*, i32) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
