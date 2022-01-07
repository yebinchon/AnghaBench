; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_times.c_parse_lt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_times.c_parse_lt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@LTM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Never\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@dws = common dso_local global %struct.TYPE_6__* null, align 8
@LTM_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @parse_lt(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %3, align 8
  %9 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 12)
  %10 = load i32, i32* @LTM_NONE, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %153

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %153

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %153

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %153

27:                                               ; preds = %23
  %28 = bitcast %struct.TYPE_5__* %5 to i8*
  %29 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strlcpy(i8* %30, i8* %31, i32 64)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %49, %27
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @tolower(i8 signext %43)
  %45 = trunc i64 %44 to i8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %47
  store i8 %45, i8* %48, align 1
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %33
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %98, %52
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isalpha(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %86, %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dws, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dws, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dws, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @strncmp(i8* %69, i32* %75, i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %68, %60
  %85 = phi i1 [ false, %60 ], [ %83, %68 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %60

89:                                               ; preds = %84
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dws, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %117

98:                                               ; preds = %89
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dws, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dws, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  br label %54

117:                                              ; preds = %97, %54
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @LTM_NONE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32, i32* @LTM_ANY, align 4
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @isdigit(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %135 = call i8* @parse_time(i8* %133, i32* %134)
  store i8* %135, i8** %6, align 8
  br label %138

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 45
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %147 = call i8* @parse_time(i8* %145, i32* %146)
  store i8* %147, i8** %6, align 8
  br label %150

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 1440, i32* %149, align 4
  br label %150

150:                                              ; preds = %148, %143
  %151 = bitcast %struct.TYPE_5__* %2 to i8*
  %152 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 12, i1 false)
  br label %153

153:                                              ; preds = %150, %23, %19, %14, %1
  %154 = bitcast { i64, i32 }* %8 to i8*
  %155 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 4 %155, i64 12, i1 false)
  %156 = load { i64, i32 }, { i64, i32 }* %8, align 8
  ret { i64, i32 } %156
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @parse_time(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
