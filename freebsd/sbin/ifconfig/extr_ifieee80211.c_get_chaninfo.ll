; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get_chaninfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get_chaninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" FHSS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" 11a\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" 11g\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" 11b\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"/10MHz\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/5MHz\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" Turbo\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" vht/80-\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" vht/80+\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" vht/80\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" vht/40-\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" vht/40+\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" vht/20\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" ht/20\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" ht/40-\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" ht/40+\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" vht\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" ht\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ieee80211_channel*, i32, i8*, i64)* @get_chaninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_chaninfo(%struct.ieee80211_channel* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = call i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @strlcat(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @strlcat(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  br label %44

26:                                               ; preds = %18
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %28 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @strlcat(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %43

34:                                               ; preds = %26
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %36 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @strlcat(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %46 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @strlcat(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %54 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @strlcat(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %62 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @strlcat(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %160

71:                                               ; preds = %68
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %73 = call i64 @IEEE80211_IS_CHAN_VHT80(%struct.ieee80211_channel* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %77 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @strlcat(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %81)
  br label %159

83:                                               ; preds = %75, %71
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %85 = call i64 @IEEE80211_IS_CHAN_VHT80(%struct.ieee80211_channel* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %89 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @strlcat(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %93)
  br label %158

95:                                               ; preds = %87, %83
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %97 = call i64 @IEEE80211_IS_CHAN_VHT80(%struct.ieee80211_channel* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @strlcat(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 %101)
  br label %157

103:                                              ; preds = %95
  %104 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %105 = call i64 @IEEE80211_IS_CHAN_VHT40D(%struct.ieee80211_channel* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @strlcat(i8* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 %109)
  br label %156

111:                                              ; preds = %103
  %112 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %113 = call i64 @IEEE80211_IS_CHAN_VHT40U(%struct.ieee80211_channel* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @strlcat(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %117)
  br label %155

119:                                              ; preds = %111
  %120 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %121 = call i64 @IEEE80211_IS_CHAN_VHT20(%struct.ieee80211_channel* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @strlcat(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 %125)
  br label %154

127:                                              ; preds = %119
  %128 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %129 = call i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @strlcat(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %133)
  br label %153

135:                                              ; preds = %127
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %137 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @strlcat(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 %141)
  br label %152

143:                                              ; preds = %135
  %144 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %145 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i8*, i8** %7, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @strlcat(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %139
  br label %153

153:                                              ; preds = %152, %131
  br label %154

154:                                              ; preds = %153, %123
  br label %155

155:                                              ; preds = %154, %115
  br label %156

156:                                              ; preds = %155, %107
  br label %157

157:                                              ; preds = %156, %99
  br label %158

158:                                              ; preds = %157, %91
  br label %159

159:                                              ; preds = %158, %79
  br label %178

160:                                              ; preds = %68
  %161 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %162 = call i64 @IEEE80211_IS_CHAN_VHT(%struct.ieee80211_channel* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i8*, i8** %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @strlcat(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 %166)
  br label %177

168:                                              ; preds = %160
  %169 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %170 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i8*, i8** %7, align 8
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @strlcat(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %164
  br label %178

178:                                              ; preds = %177, %159
  %179 = load i8*, i8** %7, align 8
  ret i8* %179
}

declare dso_local i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT80(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT40D(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT40U(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT20(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
