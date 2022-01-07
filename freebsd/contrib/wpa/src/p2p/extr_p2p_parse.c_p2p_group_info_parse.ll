; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_group_info_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_group_info_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group_info = type { i64, %struct.p2p_client_info* }
%struct.p2p_client_info = type { i32*, i32*, i32*, i32, i32*, i8*, i32, i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ATTR_DEV_NAME = common dso_local global i64 0, align 8
@WPS_DEV_NAME_MAX_LEN = common dso_local global i32 0, align 4
@P2P_MAX_GROUP_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_group_info_parse(i32* %0, i64 %1, %struct.p2p_group_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.p2p_group_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.p2p_client_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.p2p_group_info* %2, %struct.p2p_group_info** %7, align 8
  %14 = load %struct.p2p_group_info*, %struct.p2p_group_info** %7, align 8
  %15 = call i32 @os_memset(%struct.p2p_group_info* %14, i32 0, i32 16)
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %178

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %176, %19
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %177

28:                                               ; preds = %24
  %29 = load %struct.p2p_group_info*, %struct.p2p_group_info** %7, align 8
  %30 = getelementptr inbounds %struct.p2p_group_info, %struct.p2p_group_info* %29, i32 0, i32 1
  %31 = load %struct.p2p_client_info*, %struct.p2p_client_info** %30, align 8
  %32 = load %struct.p2p_group_info*, %struct.p2p_group_info** %7, align 8
  %33 = getelementptr inbounds %struct.p2p_group_info, %struct.p2p_group_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %31, i64 %34
  store %struct.p2p_client_info* %35, %struct.p2p_client_info** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = icmp sgt i64 %40, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = mul nsw i32 2, %50
  %52 = add nsw i32 %51, 1
  %53 = add nsw i32 %52, 2
  %54 = add nsw i32 %53, 8
  %55 = add nsw i32 %54, 1
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %28
  store i32 -1, i32* %4, align 4
  br label %178

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %65 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %72 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %77, align 4
  %80 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %81 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i64 @WPA_GET_BE16(i32* %82)
  %84 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %85 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %84, i32 0, i32 7
  store i64 %83, i64* %85, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %90 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %8, align 8
  %95 = load i32, i32* %93, align 4
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 8, %96
  %98 = sext i32 %97 to i64
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = icmp sgt i64 %98, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %178

107:                                              ; preds = %58
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %110 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %113 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = mul nsw i32 8, %114
  %116 = load i32*, i32** %8, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %8, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = ptrtoint i32* %119 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  %125 = icmp slt i64 %124, 4
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  store i32 -1, i32* %4, align 4
  br label %178

127:                                              ; preds = %107
  %128 = load i32*, i32** %8, align 8
  %129 = call i64 @WPA_GET_BE16(i32* %128)
  %130 = load i64, i64* @ATTR_DEV_NAME, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 -1, i32* %4, align 4
  br label %178

133:                                              ; preds = %127
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32* %135, i32** %8, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = call i64 @WPA_GET_BE16(i32* %136)
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32* %140, i32** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = load i32*, i32** %11, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = ptrtoint i32* %143 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = icmp sgt i64 %142, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  store i32 -1, i32* %4, align 4
  br label %178

151:                                              ; preds = %133
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @WPS_DEV_NAME_MAX_LEN, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @WPS_DEV_NAME_MAX_LEN, align 4
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32*, i32** %8, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %161 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.p2p_client_info*, %struct.p2p_client_info** %10, align 8
  %164 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load i32*, i32** %11, align 8
  store i32* %165, i32** %8, align 8
  %166 = load %struct.p2p_group_info*, %struct.p2p_group_info** %7, align 8
  %167 = getelementptr inbounds %struct.p2p_group_info, %struct.p2p_group_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.p2p_group_info*, %struct.p2p_group_info** %7, align 8
  %171 = getelementptr inbounds %struct.p2p_group_info, %struct.p2p_group_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @P2P_MAX_GROUP_ENTRIES, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %157
  store i32 -1, i32* %4, align 4
  br label %178

176:                                              ; preds = %157
  br label %24

177:                                              ; preds = %24
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %175, %150, %132, %126, %106, %57, %18
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @os_memset(%struct.p2p_group_info*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
