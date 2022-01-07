; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_ansi_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_ansi_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"repeated cursor control %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"inconsistent prefix for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"inconsistent length for %s, expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"BADC\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"inconsistent suffix for %s, expected %c, have %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @check_ansi_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ansi_cursor(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store i64 0, i64* %6, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %61, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %64

19:                                               ; preds = %16
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %57, %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i8**, i8*** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %37, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %32
  %46 = load i8**, i8*** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i8* @_nc_tic_expand(i8* %50, i32 %51, i32 0)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i8*, i8*, ...) @_nc_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %45, %32, %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %24

60:                                               ; preds = %24
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %257, label %67

67:                                               ; preds = %64
  %68 = load i8**, i8*** %2, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = call signext i8 @UChar(i8 signext %73)
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 27
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 91
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i64 2, i64* %6, align 8
  br label %85

84:                                               ; preds = %77
  store i64 1, i64* %6, align 8
  br label %85

85:                                               ; preds = %84, %83
  br label %97

86:                                               ; preds = %67
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = call signext i8 @UChar(i8 signext %89)
  %91 = sext i8 %90 to i32
  %92 = call signext i8 @UChar(i8 signext -101)
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i64 1, i64* %6, align 8
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load i64, i64* %6, align 8
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %119, %100
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i8*, i8** %11, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = call signext i8 @UChar(i8 signext %113)
  %115 = call i64 @isdigit(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %109, %102
  %118 = phi i1 [ false, %102 ], [ %116, %109 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %7, align 8
  br label %102

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i64, i64* %6, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %256

126:                                              ; preds = %123
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 65
  br i1 %132, label %133, label %256

133:                                              ; preds = %126
  %134 = load i32, i32* @TRUE, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %134, i32* %135, align 4
  %136 = load i8**, i8*** %2, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  %142 = load i32, i32* @TRUE, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %142, i32* %143, align 16
  br label %144

144:                                              ; preds = %141, %133
  %145 = load i8**, i8*** %2, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @TRUE, align 4
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %151, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %144
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %252, %153
  %155 = load i32, i32* %3, align 4
  %156 = icmp slt i32 %155, 4
  br i1 %156, label %157, label %255

157:                                              ; preds = %154
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %157
  %164 = load i8**, i8*** %2, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @strlen(i8* %168)
  %170 = icmp eq i64 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %163, %157
  br label %252

172:                                              ; preds = %163
  %173 = load i8**, i8*** %2, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i64, i64* %6, align 8
  %180 = call i64 @memcmp(i8* %177, i8* %178, i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %172
  %183 = load i8**, i8*** %2, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* @TRUE, align 4
  %189 = call i8* @_nc_tic_expand(i8* %187, i32 %188, i32 0)
  store i8* %189, i8** %12, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 (i8*, i8*, ...) @_nc_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %190)
  br label %252

192:                                              ; preds = %172
  %193 = load i8**, i8*** %2, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strlen(i8* %197)
  %199 = load i64, i64* %7, align 8
  %200 = icmp ult i64 %198, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %192
  %202 = load i8**, i8*** %2, align 8
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* @TRUE, align 4
  %208 = call i8* @_nc_tic_expand(i8* %206, i32 %207, i32 0)
  store i8* %208, i8** %13, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = load i64, i64* %7, align 8
  %211 = trunc i64 %210 to i32
  %212 = add nsw i32 %211, 1
  %213 = call i32 (i8*, i8*, ...) @_nc_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %209, i32 %212)
  br label %252

214:                                              ; preds = %192
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.5, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  store i32 %219, i32* %5, align 4
  %220 = load i8**, i8*** %2, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = load i64, i64* %7, align 8
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %251

231:                                              ; preds = %214
  %232 = load i8**, i8*** %2, align 8
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* @TRUE, align 4
  %238 = call i8* @_nc_tic_expand(i8* %236, i32 %237, i32 0)
  store i8* %238, i8** %14, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = load i32, i32* %5, align 4
  %241 = load i8**, i8*** %2, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = load i64, i64* %7, align 8
  %247 = getelementptr inbounds i8, i8* %245, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = call i32 (i8*, i8*, ...) @_nc_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %239, i32 %240, i32 %249)
  br label %251

251:                                              ; preds = %231, %214
  br label %252

252:                                              ; preds = %251, %201, %182, %171
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %3, align 4
  br label %154

255:                                              ; preds = %154
  br label %256

256:                                              ; preds = %255, %126, %123
  br label %257

257:                                              ; preds = %256, %64
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @_nc_tic_expand(i8*, i32, i32) #1

declare dso_local i32 @_nc_warning(i8*, i8*, ...) #1

declare dso_local signext i8 @UChar(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
