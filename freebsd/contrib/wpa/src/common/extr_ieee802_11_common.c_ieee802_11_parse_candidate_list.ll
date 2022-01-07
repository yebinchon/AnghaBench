; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee802_11_parse_candidate_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee802_11_parse_candidate_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c" neighbor=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Not enough room for additional neighbor\00", align 1
@WLAN_EID_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Invalid BSSID\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Missing BSSID Information\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Missing Operating Class\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Missing Channel Number\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Missing PHY Type\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Not enough room for neighbor subelements\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Invalid neighbor subelement info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_11_parse_candidate_list(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %181, %3
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %192

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @os_strstr(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %192

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 15
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = icmp ugt i32* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 10
  store i8* %37, i8** %5, align 8
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32, i32* @WLAN_EID_NEIGHBOR_REPORT, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @hwaddr_aton(i8* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

51:                                               ; preds = %35
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %8, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 17
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 44
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

65:                                               ; preds = %51
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strtol(i8* %68, i8** %12, i32 0)
  store i64 %69, i64* %11, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @WPA_PUT_LE32(i32* %70, i64 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %8, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 44
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 @wpa_printf(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

82:                                               ; preds = %65
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i8* @atoi(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = call i8* @os_strchr(i8* %90, i8 signext 44)
  store i8* %91, i8** %5, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

97:                                               ; preds = %82
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i8* @atoi(i8* %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @os_strchr(i8* %105, i8 signext 44)
  store i8* %106, i8** %5, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 @wpa_printf(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

112:                                              ; preds = %97
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i8* @atoi(i8* %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = call i8* @os_strchr(i8* %120, i8 signext 32)
  store i8* %121, i8** %9, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i8* @os_strchr(i8* %122, i8 signext 44)
  store i8* %123, i8** %13, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %181

126:                                              ; preds = %112
  %127 = load i8*, i8** %9, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i8*, i8** %13, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = icmp ult i8* %130, %131
  br i1 %132, label %133, label %181

133:                                              ; preds = %129, %126
  %134 = load i8*, i8** %13, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8* %135, i8** %5, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = call i8* @os_strchr(i8* %136, i8 signext 32)
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  store i64 %145, i64* %14, align 8
  br label %149

146:                                              ; preds = %133
  %147 = load i8*, i8** %5, align 8
  %148 = call i64 @os_strlen(i8* %147)
  store i64 %148, i64* %14, align 8
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i32*, i32** %8, align 8
  %151 = load i64, i64* %14, align 8
  %152 = udiv i64 %151, 2
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32*, i32** %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = icmp ugt i32* %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = call i32 @wpa_printf(i32 %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

161:                                              ; preds = %149
  %162 = load i64, i64* %14, align 8
  %163 = and i64 %162, 1
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %5, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i64, i64* %14, align 8
  %169 = udiv i64 %168, 2
  %170 = call i64 @hexstr2bin(i8* %166, i32* %167, i64 %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165, %161
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = call i32 @wpa_printf(i32 %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

175:                                              ; preds = %165
  %176 = load i64, i64* %14, align 8
  %177 = udiv i64 %176, 2
  %178 = load i32*, i32** %8, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 %177
  store i32* %179, i32** %8, align 8
  %180 = load i8*, i8** %9, align 8
  store i8* %180, i8** %5, align 8
  br label %181

181:                                              ; preds = %175, %129, %112
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = ptrtoint i32* %182 to i64
  %185 = ptrtoint i32* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 4
  %188 = sub nsw i64 %187, 2
  %189 = trunc i64 %188 to i32
  %190 = load i32*, i32** %10, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %189, i32* %191, align 4
  br label %16

192:                                              ; preds = %24, %16
  %193 = load i32*, i32** %8, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = ptrtoint i32* %193 to i64
  %196 = ptrtoint i32* %194 to i64
  %197 = sub i64 %195, %196
  %198 = sdiv exact i64 %197, 4
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %192, %172, %158, %109, %94, %79, %62, %48, %32
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @WPA_PUT_LE32(i32*, i64) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
