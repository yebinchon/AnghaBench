; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, i64, %struct.delegpt_ns*, i64, i32 }
%struct.delegpt_addr = type { i8*, i32, i32, i64, i64, %struct.delegpt_addr* }
%struct.delegpt_ns = type { i64, i64, i64, i64, i64, i64, i32, %struct.delegpt_ns* }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DelegationPoint<%s>: empty\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"DelegationPoint<%s>: %u names (%u missing), %u addrs (%u result, %u avail)%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" parentNS\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" cacheNS\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"  %s %s%s%s%s%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" AAAA\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" BOGUS\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" PARENTSIDE\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" PSIDE_A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" PSIDE_AAAA\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"  BOGUS ADDR_LAME \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"  BOGUS \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"  ADDR_LAME \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delegpt_log(i32 %0, %struct.delegpt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.delegpt_ns*, align 8
  %8 = alloca %struct.delegpt_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [128 x i8], align 16
  %16 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.delegpt* %1, %struct.delegpt** %4, align 8
  %17 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load i32, i32* @verbosity, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %14, align 4
  br label %189

26:                                               ; preds = %2
  %27 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %28 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dname_str(i32 %29, i8* %21)
  %31 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %32 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %31, i32 0, i32 2
  %33 = load %struct.delegpt_ns*, %struct.delegpt_ns** %32, align 8
  %34 = icmp eq %struct.delegpt_ns* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %37 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %36, i32 0, i32 0
  %38 = load %struct.delegpt_addr*, %struct.delegpt_addr** %37, align 8
  %39 = icmp eq %struct.delegpt_addr* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 1, i32* %14, align 4
  br label %189

42:                                               ; preds = %35, %26
  %43 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %44 = call i32 @delegpt_count_ns(%struct.delegpt* %43, i64* %10, i64* %9)
  %45 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %46 = call i32 @delegpt_count_addr(%struct.delegpt* %45, i64* %11, i64* %12, i64* %13)
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %11, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* %12, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %13, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %58 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %63 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i8* %62)
  %64 = load i32, i32* @verbosity, align 4
  %65 = load i32, i32* @VERB_ALGO, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %188

67:                                               ; preds = %42
  %68 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %69 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %68, i32 0, i32 2
  %70 = load %struct.delegpt_ns*, %struct.delegpt_ns** %69, align 8
  store %struct.delegpt_ns* %70, %struct.delegpt_ns** %7, align 8
  br label %71

71:                                               ; preds = %122, %67
  %72 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %73 = icmp ne %struct.delegpt_ns* %72, null
  br i1 %73, label %74, label %126

74:                                               ; preds = %71
  %75 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %76 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dname_str(i32 %77, i8* %21)
  %79 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %80 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %85 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %86 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %91 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %92 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %97 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %98 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %103 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %104 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %109 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %110 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %115 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %116 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %121 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %21, i8* %84, i8* %90, i8* %96, i8* %102, i8* %108, i8* %114, i8* %120)
  br label %122

122:                                              ; preds = %74
  %123 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %124 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %123, i32 0, i32 7
  %125 = load %struct.delegpt_ns*, %struct.delegpt_ns** %124, align 8
  store %struct.delegpt_ns* %125, %struct.delegpt_ns** %7, align 8
  br label %71

126:                                              ; preds = %71
  %127 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %128 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %127, i32 0, i32 0
  %129 = load %struct.delegpt_addr*, %struct.delegpt_addr** %128, align 8
  store %struct.delegpt_addr* %129, %struct.delegpt_addr** %8, align 8
  br label %130

130:                                              ; preds = %183, %126
  %131 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %132 = icmp ne %struct.delegpt_addr* %131, null
  br i1 %132, label %133, label %187

133:                                              ; preds = %130
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  %134 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %135 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %140 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8
  br label %158

144:                                              ; preds = %138, %133
  %145 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %146 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8
  br label %157

150:                                              ; preds = %144
  %151 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %152 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %16, align 8
  br label %156

156:                                              ; preds = %155, %150
  br label %157

157:                                              ; preds = %156, %149
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %160 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %165 = load i8*, i8** %16, align 8
  %166 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %167 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %164, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %165, i8* %168)
  br label %174

170:                                              ; preds = %158
  %171 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %172 = load i8*, i8** %16, align 8
  %173 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %171, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %170, %163
  %175 = load i32, i32* @VERB_ALGO, align 4
  %176 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %177 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %178 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %177, i32 0, i32 2
  %179 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %180 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @log_addr(i32 %175, i8* %176, i32* %178, i32 %181)
  br label %183

183:                                              ; preds = %174
  %184 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %185 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %184, i32 0, i32 5
  %186 = load %struct.delegpt_addr*, %struct.delegpt_addr** %185, align 8
  store %struct.delegpt_addr* %186, %struct.delegpt_addr** %8, align 8
  br label %130

187:                                              ; preds = %130
  br label %188

188:                                              ; preds = %187, %42
  store i32 0, i32* %14, align 4
  br label %189

189:                                              ; preds = %188, %40, %25
  %190 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %14, align 4
  switch i32 %191, label %193 [
    i32 0, label %192
    i32 1, label %192
  ]

192:                                              ; preds = %189, %189
  ret void

193:                                              ; preds = %189
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @log_info(i8*, i8*, ...) #2

declare dso_local i32 @delegpt_count_ns(%struct.delegpt*, i64*, i64*) #2

declare dso_local i32 @delegpt_count_addr(%struct.delegpt*, i64*, i64*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
