; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c_parse_netgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c_parse_netgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linelist = type { i32, i8*, i32, %struct.linelist* }
%struct.TYPE_2__ = type { %struct.netgrp* }
%struct.netgrp = type { i8**, %struct.netgrp* }

@linehead = common dso_local global %struct.linelist* null, align 8
@grouphead = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@NG_DOM = common dso_local global i64 0, align 8
@NG_HOST = common dso_local global i64 0, align 8
@NG_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_netgrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_netgrp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.netgrp*, align 8
  %11 = alloca %struct.linelist*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load %struct.linelist*, %struct.linelist** @linehead, align 8
  store %struct.linelist* %12, %struct.linelist** %11, align 8
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.linelist*, %struct.linelist** %11, align 8
  %15 = icmp ne %struct.linelist* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.linelist*, %struct.linelist** %11, align 8
  %19 = getelementptr inbounds %struct.linelist, %struct.linelist* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strcmp(i8* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  %25 = load %struct.linelist*, %struct.linelist** %11, align 8
  %26 = getelementptr inbounds %struct.linelist, %struct.linelist* %25, i32 0, i32 3
  %27 = load %struct.linelist*, %struct.linelist** %26, align 8
  store %struct.linelist* %27, %struct.linelist** %11, align 8
  br label %13

28:                                               ; preds = %23, %13
  %29 = load %struct.linelist*, %struct.linelist** %11, align 8
  %30 = icmp eq %struct.linelist* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.linelist* @read_for_group(i8* %32)
  store %struct.linelist* %33, %struct.linelist** %11, align 8
  %34 = icmp eq %struct.linelist* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %186

36:                                               ; preds = %31, %28
  %37 = load %struct.linelist*, %struct.linelist** %11, align 8
  %38 = getelementptr inbounds %struct.linelist, %struct.linelist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %186

42:                                               ; preds = %36
  %43 = load %struct.linelist*, %struct.linelist** %11, align 8
  %44 = getelementptr inbounds %struct.linelist, %struct.linelist* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load %struct.linelist*, %struct.linelist** %11, align 8
  %47 = getelementptr inbounds %struct.linelist, %struct.linelist* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %184, %157, %45
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi i1 [ false, %49 ], [ %56, %52 ]
  br i1 %58, label %59, label %185

59:                                               ; preds = %57
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 40
  br i1 %63, label %64, label %152

64:                                               ; preds = %59
  %65 = call i64 @malloc(i32 16)
  %66 = inttoptr i64 %65 to %struct.netgrp*
  store %struct.netgrp* %66, %struct.netgrp** %10, align 8
  %67 = load %struct.netgrp*, %struct.netgrp** %10, align 8
  %68 = bitcast %struct.netgrp* %67 to i8*
  %69 = call i32 @bzero(i8* %68, i32 16)
  %70 = load %struct.netgrp*, %struct.netgrp** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %71 = load %struct.netgrp*, %struct.netgrp** %10, align 8
  %72 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %71, i32 0, i32 1
  store %struct.netgrp* %70, %struct.netgrp** %72, align 8
  %73 = load %struct.netgrp*, %struct.netgrp** %10, align 8
  store %struct.netgrp* %73, %struct.netgrp** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  %76 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %76, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %148, %64
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %151

80:                                               ; preds = %77
  %81 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %81, i8** %4, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %140

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 9
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ true, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  br label %84

99:                                               ; preds = %94
  %100 = load i8*, i8** %4, align 8
  %101 = call i8* @strpbrk(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %101, i8** %5, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i8*, i8** %5, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %114

111:                                              ; preds = %99
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @strlen(i8* %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %103
  %115 = load i32, i32* %6, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i64 @malloc(i32 %119)
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.netgrp*, %struct.netgrp** %10, align 8
  %123 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %121, i8** %127, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load %struct.netgrp*, %struct.netgrp** %10, align 8
  %130 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i32 @bcopy(i8* %128, i8* %135, i32 %137)
  br label %139

139:                                              ; preds = %117, %114
  br label %147

140:                                              ; preds = %80
  %141 = load %struct.netgrp*, %struct.netgrp** %10, align 8
  %142 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* null, i8** %146, align 8
  br label %147

147:                                              ; preds = %140, %139
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %77

151:                                              ; preds = %77
  br label %159

152:                                              ; preds = %59
  %153 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %153, i8** %4, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = call i32 @parse_netgrp(i8* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %49

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %151
  %160 = load i8*, i8** %8, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %180, %162
  %164 = load i8*, i8** %8, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 32
  br i1 %167, label %178, label %168

168:                                              ; preds = %163
  %169 = load i8*, i8** %8, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 44
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 9
  br label %178

178:                                              ; preds = %173, %168, %163
  %179 = phi i1 [ true, %168 ], [ true, %163 ], [ %177, %173 ]
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %8, align 8
  br label %163

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %159
  br label %49

185:                                              ; preds = %57
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %41, %35
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.linelist* @read_for_group(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
