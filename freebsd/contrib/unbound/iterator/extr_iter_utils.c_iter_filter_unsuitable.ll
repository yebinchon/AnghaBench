; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_filter_unsuitable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_filter_unsuitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_env = type { i32, i32, i32 }
%struct.module_env = type { i32 }
%struct.delegpt_addr = type { i64, i64, i32, i32, i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"skip addr on the donotquery list\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"servselect\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"   rtt=%d%s%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" LAME\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" DNSSEC_LAME\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" REC_LAME\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" ADDR_LAME\00", align 1
@USEFUL_SERVER_TOP_TIMEOUT = common dso_local global i32 0, align 4
@UNKNOWN_SERVER_NICENESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_env*, %struct.module_env*, i32*, i64, i32, i32, %struct.delegpt_addr*)* @iter_filter_unsuitable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_filter_unsuitable(%struct.iter_env* %0, %struct.module_env* %1, i32* %2, i64 %3, i32 %4, i32 %5, %struct.delegpt_addr* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iter_env*, align 8
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.delegpt_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iter_env* %0, %struct.iter_env** %9, align 8
  store %struct.module_env* %1, %struct.module_env** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.delegpt_addr* %6, %struct.delegpt_addr** %15, align 8
  %20 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %21 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %180

25:                                               ; preds = %7
  %26 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %27 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %30 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %29, i32 0, i32 3
  %31 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %32 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @donotq_lookup(i32 %28, i32* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i32, i32* @VERB_ALGO, align 4
  %38 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %39 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %38, i32 0, i32 3
  %40 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %41 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @log_addr(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %39, i32 %42)
  store i32 -1, i32* %8, align 4
  br label %180

44:                                               ; preds = %25
  %45 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %46 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %51 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %50, i32 0, i32 3
  %52 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %53 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @addr_is_ip6(i32* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -1, i32* %8, align 4
  br label %180

58:                                               ; preds = %49, %44
  %59 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %60 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %65 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %64, i32 0, i32 3
  %66 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %67 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @addr_is_ip6(i32* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  store i32 -1, i32* %8, align 4
  br label %180

72:                                               ; preds = %63, %58
  %73 = load %struct.module_env*, %struct.module_env** %10, align 8
  %74 = getelementptr inbounds %struct.module_env, %struct.module_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %77 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %76, i32 0, i32 3
  %78 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %79 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @infra_get_lame_rtt(i32 %75, i32* %77, i32 %80, i32* %81, i64 %82, i32 %83, i32* %17, i32* %19, i32* %18, i32* %16, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %157

87:                                               ; preds = %72
  %88 = load i32, i32* @VERB_ALGO, align 4
  %89 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %90 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %89, i32 0, i32 3
  %91 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %92 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @log_addr(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %90, i32 %93)
  %95 = load i32, i32* @VERB_ALGO, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %109 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %110 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %115 = call i32 @verbose(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %96, i8* %100, i8* %104, i8* %108, i8* %114)
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %87
  store i32 -1, i32* %8, align 4
  br label %180

119:                                              ; preds = %87
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 -1, i32* %8, align 4
  br label %180

124:                                              ; preds = %119
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %130 = mul nsw i32 %129, 3
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %8, align 4
  br label %180

132:                                              ; preds = %124
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %137 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135, %132
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %141, %143
  store i32 %144, i32* %8, align 4
  br label %180

145:                                              ; preds = %135
  %146 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %147 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %153 = add nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %180

155:                                              ; preds = %145
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %8, align 4
  br label %180

157:                                              ; preds = %72
  %158 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %159 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* @UNKNOWN_SERVER_NICENESS, align 4
  %164 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %165 = mul nsw i32 %164, 2
  %166 = add nsw i32 %163, %165
  store i32 %166, i32* %8, align 4
  br label %180

167:                                              ; preds = %157
  %168 = load %struct.delegpt_addr*, %struct.delegpt_addr** %15, align 8
  %169 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i32, i32* @UNKNOWN_SERVER_NICENESS, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %8, align 4
  br label %180

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* @UNKNOWN_SERVER_NICENESS, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %178, %172, %162, %155, %150, %140, %127, %123, %118, %71, %57, %36, %24
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i64 @donotq_lookup(i32, i32*, i32) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i64 @addr_is_ip6(i32*, i32) #1

declare dso_local i64 @infra_get_lame_rtt(i32, i32*, i32, i32*, i64, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
