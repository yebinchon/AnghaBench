; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_txpow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_txpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ieee80211req_chaninfo = type { i32, %struct.ieee80211_channel* }

@IEEE80211_CHAN_BYTES = common dso_local global i32 0, align 4
@chaninfo = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"no space for active channel list\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_txpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_txpow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211req_chaninfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @IEEE80211_CHAN_BYTES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @getchaninfo(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chaninfo, align 8
  %17 = call i32 @IEEE80211_CHANINFO_SPACE(%struct.TYPE_3__* %16)
  %18 = call %struct.ieee80211req_chaninfo* @malloc(i32 %17)
  store %struct.ieee80211req_chaninfo* %18, %struct.ieee80211req_chaninfo** %3, align 8
  %19 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %20 = icmp eq %struct.ieee80211req_chaninfo* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = mul nuw i64 4, %11
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %13, i32 0, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %97, %23
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chaninfo, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %100

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chaninfo, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %38, i64 %40
  store %struct.ieee80211_channel* %41, %struct.ieee80211_channel** %6, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @isset(i32* %13, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %35
  %48 = load i32, i32* @verbose, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %47
  %51 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %57, i32 0, i32 1
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %58, align 8
  %60 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %59, i64 %64
  store %struct.ieee80211_channel* %65, %struct.ieee80211_channel** %7, align 8
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %50
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %76 = bitcast %struct.ieee80211_channel* %74 to i8*
  %77 = bitcast %struct.ieee80211_channel* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  br label %78

78:                                               ; preds = %73, %50
  br label %96

79:                                               ; preds = %47, %35
  %80 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %80, i32 0, i32 1
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %81, align 8
  %83 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i64 %87
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %90 = bitcast %struct.ieee80211_channel* %88 to i8*
  %91 = bitcast %struct.ieee80211_channel* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @setbit(i32* %13, i32 %94)
  br label %96

96:                                               ; preds = %79, %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %29

100:                                              ; preds = %29
  %101 = load i32, i32* @verbose, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %161, label %103

103:                                              ; preds = %100
  %104 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %106, 2
  store i32 %107, i32* %9, align 4
  %108 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = srem i32 %110, 2
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %103
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %142, %116
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %120 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %121, 2
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %117
  %125 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %126 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %125, i32 0, i32 1
  %127 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %127, i64 %129
  %131 = call i32 @print_txpow(%struct.ieee80211_channel* %130)
  %132 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %133 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %132, i32 0, i32 1
  %134 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %134, i64 %138
  %140 = call i32 @print_txpow(%struct.ieee80211_channel* %139)
  %141 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %117

145:                                              ; preds = %117
  %146 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %147 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = srem i32 %148, 2
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %153 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %152, i32 0, i32 1
  %154 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %154, i64 %156
  %158 = call i32 @print_txpow(%struct.ieee80211_channel* %157)
  %159 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %151, %145
  br label %181

161:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %177, %161
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %165 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %170 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %169, i32 0, i32 1
  %171 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %171, i64 %173
  %175 = call i32 @print_txpow_verbose(%struct.ieee80211_channel* %174)
  %176 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %162

180:                                              ; preds = %162
  br label %181

181:                                              ; preds = %180, %160
  %182 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %3, align 8
  %183 = call i32 @free(%struct.ieee80211req_chaninfo* %182)
  %184 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getchaninfo(i32) #2

declare dso_local %struct.ieee80211req_chaninfo* @malloc(i32) #2

declare dso_local i32 @IEEE80211_CHANINFO_SPACE(%struct.TYPE_3__*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @isset(i32*, i32) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @print_txpow(%struct.ieee80211_channel*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @print_txpow_verbose(%struct.ieee80211_channel*) #2

declare dso_local i32 @free(%struct.ieee80211req_chaninfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
