; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getflags.flagstring = internal global [32 x i8] zeroinitializer, align 16
@IEEE80211_NODE_AUTH = common dso_local global i32 0, align 4
@IEEE80211_NODE_QOS = common dso_local global i32 0, align 4
@IEEE80211_NODE_ERP = common dso_local global i32 0, align 4
@IEEE80211_NODE_PWR_MGT = common dso_local global i32 0, align 4
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@IEEE80211_NODE_HTCOMPAT = common dso_local global i32 0, align 4
@IEEE80211_NODE_VHT = common dso_local global i32 0, align 4
@IEEE80211_NODE_WPS = common dso_local global i32 0, align 4
@IEEE80211_NODE_TSN = common dso_local global i32 0, align 4
@IEEE80211_NODE_AMPDU_TX = common dso_local global i32 0, align 4
@IEEE80211_NODE_AMPDU_RX = common dso_local global i32 0, align 4
@IEEE80211_NODE_MIMO_PS = common dso_local global i32 0, align 4
@IEEE80211_NODE_MIMO_RTS = common dso_local global i32 0, align 4
@IEEE80211_NODE_RIFS = common dso_local global i32 0, align 4
@IEEE80211_NODE_SGI40 = common dso_local global i32 0, align 4
@IEEE80211_NODE_SGI20 = common dso_local global i32 0, align 4
@IEEE80211_NODE_AMSDU_TX = common dso_local global i32 0, align 4
@IEEE80211_NODE_AMSDU_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @getflags.flagstring, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IEEE80211_NODE_AUTH, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  store i8 65, i8* %9, align 1
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @IEEE80211_NODE_QOS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  store i8 81, i8* %17, align 1
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @IEEE80211_NODE_ERP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  store i8 69, i8* %25, align 1
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 80, i8* %33, align 1
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  store i8 72, i8* %41, align 1
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @IEEE80211_NODE_HTCOMPAT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  store i8 43, i8* %48, align 1
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @IEEE80211_NODE_VHT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  store i8 86, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @IEEE80211_NODE_WPS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  store i8 87, i8* %65, align 1
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @IEEE80211_NODE_TSN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %3, align 8
  store i8 78, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @IEEE80211_NODE_AMPDU_TX, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  store i8 84, i8* %81, align 1
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @IEEE80211_NODE_AMPDU_RX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %3, align 8
  store i8 82, i8* %89, align 1
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @IEEE80211_NODE_MIMO_PS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %3, align 8
  store i8 77, i8* %97, align 1
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @IEEE80211_NODE_MIMO_RTS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  store i8 43, i8* %104, align 1
  br label %106

106:                                              ; preds = %103, %96
  br label %107

107:                                              ; preds = %106, %91
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @IEEE80211_NODE_RIFS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %3, align 8
  store i8 73, i8* %113, align 1
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @IEEE80211_NODE_SGI40, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %3, align 8
  store i8 83, i8* %121, align 1
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @IEEE80211_NODE_SGI20, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %3, align 8
  store i8 43, i8* %128, align 1
  br label %130

130:                                              ; preds = %127, %120
  br label %140

131:                                              ; preds = %115
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @IEEE80211_NODE_SGI20, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %3, align 8
  store i8 115, i8* %137, align 1
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %130
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @IEEE80211_NODE_AMSDU_TX, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %3, align 8
  store i8 116, i8* %146, align 1
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @IEEE80211_NODE_AMSDU_RX, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %3, align 8
  store i8 114, i8* %154, align 1
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i8*, i8** %3, align 8
  store i8 0, i8* %157, align 1
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @getflags.flagstring, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
