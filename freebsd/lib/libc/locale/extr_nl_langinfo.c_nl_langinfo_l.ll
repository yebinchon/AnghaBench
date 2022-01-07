; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_nl_langinfo.c_nl_langinfo_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_nl_langinfo.c_nl_langinfo_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_23__ = type { i64, i64*, i64*, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_22__ = type { i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"EUC-CN\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"eucCN\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EUC-JP\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"eucJP\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EUC-KR\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"eucKR\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"EUC-TW\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"eucTW\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BIG5\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Big5\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"MSKanji\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"SJIS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"NONE:\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CHAR_MAX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nl_langinfo_l(i32 %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = call i32 @FIX_LOCALE(%struct.TYPE_21__* %11)
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %281 [
    i32 164, label %14
    i32 153, label %72
    i32 155, label %78
    i32 131, label %84
    i32 130, label %90
    i32 165, label %96
    i32 134, label %102
    i32 162, label %108
    i32 161, label %108
    i32 160, label %108
    i32 159, label %108
    i32 158, label %108
    i32 157, label %108
    i32 156, label %108
    i32 197, label %117
    i32 196, label %117
    i32 195, label %117
    i32 194, label %117
    i32 193, label %117
    i32 192, label %117
    i32 191, label %117
    i32 148, label %126
    i32 144, label %126
    i32 143, label %126
    i32 142, label %126
    i32 141, label %126
    i32 140, label %126
    i32 139, label %126
    i32 138, label %126
    i32 137, label %126
    i32 147, label %126
    i32 146, label %126
    i32 145, label %126
    i32 190, label %135
    i32 186, label %135
    i32 185, label %135
    i32 184, label %135
    i32 183, label %135
    i32 182, label %135
    i32 181, label %135
    i32 180, label %135
    i32 179, label %135
    i32 189, label %135
    i32 188, label %135
    i32 187, label %135
    i32 178, label %144
    i32 174, label %144
    i32 173, label %144
    i32 172, label %144
    i32 171, label %144
    i32 170, label %144
    i32 169, label %144
    i32 168, label %144
    i32 167, label %144
    i32 177, label %144
    i32 176, label %144
    i32 175, label %144
    i32 152, label %153
    i32 151, label %154
    i32 150, label %155
    i32 149, label %156
    i32 166, label %157
    i32 133, label %158
    i32 132, label %164
    i32 129, label %170
    i32 136, label %176
    i32 128, label %182
    i32 135, label %188
    i32 163, label %194
    i32 154, label %275
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = call %struct.TYPE_19__* @XLOCALE_CTYPE(%struct.TYPE_21__* %15)
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %71

25:                                               ; preds = %14
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %70

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %69

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %68

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %67

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %66

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %65

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  store i8* %61, i8** %5, align 8
  br label %64

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %39
  br label %69

69:                                               ; preds = %68, %34
  br label %70

70:                                               ; preds = %69, %29
  br label %71

71:                                               ; preds = %70, %24
  br label %282

72:                                               ; preds = %2
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %73)
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %5, align 8
  br label %282

78:                                               ; preds = %2
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %79)
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 10
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %5, align 8
  br label %282

84:                                               ; preds = %2
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %85)
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %5, align 8
  br label %282

90:                                               ; preds = %2
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %91)
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %5, align 8
  br label %282

96:                                               ; preds = %2
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %97)
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %5, align 8
  br label %282

102:                                              ; preds = %2
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %103)
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %5, align 8
  br label %282

108:                                              ; preds = %2, %2, %2, %2, %2, %2, %2
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %109)
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  %113 = call i64 @_REL(i32 162)
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %5, align 8
  br label %282

117:                                              ; preds = %2, %2, %2, %2, %2, %2, %2
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %118)
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 4
  %121 = load i64*, i64** %120, align 8
  %122 = call i64 @_REL(i32 197)
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** %5, align 8
  br label %282

126:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %128 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %127)
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = call i64 @_REL(i32 148)
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** %5, align 8
  br label %282

135:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %137 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %136)
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = call i64 @_REL(i32 190)
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %5, align 8
  br label %282

144:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %145)
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = call i64 @_REL(i32 178)
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %5, align 8
  br label %282

153:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %282

154:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %282

155:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %282

156:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %282

157:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %282

158:                                              ; preds = %2
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %160 = call %struct.TYPE_24__* @__get_current_numeric_locale(%struct.TYPE_21__* %159)
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i8*
  store i8* %163, i8** %5, align 8
  br label %282

164:                                              ; preds = %2
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = call %struct.TYPE_24__* @__get_current_numeric_locale(%struct.TYPE_21__* %165)
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** %5, align 8
  br label %282

170:                                              ; preds = %2
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = call %struct.TYPE_18__* @__get_current_messages_locale(%struct.TYPE_21__* %171)
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i8*
  store i8* %175, i8** %5, align 8
  br label %282

176:                                              ; preds = %2
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %178 = call %struct.TYPE_18__* @__get_current_messages_locale(%struct.TYPE_21__* %177)
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i8*
  store i8* %181, i8** %5, align 8
  br label %282

182:                                              ; preds = %2
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %184 = call %struct.TYPE_18__* @__get_current_messages_locale(%struct.TYPE_21__* %183)
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %5, align 8
  br label %282

188:                                              ; preds = %2
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = call %struct.TYPE_18__* @__get_current_messages_locale(%struct.TYPE_21__* %189)
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  store i8* %193, i8** %5, align 8
  br label %282

194:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %196 = call %struct.TYPE_17__* @__get_current_monetary_locale(%struct.TYPE_21__* %195)
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i8*
  store i8* %199, i8** %6, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %274

204:                                              ; preds = %194
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = call %struct.TYPE_22__* @localeconv_l(%struct.TYPE_21__* %205)
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i8, i8* %207, align 1
  store i8 %208, i8* %8, align 1
  %209 = load i8, i8* %8, align 1
  %210 = sext i8 %209 to i32
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %212 = call %struct.TYPE_22__* @localeconv_l(%struct.TYPE_21__* %211)
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %210, %215
  br i1 %216, label %217, label %273

217:                                              ; preds = %204
  store i8 0, i8* %9, align 1
  %218 = load i8, i8* %8, align 1
  %219 = sext i8 %218 to i32
  %220 = load i8, i8* @CHAR_MAX, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %217
  %224 = load i8*, i8** %6, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %226 = call %struct.TYPE_17__* @__get_current_monetary_locale(%struct.TYPE_21__* %225)
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @strcmp(i8* %224, i8* %228)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  store i8 46, i8* %9, align 1
  br label %232

232:                                              ; preds = %231, %223
  br label %240

233:                                              ; preds = %217
  %234 = load i8, i8* %8, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 45, i32 43
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %9, align 1
  br label %240

240:                                              ; preds = %233, %232
  %241 = load i8, i8* %9, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %272

244:                                              ; preds = %240
  %245 = load i8*, i8** %6, align 8
  %246 = call i32 @strlen(i8* %245)
  store i32 %246, i32* %10, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 2
  %252 = call i8* @reallocf(i8* %249, i32 %251)
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  store i8* %252, i8** %254, align 8
  %255 = icmp ne i8* %252, null
  br i1 %255, label %256, label %271

256:                                              ; preds = %244
  %257 = load i8, i8* %9, align 1
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  store i8 %257, i8* %260, align 1
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = ptrtoint i8* %264 to i32
  %266 = load i8*, i8** %6, align 8
  %267 = call i32 @strcpy(i32 %265, i8* %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  store i8* %270, i8** %5, align 8
  br label %271

271:                                              ; preds = %256, %244
  br label %272

272:                                              ; preds = %271, %240
  br label %273

273:                                              ; preds = %272, %204
  br label %274

274:                                              ; preds = %273, %194
  br label %282

275:                                              ; preds = %2
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %277 = call %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__* %276)
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = inttoptr i64 %279 to i8*
  store i8* %280, i8** %5, align 8
  br label %282

281:                                              ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %282

282:                                              ; preds = %281, %275, %274, %188, %182, %176, %170, %164, %158, %157, %156, %155, %154, %153, %144, %135, %126, %117, %108, %102, %96, %90, %84, %78, %72, %71
  %283 = load i8*, i8** %5, align 8
  ret i8* %283
}

declare dso_local i32 @FIX_LOCALE(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @XLOCALE_CTYPE(%struct.TYPE_21__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @__get_current_time_locale(%struct.TYPE_21__*) #1

declare dso_local i64 @_REL(i32) #1

declare dso_local %struct.TYPE_24__* @__get_current_numeric_locale(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_18__* @__get_current_messages_locale(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_17__* @__get_current_monetary_locale(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @localeconv_l(%struct.TYPE_21__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @reallocf(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
