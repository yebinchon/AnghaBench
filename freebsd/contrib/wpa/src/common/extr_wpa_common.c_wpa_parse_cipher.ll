; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_parse_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_parse_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"CCMP-256\00", align 1
@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"GCMP-256\00", align 1
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"GCMP\00", align 1
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"WEP104\00", align 1
@WPA_CIPHER_WEP104 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"WEP40\00", align 1
@WPA_CIPHER_WEP40 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"GTK_NOT_USED\00", align 1
@WPA_CIPHER_GTK_NOT_USED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"AES-128-CMAC\00", align 1
@WPA_CIPHER_AES_128_CMAC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"BIP-GMAC-128\00", align 1
@WPA_CIPHER_BIP_GMAC_128 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"BIP-GMAC-256\00", align 1
@WPA_CIPHER_BIP_GMAC_256 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"BIP-CMAC-256\00", align 1
@WPA_CIPHER_BIP_CMAC_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_parse_cipher(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @os_strdup(i8* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %201

14:                                               ; preds = %1
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %194, %14
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %197

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %22

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %197

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %7, align 8
  br label %45

45:                                               ; preds = %62, %43
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 9
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %55, %50, %45
  %61 = phi i1 [ false, %50 ], [ false, %45 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %45

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  %71 = load i8*, i8** %7, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @os_strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %190

79:                                               ; preds = %65
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @os_strcmp(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %189

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @os_strcmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %188

95:                                               ; preds = %87
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @os_strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %187

103:                                              ; preds = %95
  %104 = load i8*, i8** %6, align 8
  %105 = call i64 @os_strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %186

111:                                              ; preds = %103
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @os_strcmp(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %185

119:                                              ; preds = %111
  %120 = load i8*, i8** %6, align 8
  %121 = call i64 @os_strcmp(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  %125 = load i32, i32* %4, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %4, align 4
  br label %184

127:                                              ; preds = %119
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @os_strcmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %183

135:                                              ; preds = %127
  %136 = load i8*, i8** %6, align 8
  %137 = call i64 @os_strcmp(i8* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* @WPA_CIPHER_GTK_NOT_USED, align 4
  %141 = load i32, i32* %4, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %4, align 4
  br label %182

143:                                              ; preds = %135
  %144 = load i8*, i8** %6, align 8
  %145 = call i64 @os_strcmp(i8* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @WPA_CIPHER_AES_128_CMAC, align 4
  %149 = load i32, i32* %4, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %4, align 4
  br label %181

151:                                              ; preds = %143
  %152 = load i8*, i8** %6, align 8
  %153 = call i64 @os_strcmp(i8* %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @WPA_CIPHER_BIP_GMAC_128, align 4
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  br label %180

159:                                              ; preds = %151
  %160 = load i8*, i8** %6, align 8
  %161 = call i64 @os_strcmp(i8* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* @WPA_CIPHER_BIP_GMAC_256, align 4
  %165 = load i32, i32* %4, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %4, align 4
  br label %179

167:                                              ; preds = %159
  %168 = load i8*, i8** %6, align 8
  %169 = call i64 @os_strcmp(i8* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* @WPA_CIPHER_BIP_CMAC_256, align 4
  %173 = load i32, i32* %4, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %4, align 4
  br label %178

175:                                              ; preds = %167
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @os_free(i8* %176)
  store i32 -1, i32* %2, align 4
  br label %201

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %163
  br label %180

180:                                              ; preds = %179, %155
  br label %181

181:                                              ; preds = %180, %147
  br label %182

182:                                              ; preds = %181, %139
  br label %183

183:                                              ; preds = %182, %131
  br label %184

184:                                              ; preds = %183, %123
  br label %185

185:                                              ; preds = %184, %115
  br label %186

186:                                              ; preds = %185, %107
  br label %187

187:                                              ; preds = %186, %99
  br label %188

188:                                              ; preds = %187, %91
  br label %189

189:                                              ; preds = %188, %83
  br label %190

190:                                              ; preds = %189, %75
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %197

194:                                              ; preds = %190
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  store i8* %196, i8** %6, align 8
  br label %16

197:                                              ; preds = %193, %42, %16
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @os_free(i8* %198)
  %200 = load i32, i32* %4, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %175, %13
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
