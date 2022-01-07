; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DPP: URI\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DPP:\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DPP: Not a DPP URI\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"DPP: Ignore unrecognized URI parameter\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"DPP: URI missing public-key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpp_bootstrap_info* (i8*)* @dpp_parse_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpp_bootstrap_info* @dpp_parse_uri(i8* %0) #0 {
  %2 = alloca %struct.dpp_bootstrap_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dpp_bootstrap_info*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @os_strlen(i8* %14)
  %16 = call i32 @wpa_hexdump_ascii(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @os_strncmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %2, align 8
  br label %168

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %124, %36, %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @os_strchr(i8* %27, i8 signext 59)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %127

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %26

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 67
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %6, align 8
  br label %124

57:                                               ; preds = %51, %45, %39
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 77
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %7, align 8
  br label %123

75:                                               ; preds = %69, %63, %57
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 73
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %8, align 8
  br label %122

93:                                               ; preds = %87, %81, %75
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 75
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 58
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  store i8* %110, i8** %9, align 8
  br label %121

111:                                              ; preds = %105, %99, %93
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @wpa_hexdump_ascii(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %113, i32 %119)
  br label %121

121:                                              ; preds = %111, %108
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122, %72
  br label %124

124:                                              ; preds = %123, %54
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %4, align 8
  br label %26

127:                                              ; preds = %31
  %128 = load i8*, i8** %9, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @MSG_INFO, align 4
  %132 = call i32 @wpa_printf(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %2, align 8
  br label %168

133:                                              ; preds = %127
  %134 = call %struct.dpp_bootstrap_info* @os_zalloc(i32 4)
  store %struct.dpp_bootstrap_info* %134, %struct.dpp_bootstrap_info** %10, align 8
  %135 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %136 = icmp ne %struct.dpp_bootstrap_info* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %2, align 8
  br label %168

138:                                              ; preds = %133
  %139 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = call i64 @dpp_clone_uri(%struct.dpp_bootstrap_info* %139, i8* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %138
  %144 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i64 @dpp_parse_uri_chan_list(%struct.dpp_bootstrap_info* %144, i8* %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %143
  %149 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @dpp_parse_uri_mac(%struct.dpp_bootstrap_info* %149, i8* %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %148
  %154 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @dpp_parse_uri_info(%struct.dpp_bootstrap_info* %154, i8* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i64 @dpp_parse_uri_pk(%struct.dpp_bootstrap_info* %159, i8* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158, %153, %148, %143, %138
  %164 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %165 = call i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info* %164)
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %10, align 8
  br label %166

166:                                              ; preds = %163, %158
  %167 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  store %struct.dpp_bootstrap_info* %167, %struct.dpp_bootstrap_info** %2, align 8
  br label %168

168:                                              ; preds = %166, %137, %130, %20
  %169 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %2, align 8
  ret %struct.dpp_bootstrap_info* %169
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local %struct.dpp_bootstrap_info* @os_zalloc(i32) #1

declare dso_local i64 @dpp_clone_uri(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i64 @dpp_parse_uri_chan_list(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i64 @dpp_parse_uri_mac(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i64 @dpp_parse_uri_info(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i64 @dpp_parse_uri_pk(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
