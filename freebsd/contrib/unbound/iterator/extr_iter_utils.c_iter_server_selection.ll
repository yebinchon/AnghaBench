; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_server_selection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_server_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt_addr = type { i64, %struct.delegpt_addr* }
%struct.iter_env = type { i32 }
%struct.module_env = type { i32, i32* }
%struct.delegpt = type { %struct.delegpt_addr* }
%struct.sock_list = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"selrtt %d\00", align 1
@BLACKLIST_PENALTY = common dso_local global i32 0, align 4
@USEFUL_SERVER_TOP_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"chase to blacklisted recursion lame server\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"chase to blacklisted dnssec lame server\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"chase to recursion lame server\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"chase to dnssec lame server\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"chase to blacklisted lame server\00", align 1
@OUTBOUND_MSG_RETRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt_addr* @iter_server_selection(%struct.iter_env* %0, %struct.module_env* %1, %struct.delegpt* %2, i32* %3, i64 %4, i32 %5, i32* %6, i32* %7, i32 %8, %struct.sock_list* %9, i32 %10) #0 {
  %12 = alloca %struct.delegpt_addr*, align 8
  %13 = alloca %struct.iter_env*, align 8
  %14 = alloca %struct.module_env*, align 8
  %15 = alloca %struct.delegpt*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sock_list*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.delegpt_addr*, align 8
  %27 = alloca %struct.delegpt_addr*, align 8
  %28 = alloca i32, align 4
  store %struct.iter_env* %0, %struct.iter_env** %13, align 8
  store %struct.module_env* %1, %struct.module_env** %14, align 8
  store %struct.delegpt* %2, %struct.delegpt** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store %struct.sock_list* %9, %struct.sock_list** %22, align 8
  store i32 %10, i32* %23, align 4
  %29 = load %struct.iter_env*, %struct.iter_env** %13, align 8
  %30 = load %struct.module_env*, %struct.module_env** %14, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.module_env*, %struct.module_env** %14, align 8
  %35 = getelementptr inbounds %struct.module_env, %struct.module_env* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.delegpt*, %struct.delegpt** %15, align 8
  %39 = load i32, i32* %21, align 4
  %40 = load %struct.sock_list*, %struct.sock_list** %22, align 8
  %41 = load i32, i32* %23, align 4
  %42 = call i32 @iter_filter_order(%struct.iter_env* %29, %struct.module_env* %30, i32* %31, i64 %32, i32 %33, i32 %37, %struct.delegpt* %38, i32* %25, i32 %39, %struct.sock_list* %40, i32 %41)
  store i32 %42, i32* %28, align 4
  %43 = load i32, i32* %28, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %11
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %12, align 8
  br label %182

46:                                               ; preds = %11
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = load i32, i32* %25, align 4
  %49 = call i32 (i32, i8*, ...) @verbose(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* @BLACKLIST_PENALTY, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %46
  %54 = load i32, i32* %25, align 4
  %55 = load i32, i32* @BLACKLIST_PENALTY, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %58 = mul nsw i32 %57, 3
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @VERB_ALGO, align 4
  %62 = call i32 (i32, i8*, ...) @verbose(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %20, align 8
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* @BLACKLIST_PENALTY, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %69 = mul nsw i32 %68, 2
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @VERB_ALGO, align 4
  %73 = call i32 (i32, i8*, ...) @verbose(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32*, i32** %19, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %64
  br label %102

76:                                               ; preds = %46
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %79 = mul nsw i32 %78, 3
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @VERB_ALGO, align 4
  %83 = call i32 (i32, i8*, ...) @verbose(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32*, i32** %20, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %88 = mul nsw i32 %87, 2
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @VERB_ALGO, align 4
  %92 = call i32 (i32, i8*, ...) @verbose(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32*, i32** %19, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @VERB_ALGO, align 4
  %100 = call i32 (i32, i8*, ...) @verbose(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %12, align 8
  br label %182

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i32, i32* %28, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load %struct.delegpt*, %struct.delegpt** %15, align 8
  %107 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %106, i32 0, i32 0
  %108 = load %struct.delegpt_addr*, %struct.delegpt_addr** %107, align 8
  store %struct.delegpt_addr* %108, %struct.delegpt_addr** %26, align 8
  %109 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %110 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* @OUTBOUND_MSG_RETRY, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  store %struct.delegpt_addr* %116, %struct.delegpt_addr** %12, align 8
  br label %182

117:                                              ; preds = %105
  %118 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %119 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %118, i32 0, i32 1
  %120 = load %struct.delegpt_addr*, %struct.delegpt_addr** %119, align 8
  %121 = load %struct.delegpt*, %struct.delegpt** %15, align 8
  %122 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %121, i32 0, i32 0
  store %struct.delegpt_addr* %120, %struct.delegpt_addr** %122, align 8
  %123 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  store %struct.delegpt_addr* %123, %struct.delegpt_addr** %12, align 8
  br label %182

124:                                              ; preds = %102
  %125 = load i32, i32* %28, align 4
  %126 = icmp sgt i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = call i32 @log_assert(i32 %127)
  %129 = load %struct.module_env*, %struct.module_env** %14, align 8
  %130 = getelementptr inbounds %struct.module_env, %struct.module_env* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %28, align 4
  %133 = call i32 @ub_random_max(i32 %131, i32 %132)
  store i32 %133, i32* %24, align 4
  %134 = load %struct.delegpt*, %struct.delegpt** %15, align 8
  %135 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %134, i32 0, i32 0
  %136 = load %struct.delegpt_addr*, %struct.delegpt_addr** %135, align 8
  store %struct.delegpt_addr* %136, %struct.delegpt_addr** %26, align 8
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %27, align 8
  br label %137

137:                                              ; preds = %145, %124
  %138 = load i32, i32* %24, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %142 = icmp ne %struct.delegpt_addr* %141, null
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i1 [ false, %137 ], [ %142, %140 ]
  br i1 %144, label %145, label %152

145:                                              ; preds = %143
  %146 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  store %struct.delegpt_addr* %146, %struct.delegpt_addr** %27, align 8
  %147 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %148 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %147, i32 0, i32 1
  %149 = load %struct.delegpt_addr*, %struct.delegpt_addr** %148, align 8
  store %struct.delegpt_addr* %149, %struct.delegpt_addr** %26, align 8
  %150 = load i32, i32* %24, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %24, align 4
  br label %137

152:                                              ; preds = %143
  %153 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %154 = icmp ne %struct.delegpt_addr* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %12, align 8
  br label %182

156:                                              ; preds = %152
  %157 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %158 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* @OUTBOUND_MSG_RETRY, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  store %struct.delegpt_addr* %164, %struct.delegpt_addr** %12, align 8
  br label %182

165:                                              ; preds = %156
  %166 = load %struct.delegpt_addr*, %struct.delegpt_addr** %27, align 8
  %167 = icmp ne %struct.delegpt_addr* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %170 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %169, i32 0, i32 1
  %171 = load %struct.delegpt_addr*, %struct.delegpt_addr** %170, align 8
  %172 = load %struct.delegpt_addr*, %struct.delegpt_addr** %27, align 8
  %173 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %172, i32 0, i32 1
  store %struct.delegpt_addr* %171, %struct.delegpt_addr** %173, align 8
  br label %180

174:                                              ; preds = %165
  %175 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  %176 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %175, i32 0, i32 1
  %177 = load %struct.delegpt_addr*, %struct.delegpt_addr** %176, align 8
  %178 = load %struct.delegpt*, %struct.delegpt** %15, align 8
  %179 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %178, i32 0, i32 0
  store %struct.delegpt_addr* %177, %struct.delegpt_addr** %179, align 8
  br label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.delegpt_addr*, %struct.delegpt_addr** %26, align 8
  store %struct.delegpt_addr* %181, %struct.delegpt_addr** %12, align 8
  br label %182

182:                                              ; preds = %180, %163, %155, %117, %115, %98, %45
  %183 = load %struct.delegpt_addr*, %struct.delegpt_addr** %12, align 8
  ret %struct.delegpt_addr* %183
}

declare dso_local i32 @iter_filter_order(%struct.iter_env*, %struct.module_env*, i32*, i64, i32, i32, %struct.delegpt*, i32*, i32, %struct.sock_list*, i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ub_random_max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
