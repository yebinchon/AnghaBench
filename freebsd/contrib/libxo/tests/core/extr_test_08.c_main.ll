; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_08.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_08.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"gum\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rope\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ladder\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bolt\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"water\00", align 1
@__const.main.list = private unnamed_addr constant [6 x %struct.item] [%struct.item { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 1412 }, %struct.item { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 85 }, %struct.item { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.item { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4123 }, %struct.item { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 17 }, %struct.item zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@XO_STYLE_XML = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@XO_STYLE_JSON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@XO_STYLE_TEXT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@XO_STYLE_HTML = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"pretty\00", align 1
@XOF_PRETTY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"xpath\00", align 1
@XOF_XPATH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@XOF_INFO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"error detected\00", align 1
@XOF_KEYS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"{T:Item/%-10s}{T:Count/%12s}\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"{k:name/%-10s/%s}{n:count/%12u/%u}\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"data2\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"data3\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"m1\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"{:test}\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"data4\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"{Lwc:/Name}{:name/%d} + 1 = {:next/%d}\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"{Lwc:/Last}{:last/%d}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x %struct.item], align 16
  %7 = alloca %struct.item*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [6 x %struct.item]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x %struct.item]* @__const.main.list to i8*), i64 96, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @xo_parse_args(i32 %10, i8** %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %254

16:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %120, %16
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %123

24:                                               ; preds = %17
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @xo_streq(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @XO_STYLE_XML, align 4
  %34 = call i32 @xo_set_style(i32* null, i32 %33)
  br label %119

35:                                               ; preds = %24
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @xo_streq(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @XO_STYLE_JSON, align 4
  %45 = call i32 @xo_set_style(i32* null, i32 %44)
  br label %118

46:                                               ; preds = %35
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @xo_streq(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @XO_STYLE_TEXT, align 4
  %56 = call i32 @xo_set_style(i32* null, i32 %55)
  br label %117

57:                                               ; preds = %46
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @xo_streq(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @XO_STYLE_HTML, align 4
  %67 = call i32 @xo_set_style(i32* null, i32 %66)
  br label %116

68:                                               ; preds = %57
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @xo_streq(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @XOF_PRETTY, align 4
  %78 = call i32 @xo_set_flags(i32* null, i32 %77)
  br label %115

79:                                               ; preds = %68
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @xo_streq(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @XOF_XPATH, align 4
  %89 = call i32 @xo_set_flags(i32* null, i32 %88)
  br label %114

90:                                               ; preds = %79
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @xo_streq(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @XOF_INFO, align 4
  %100 = call i32 @xo_set_flags(i32* null, i32 %99)
  br label %113

101:                                              ; preds = %90
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @xo_streq(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = call i32 @close(i32 -1)
  %111 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %101
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %76
  br label %116

116:                                              ; preds = %115, %65
  br label %117

117:                                              ; preds = %116, %54
  br label %118

118:                                              ; preds = %117, %43
  br label %119

119:                                              ; preds = %118, %32
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %17

123:                                              ; preds = %17
  %124 = load i32, i32* @XOF_KEYS, align 4
  %125 = call i32 @xo_set_flags(i32* null, i32 %124)
  %126 = call i32 @xo_set_program(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %127 = call i32 @xo_open_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %128 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %129 = call i32 @xo_open_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %130 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %131 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %132 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %132, %struct.item** %7, align 8
  br label %133

133:                                              ; preds = %148, %123
  %134 = load %struct.item*, %struct.item** %7, align 8
  %135 = getelementptr inbounds %struct.item, %struct.item* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %140 = load %struct.item*, %struct.item** %7, align 8
  %141 = getelementptr inbounds %struct.item, %struct.item* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.item*, %struct.item** %7, align 8
  %144 = getelementptr inbounds %struct.item, %struct.item* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %142, i32 %145)
  %147 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %148

148:                                              ; preds = %138
  %149 = load %struct.item*, %struct.item** %7, align 8
  %150 = getelementptr inbounds %struct.item, %struct.item* %149, i32 1
  store %struct.item* %150, %struct.item** %7, align 8
  br label %133

151:                                              ; preds = %133
  %152 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %153 = call i32 @xo_close_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %154 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %155 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %156 = call i32 @xo_open_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %157 = call i32 @xo_open_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %158 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %159 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %159, %struct.item** %7, align 8
  br label %160

160:                                              ; preds = %174, %151
  %161 = load %struct.item*, %struct.item** %7, align 8
  %162 = getelementptr inbounds %struct.item, %struct.item* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %177

165:                                              ; preds = %160
  %166 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %167 = load %struct.item*, %struct.item** %7, align 8
  %168 = getelementptr inbounds %struct.item, %struct.item* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.item*, %struct.item** %7, align 8
  %171 = getelementptr inbounds %struct.item, %struct.item* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %169, i32 %172)
  br label %174

174:                                              ; preds = %165
  %175 = load %struct.item*, %struct.item** %7, align 8
  %176 = getelementptr inbounds %struct.item, %struct.item* %175, i32 1
  store %struct.item* %176, %struct.item** %7, align 8
  br label %160

177:                                              ; preds = %160
  %178 = call i32 @xo_close_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %179 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %180 = call i32 @xo_open_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %181 = call i32 @xo_open_marker(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %182 = call i32 @xo_open_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %183 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %184 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %184, %struct.item** %7, align 8
  br label %185

185:                                              ; preds = %199, %177
  %186 = load %struct.item*, %struct.item** %7, align 8
  %187 = getelementptr inbounds %struct.item, %struct.item* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %192 = load %struct.item*, %struct.item** %7, align 8
  %193 = getelementptr inbounds %struct.item, %struct.item* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.item*, %struct.item** %7, align 8
  %196 = getelementptr inbounds %struct.item, %struct.item* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %194, i32 %197)
  br label %199

199:                                              ; preds = %190
  %200 = load %struct.item*, %struct.item** %7, align 8
  %201 = getelementptr inbounds %struct.item, %struct.item* %200, i32 1
  store %struct.item* %201, %struct.item** %7, align 8
  br label %185

202:                                              ; preds = %185
  %203 = call i32 @xo_close_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %204 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %205 = call i32 @xo_close_marker(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %206 = call i32 @xo_close_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %207 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %208 = call i32 @xo_open_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %209 = call i32 @xo_open_marker(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %210 = call i32 @xo_open_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %211 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %212 = getelementptr inbounds [6 x %struct.item], [6 x %struct.item]* %6, i64 0, i64 0
  store %struct.item* %212, %struct.item** %7, align 8
  br label %213

213:                                              ; preds = %245, %202
  %214 = load %struct.item*, %struct.item** %7, align 8
  %215 = getelementptr inbounds %struct.item, %struct.item* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %248

218:                                              ; preds = %213
  %219 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %220 = load %struct.item*, %struct.item** %7, align 8
  %221 = getelementptr inbounds %struct.item, %struct.item* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.item*, %struct.item** %7, align 8
  %224 = getelementptr inbounds %struct.item, %struct.item* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %222, i32 %225)
  %227 = call i32 @xo_open_marker(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %228

228:                                              ; preds = %238, %218
  %229 = load i32, i32* %8, align 4
  %230 = icmp slt i32 %229, 3
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = call i32 @xo_open_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  %236 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 %233, i32 %235)
  %237 = call i32 @xo_close_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %238

238:                                              ; preds = %231
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %228

241:                                              ; preds = %228
  %242 = call i32 @xo_close_marker(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %243 = load i32, i32* %8, align 4
  %244 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %241
  %246 = load %struct.item*, %struct.item** %7, align 8
  %247 = getelementptr inbounds %struct.item, %struct.item* %246, i32 1
  store %struct.item* %247, %struct.item** %7, align 8
  br label %213

248:                                              ; preds = %213
  %249 = call i32 @xo_close_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %250 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %251 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %252 = call i32 @xo_close_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %253 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %248, %15
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #2

declare dso_local i64 @xo_streq(i8*, i8*) #2

declare dso_local i32 @xo_set_style(i32*, i32) #2

declare dso_local i32 @xo_set_flags(i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @xo_err(i32, i8*) #2

declare dso_local i32 @xo_set_program(i8*) #2

declare dso_local i32 @xo_open_container_h(i32*, i8*) #2

declare dso_local i32 @xo_open_container(i8*) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i32 @xo_close_instance(i8*) #2

declare dso_local i32 @xo_close_list(i8*) #2

declare dso_local i32 @xo_close_container(i8*) #2

declare dso_local i32 @xo_open_marker(i8*) #2

declare dso_local i32 @xo_close_marker(i8*) #2

declare dso_local i32 @xo_close_container_h(i32*, i8*) #2

declare dso_local i32 @xo_finish(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
