; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn_html.c_eqn_box.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn_html.c_eqn_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32 }
%struct.eqn_box = type { i64, i32, i32, i8*, i8*, i8*, i32, i8*, i8*, %struct.eqn_box*, %struct.eqn_box*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tag = type { i32 }

@EQN_MATRIX = common dso_local global i64 0, align 8
@EQN_LIST = common dso_local global i64 0, align 8
@TAG_MTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TAG_MTR = common dso_local global i32 0, align 4
@TAG_MTD = common dso_local global i32 0, align 4
@TAG_MOVER = common dso_local global i32 0, align 4
@TAG_MSUP = common dso_local global i32 0, align 4
@TAG_MUNDER = common dso_local global i32 0, align 4
@TAG_MSUB = common dso_local global i32 0, align 4
@TAG_MFRAC = common dso_local global i32 0, align 4
@TAG_MUNDEROVER = common dso_local global i32 0, align 4
@TAG_MSUBSUP = common dso_local global i32 0, align 4
@TAG_MSQRT = common dso_local global i32 0, align 4
@EQN_PILE = common dso_local global i64 0, align 8
@TAG_MI = common dso_local global i32 0, align 4
@TAG_MN = common dso_local global i32 0, align 4
@TAG_MO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fontstyle\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fontweight\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@TAG_MFENCED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@TAG_MROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*, %struct.eqn_box*)* @eqn_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eqn_box(%struct.html* %0, %struct.eqn_box* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.eqn_box*, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.tag*, align 8
  %7 = alloca %struct.tag*, align 8
  %8 = alloca %struct.tag*, align 8
  %9 = alloca %struct.eqn_box*, align 8
  %10 = alloca %struct.eqn_box*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.eqn_box* %1, %struct.eqn_box** %4, align 8
  %17 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %18 = icmp eq %struct.eqn_box* null, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %572

20:                                               ; preds = %2
  store %struct.tag* null, %struct.tag** %5, align 8
  %21 = load i64, i64* @EQN_MATRIX, align 8
  %22 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %23 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %142

26:                                               ; preds = %20
  %27 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %28 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %27, i32 0, i32 10
  %29 = load %struct.eqn_box*, %struct.eqn_box** %28, align 8
  %30 = icmp eq %struct.eqn_box* null, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %526

32:                                               ; preds = %26
  %33 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %34 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %33, i32 0, i32 10
  %35 = load %struct.eqn_box*, %struct.eqn_box** %34, align 8
  %36 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EQN_LIST, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %42 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %41, i32 0, i32 10
  %43 = load %struct.eqn_box*, %struct.eqn_box** %42, align 8
  %44 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %40, %32
  %48 = load %struct.html*, %struct.html** %3, align 8
  %49 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %50 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %49, i32 0, i32 10
  %51 = load %struct.eqn_box*, %struct.eqn_box** %50, align 8
  call void @eqn_box(%struct.html* %48, %struct.eqn_box* %51)
  br label %526

52:                                               ; preds = %40
  %53 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %54 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %53, i32 0, i32 10
  %55 = load %struct.eqn_box*, %struct.eqn_box** %54, align 8
  %56 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %55, i32 0, i32 10
  %57 = load %struct.eqn_box*, %struct.eqn_box** %56, align 8
  store %struct.eqn_box* %57, %struct.eqn_box** %10, align 8
  %58 = icmp eq %struct.eqn_box* null, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %526

60:                                               ; preds = %52
  %61 = load %struct.eqn_box*, %struct.eqn_box** %10, align 8
  %62 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %61, i32 0, i32 10
  %63 = load %struct.eqn_box*, %struct.eqn_box** %62, align 8
  store %struct.eqn_box* %63, %struct.eqn_box** %9, align 8
  %64 = icmp eq %struct.eqn_box* null, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %526

66:                                               ; preds = %60
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %74, %66
  %68 = load %struct.eqn_box*, %struct.eqn_box** %9, align 8
  %69 = icmp ne %struct.eqn_box* null, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.eqn_box*, %struct.eqn_box** %9, align 8
  %72 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %71, i32 0, i32 9
  %73 = load %struct.eqn_box*, %struct.eqn_box** %72, align 8
  store %struct.eqn_box* %73, %struct.eqn_box** %9, align 8
  br label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %14, align 8
  br label %67

77:                                               ; preds = %67
  %78 = load %struct.html*, %struct.html** %3, align 8
  %79 = load i32, i32* @TAG_MTABLE, align 4
  %80 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %78, i32 %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %80, %struct.tag** %5, align 8
  store i64 0, i64* %12, align 8
  br label %81

81:                                               ; preds = %138, %77
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %141

85:                                               ; preds = %81
  %86 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %87 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %86, i32 0, i32 10
  %88 = load %struct.eqn_box*, %struct.eqn_box** %87, align 8
  %89 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %88, i32 0, i32 10
  %90 = load %struct.eqn_box*, %struct.eqn_box** %89, align 8
  store %struct.eqn_box* %90, %struct.eqn_box** %10, align 8
  %91 = load %struct.html*, %struct.html** %3, align 8
  %92 = load i32, i32* @TAG_MTR, align 4
  %93 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %91, i32 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %93, %struct.tag** %6, align 8
  br label %94

94:                                               ; preds = %127, %85
  %95 = load %struct.eqn_box*, %struct.eqn_box** %10, align 8
  %96 = icmp ne %struct.eqn_box* null, %95
  br i1 %96, label %97, label %134

97:                                               ; preds = %94
  %98 = load %struct.eqn_box*, %struct.eqn_box** %10, align 8
  %99 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %98, i32 0, i32 10
  %100 = load %struct.eqn_box*, %struct.eqn_box** %99, align 8
  store %struct.eqn_box* %100, %struct.eqn_box** %9, align 8
  store i64 0, i64* %13, align 8
  br label %101

101:                                              ; preds = %113, %97
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.eqn_box*, %struct.eqn_box** %9, align 8
  %107 = icmp eq %struct.eqn_box* null, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %116

109:                                              ; preds = %105
  %110 = load %struct.eqn_box*, %struct.eqn_box** %9, align 8
  %111 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %110, i32 0, i32 9
  %112 = load %struct.eqn_box*, %struct.eqn_box** %111, align 8
  store %struct.eqn_box* %112, %struct.eqn_box** %9, align 8
  br label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %101

116:                                              ; preds = %108, %101
  %117 = load %struct.html*, %struct.html** %3, align 8
  %118 = load i32, i32* @TAG_MTD, align 4
  %119 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %117, i32 %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %119, %struct.tag** %7, align 8
  %120 = load %struct.eqn_box*, %struct.eqn_box** %9, align 8
  %121 = icmp ne %struct.eqn_box* null, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.html*, %struct.html** %3, align 8
  %124 = load %struct.eqn_box*, %struct.eqn_box** %9, align 8
  %125 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %124, i32 0, i32 10
  %126 = load %struct.eqn_box*, %struct.eqn_box** %125, align 8
  call void @eqn_box(%struct.html* %123, %struct.eqn_box* %126)
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.html*, %struct.html** %3, align 8
  %129 = load %struct.tag*, %struct.tag** %7, align 8
  %130 = call i32 @print_tagq(%struct.html* %128, %struct.tag* %129)
  %131 = load %struct.eqn_box*, %struct.eqn_box** %10, align 8
  %132 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %131, i32 0, i32 9
  %133 = load %struct.eqn_box*, %struct.eqn_box** %132, align 8
  store %struct.eqn_box* %133, %struct.eqn_box** %10, align 8
  br label %94

134:                                              ; preds = %94
  %135 = load %struct.html*, %struct.html** %3, align 8
  %136 = load %struct.tag*, %struct.tag** %6, align 8
  %137 = call i32 @print_tagq(%struct.html* %135, %struct.tag* %136)
  br label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %12, align 8
  br label %81

141:                                              ; preds = %81
  br label %526

142:                                              ; preds = %20
  %143 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %144 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %178 [
    i32 128, label %146
    i32 129, label %150
    i32 135, label %154
    i32 131, label %158
    i32 133, label %162
    i32 134, label %166
    i32 130, label %170
    i32 132, label %174
  ]

146:                                              ; preds = %142
  %147 = load %struct.html*, %struct.html** %3, align 8
  %148 = load i32, i32* @TAG_MOVER, align 4
  %149 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %147, i32 %148, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %149, %struct.tag** %5, align 8
  br label %179

150:                                              ; preds = %142
  %151 = load %struct.html*, %struct.html** %3, align 8
  %152 = load i32, i32* @TAG_MSUP, align 4
  %153 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %151, i32 %152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %153, %struct.tag** %5, align 8
  br label %179

154:                                              ; preds = %142
  %155 = load %struct.html*, %struct.html** %3, align 8
  %156 = load i32, i32* @TAG_MUNDER, align 4
  %157 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %155, i32 %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %157, %struct.tag** %5, align 8
  br label %179

158:                                              ; preds = %142
  %159 = load %struct.html*, %struct.html** %3, align 8
  %160 = load i32, i32* @TAG_MSUB, align 4
  %161 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %159, i32 %160, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %161, %struct.tag** %5, align 8
  br label %179

162:                                              ; preds = %142
  %163 = load %struct.html*, %struct.html** %3, align 8
  %164 = load i32, i32* @TAG_MFRAC, align 4
  %165 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %163, i32 %164, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %165, %struct.tag** %5, align 8
  br label %179

166:                                              ; preds = %142
  %167 = load %struct.html*, %struct.html** %3, align 8
  %168 = load i32, i32* @TAG_MUNDEROVER, align 4
  %169 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %167, i32 %168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %169, %struct.tag** %5, align 8
  br label %179

170:                                              ; preds = %142
  %171 = load %struct.html*, %struct.html** %3, align 8
  %172 = load i32, i32* @TAG_MSUBSUP, align 4
  %173 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %171, i32 %172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %173, %struct.tag** %5, align 8
  br label %179

174:                                              ; preds = %142
  %175 = load %struct.html*, %struct.html** %3, align 8
  %176 = load i32, i32* @TAG_MSQRT, align 4
  %177 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %175, i32 %176, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %177, %struct.tag** %5, align 8
  br label %179

178:                                              ; preds = %142
  br label %179

179:                                              ; preds = %178, %174, %170, %166, %162, %158, %154, %150, %146
  %180 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %181 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %186 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %233

189:                                              ; preds = %184, %179
  %190 = load %struct.tag*, %struct.tag** %5, align 8
  %191 = icmp eq %struct.tag* null, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %195 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %207

198:                                              ; preds = %189
  %199 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %200 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = icmp eq i8* null, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.html*, %struct.html** %3, align 8
  %205 = load i32, i32* @TAG_MOVER, align 4
  %206 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %204, i32 %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %206, %struct.tag** %5, align 8
  br label %232

207:                                              ; preds = %198, %189
  %208 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %209 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %214 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load %struct.html*, %struct.html** %3, align 8
  %219 = load i32, i32* @TAG_MUNDEROVER, align 4
  %220 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %218, i32 %219, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %220, %struct.tag** %5, align 8
  br label %231

221:                                              ; preds = %212, %207
  %222 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %223 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %222, i32 0, i32 4
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.html*, %struct.html** %3, align 8
  %228 = load i32, i32* @TAG_MUNDER, align 4
  %229 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %227, i32 %228, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %229, %struct.tag** %5, align 8
  br label %230

230:                                              ; preds = %226, %221
  br label %231

231:                                              ; preds = %230, %217
  br label %232

232:                                              ; preds = %231, %203
  br label %233

233:                                              ; preds = %232, %184
  %234 = load i64, i64* @EQN_PILE, align 8
  %235 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %236 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %234, %237
  br i1 %238, label %239, label %268

239:                                              ; preds = %233
  %240 = load %struct.tag*, %struct.tag** %5, align 8
  %241 = icmp eq %struct.tag* null, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %245 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %244, i32 0, i32 10
  %246 = load %struct.eqn_box*, %struct.eqn_box** %245, align 8
  %247 = icmp ne %struct.eqn_box* %246, null
  br i1 %247, label %248, label %267

248:                                              ; preds = %239
  %249 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %250 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %249, i32 0, i32 10
  %251 = load %struct.eqn_box*, %struct.eqn_box** %250, align 8
  %252 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @EQN_LIST, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %248
  %257 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %258 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %257, i32 0, i32 10
  %259 = load %struct.eqn_box*, %struct.eqn_box** %258, align 8
  %260 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load %struct.html*, %struct.html** %3, align 8
  %265 = load i32, i32* @TAG_MTABLE, align 4
  %266 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %264, i32 %265, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %266, %struct.tag** %5, align 8
  br label %267

267:                                              ; preds = %263, %256, %248, %239
  br label %304

268:                                              ; preds = %233
  %269 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %270 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @EQN_LIST, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %303

274:                                              ; preds = %268
  %275 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %276 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %279, label %303

279:                                              ; preds = %274
  %280 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %281 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %280, i32 0, i32 11
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = icmp ne %struct.TYPE_2__* %282, null
  br i1 %283, label %284, label %303

284:                                              ; preds = %279
  %285 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %286 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %285, i32 0, i32 11
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @EQN_PILE, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %284
  %293 = load %struct.tag*, %struct.tag** %5, align 8
  %294 = icmp eq %struct.tag* null, %293
  %295 = zext i1 %294 to i32
  %296 = call i32 @assert(i32 %295)
  %297 = load %struct.html*, %struct.html** %3, align 8
  %298 = load i32, i32* @TAG_MTR, align 4
  %299 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %297, i32 %298, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %299, %struct.tag** %5, align 8
  %300 = load %struct.html*, %struct.html** %3, align 8
  %301 = load i32, i32* @TAG_MTD, align 4
  %302 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %300, i32 %301, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %303

303:                                              ; preds = %292, %284, %279, %274, %268
  br label %304

304:                                              ; preds = %303, %267
  %305 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %306 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %305, i32 0, i32 5
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %469

309:                                              ; preds = %304
  %310 = load %struct.tag*, %struct.tag** %5, align 8
  %311 = icmp eq %struct.tag* %310, null
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load i32, i32* @TAG_MI, align 4
  store i32 %314, i32* %15, align 4
  %315 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %316 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %315, i32 0, i32 5
  %317 = load i8*, i8** %316, align 8
  store i8* %317, i8** %11, align 8
  %318 = load i8*, i8** %11, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = call i64 @isdigit(i8 zeroext %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %335, label %323

323:                                              ; preds = %309
  %324 = load i8*, i8** %11, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 0
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 46
  br i1 %328, label %329, label %357

329:                                              ; preds = %323
  %330 = load i8*, i8** %11, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 1
  %332 = load i8, i8* %331, align 1
  %333 = call i64 @isdigit(i8 zeroext %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %357

335:                                              ; preds = %329, %309
  %336 = load i32, i32* @TAG_MN, align 4
  store i32 %336, i32* %15, align 4
  br label %337

337:                                              ; preds = %355, %335
  %338 = load i8*, i8** %11, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %11, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %337
  %344 = load i8*, i8** %11, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp ne i32 %346, 46
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load i8*, i8** %11, align 8
  %350 = load i8, i8* %349, align 1
  %351 = call i64 @isdigit(i8 zeroext %350)
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = load i32, i32* @TAG_MI, align 4
  store i32 %354, i32* %15, align 4
  br label %356

355:                                              ; preds = %348, %343
  br label %337

356:                                              ; preds = %353, %337
  br label %404

357:                                              ; preds = %329, %323
  %358 = load i8*, i8** %11, align 8
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %403

362:                                              ; preds = %357
  %363 = load i8*, i8** %11, align 8
  %364 = load i8, i8* %363, align 1
  %365 = call i64 @isalpha(i8 zeroext %364)
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %403

367:                                              ; preds = %362
  %368 = load i32, i32* @TAG_MO, align 4
  store i32 %368, i32* %15, align 4
  br label %369

369:                                              ; preds = %401, %367
  %370 = load i8*, i8** %11, align 8
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %402

374:                                              ; preds = %369
  %375 = load i8*, i8** %11, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 0
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 92
  br i1 %379, label %380, label %390

380:                                              ; preds = %374
  %381 = load i8*, i8** %11, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 1
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %380
  %387 = load i8*, i8** %11, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %11, align 8
  %389 = call i32 @mandoc_escape(i8** %11, i32* null, i32* null)
  br label %401

390:                                              ; preds = %380, %374
  %391 = load i8*, i8** %11, align 8
  %392 = load i8, i8* %391, align 1
  %393 = call i64 @isalnum(i8 zeroext %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = load i32, i32* @TAG_MI, align 4
  store i32 %396, i32* %15, align 4
  br label %402

397:                                              ; preds = %390
  %398 = load i8*, i8** %11, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %11, align 8
  br label %400

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %400, %386
  br label %369

402:                                              ; preds = %395, %369
  br label %403

403:                                              ; preds = %402, %362, %357
  br label %404

404:                                              ; preds = %403, %356
  %405 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %406 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 8
  store i32 %407, i32* %16, align 4
  %408 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %409 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %408, i32 0, i32 5
  %410 = load i8*, i8** %409, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 0
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %443

415:                                              ; preds = %404
  %416 = load i32, i32* %15, align 4
  %417 = load i32, i32* @TAG_MN, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %423, label %419

419:                                              ; preds = %415
  %420 = load i32, i32* %15, align 4
  %421 = load i32, i32* @TAG_MO, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %419, %415
  %424 = load i32, i32* %16, align 4
  %425 = icmp eq i32 %424, 136
  br i1 %425, label %442, label %426

426:                                              ; preds = %423, %419
  %427 = load i32, i32* %15, align 4
  %428 = load i32, i32* @TAG_MI, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %443

430:                                              ; preds = %426
  %431 = load i32, i32* %16, align 4
  %432 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %433 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %432, i32 0, i32 5
  %434 = load i8*, i8** %433, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 1
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 0
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 138, i32 136
  %441 = icmp eq i32 %431, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %430, %423
  store i32 137, i32* %16, align 4
  br label %443

443:                                              ; preds = %442, %430, %426, %404
  %444 = load i32, i32* %16, align 4
  switch i32 %444, label %461 [
    i32 137, label %445
    i32 136, label %449
    i32 140, label %453
    i32 139, label %453
    i32 138, label %457
  ]

445:                                              ; preds = %443
  %446 = load %struct.html*, %struct.html** %3, align 8
  %447 = load i32, i32* %15, align 4
  %448 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %446, i32 %447, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %448, %struct.tag** %5, align 8
  br label %463

449:                                              ; preds = %443
  %450 = load %struct.html*, %struct.html** %3, align 8
  %451 = load i32, i32* %15, align 4
  %452 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %450, i32 %451, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.tag* %452, %struct.tag** %5, align 8
  br label %463

453:                                              ; preds = %443, %443
  %454 = load %struct.html*, %struct.html** %3, align 8
  %455 = load i32, i32* %15, align 4
  %456 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %454, i32 %455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.tag* %456, %struct.tag** %5, align 8
  br label %463

457:                                              ; preds = %443
  %458 = load %struct.html*, %struct.html** %3, align 8
  %459 = load i32, i32* %15, align 4
  %460 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %458, i32 %459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store %struct.tag* %460, %struct.tag** %5, align 8
  br label %463

461:                                              ; preds = %443
  %462 = call i32 (...) @abort() #3
  unreachable

463:                                              ; preds = %457, %453, %449, %445
  %464 = load %struct.html*, %struct.html** %3, align 8
  %465 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %466 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %465, i32 0, i32 5
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 @print_text(%struct.html* %464, i8* %467)
  br label %521

469:                                              ; preds = %304
  %470 = load %struct.tag*, %struct.tag** %5, align 8
  %471 = icmp eq %struct.tag* null, %470
  br i1 %471, label %472, label %520

472:                                              ; preds = %469
  %473 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %474 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %473, i32 0, i32 7
  %475 = load i8*, i8** %474, align 8
  %476 = icmp ne i8* null, %475
  br i1 %476, label %482, label %477

477:                                              ; preds = %472
  %478 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %479 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %478, i32 0, i32 8
  %480 = load i8*, i8** %479, align 8
  %481 = icmp ne i8* null, %480
  br i1 %481, label %482, label %508

482:                                              ; preds = %477, %472
  %483 = load %struct.html*, %struct.html** %3, align 8
  %484 = load i32, i32* @TAG_MFENCED, align 4
  %485 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %486 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %485, i32 0, i32 7
  %487 = load i8*, i8** %486, align 8
  %488 = icmp eq i8* %487, null
  br i1 %488, label %489, label %490

489:                                              ; preds = %482
  br label %494

490:                                              ; preds = %482
  %491 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %492 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %491, i32 0, i32 7
  %493 = load i8*, i8** %492, align 8
  br label %494

494:                                              ; preds = %490, %489
  %495 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %489 ], [ %493, %490 ]
  %496 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %497 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %496, i32 0, i32 8
  %498 = load i8*, i8** %497, align 8
  %499 = icmp eq i8* %498, null
  br i1 %499, label %500, label %501

500:                                              ; preds = %494
  br label %505

501:                                              ; preds = %494
  %502 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %503 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %502, i32 0, i32 8
  %504 = load i8*, i8** %503, align 8
  br label %505

505:                                              ; preds = %501, %500
  %506 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %500 ], [ %504, %501 ]
  %507 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %483, i32 %484, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %495, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %506)
  store %struct.tag* %507, %struct.tag** %5, align 8
  br label %508

508:                                              ; preds = %505, %477
  %509 = load %struct.tag*, %struct.tag** %5, align 8
  %510 = icmp eq %struct.tag* null, %509
  br i1 %510, label %511, label %515

511:                                              ; preds = %508
  %512 = load %struct.html*, %struct.html** %3, align 8
  %513 = load i32, i32* @TAG_MROW, align 4
  %514 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %512, i32 %513, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %514, %struct.tag** %5, align 8
  br label %519

515:                                              ; preds = %508
  %516 = load %struct.html*, %struct.html** %3, align 8
  %517 = load i32, i32* @TAG_MROW, align 4
  %518 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %516, i32 %517, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %519

519:                                              ; preds = %515, %511
  br label %520

520:                                              ; preds = %519, %469
  br label %521

521:                                              ; preds = %520, %463
  %522 = load %struct.html*, %struct.html** %3, align 8
  %523 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %524 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %523, i32 0, i32 10
  %525 = load %struct.eqn_box*, %struct.eqn_box** %524, align 8
  call void @eqn_box(%struct.html* %522, %struct.eqn_box* %525)
  br label %526

526:                                              ; preds = %521, %141, %65, %59, %47, %31
  %527 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %528 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %527, i32 0, i32 4
  %529 = load i8*, i8** %528, align 8
  %530 = icmp ne i8* null, %529
  br i1 %530, label %531, label %543

531:                                              ; preds = %526
  %532 = load %struct.html*, %struct.html** %3, align 8
  %533 = load i32, i32* @TAG_MO, align 4
  %534 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %532, i32 %533, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %534, %struct.tag** %8, align 8
  %535 = load %struct.html*, %struct.html** %3, align 8
  %536 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %537 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %536, i32 0, i32 4
  %538 = load i8*, i8** %537, align 8
  %539 = call i32 @print_text(%struct.html* %535, i8* %538)
  %540 = load %struct.html*, %struct.html** %3, align 8
  %541 = load %struct.tag*, %struct.tag** %8, align 8
  %542 = call i32 @print_tagq(%struct.html* %540, %struct.tag* %541)
  br label %543

543:                                              ; preds = %531, %526
  %544 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %545 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %544, i32 0, i32 3
  %546 = load i8*, i8** %545, align 8
  %547 = icmp ne i8* null, %546
  br i1 %547, label %548, label %560

548:                                              ; preds = %543
  %549 = load %struct.html*, %struct.html** %3, align 8
  %550 = load i32, i32* @TAG_MO, align 4
  %551 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %549, i32 %550, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %551, %struct.tag** %8, align 8
  %552 = load %struct.html*, %struct.html** %3, align 8
  %553 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %554 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %553, i32 0, i32 3
  %555 = load i8*, i8** %554, align 8
  %556 = call i32 @print_text(%struct.html* %552, i8* %555)
  %557 = load %struct.html*, %struct.html** %3, align 8
  %558 = load %struct.tag*, %struct.tag** %8, align 8
  %559 = call i32 @print_tagq(%struct.html* %557, %struct.tag* %558)
  br label %560

560:                                              ; preds = %548, %543
  %561 = load %struct.tag*, %struct.tag** %5, align 8
  %562 = icmp ne %struct.tag* null, %561
  br i1 %562, label %563, label %567

563:                                              ; preds = %560
  %564 = load %struct.html*, %struct.html** %3, align 8
  %565 = load %struct.tag*, %struct.tag** %5, align 8
  %566 = call i32 @print_tagq(%struct.html* %564, %struct.tag* %565)
  br label %567

567:                                              ; preds = %563, %560
  %568 = load %struct.html*, %struct.html** %3, align 8
  %569 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %570 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %569, i32 0, i32 9
  %571 = load %struct.eqn_box*, %struct.eqn_box** %570, align 8
  call void @eqn_box(%struct.html* %568, %struct.eqn_box* %571)
  br label %572

572:                                              ; preds = %567, %19
  ret void
}

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, ...) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @print_text(%struct.html*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
