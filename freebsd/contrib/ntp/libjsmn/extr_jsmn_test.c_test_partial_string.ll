; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_partial_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_partial_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"\22x\22: \22va\00", align 1
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@__const.test_partial_string.js_slash = private unnamed_addr constant [9 x i8] c"\22x\22: \22va\\", align 1
@__const.test_partial_string.js_unicode = private unnamed_addr constant [10 x i8] c"\22x\22: \22va\\u", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\22x\22: \22valu\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\22x\22: \22value\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\22x\22: \22value\22, \22y\22: \22value y\22\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"value y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_partial_string() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca [10 x %struct.TYPE_7__], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = call i32 @jsmn_init(%struct.TYPE_8__* %2)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %12 = call i32 @jsmn_parse(%struct.TYPE_8__* %2, i8* %8, i32 %10, %struct.TYPE_7__* %11, i32 10)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @JSMN_ERROR_PART, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 16
  %20 = load i64, i64* @JSMN_STRING, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %0
  %23 = phi i1 [ false, %0 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @check(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 16
  %30 = call i32 @TOKEN_STRING(i8* %26, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @check(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @check(i32 %35)
  %37 = call i32 @jsmn_init(%struct.TYPE_8__* %2)
  %38 = bitcast [9 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_partial_string.js_slash, i32 0, i32 0), i64 9, i1 false)
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %40 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %41 = call i32 @jsmn_parse(%struct.TYPE_8__* %2, i8* %39, i32 9, %struct.TYPE_7__* %40, i32 10)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @JSMN_ERROR_PART, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @check(i32 %45)
  %47 = call i32 @jsmn_init(%struct.TYPE_8__* %2)
  %48 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_partial_string.js_unicode, i32 0, i32 0), i64 10, i1 false)
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %50 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %51 = call i32 @jsmn_parse(%struct.TYPE_8__* %2, i8* %49, i32 10, %struct.TYPE_7__* %50, i32 10)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @JSMN_ERROR_PART, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @check(i32 %55)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %61 = call i32 @jsmn_parse(%struct.TYPE_8__* %2, i8* %57, i32 %59, %struct.TYPE_7__* %60, i32 10)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @JSMN_ERROR_PART, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %22
  %66 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 16
  %69 = load i64, i64* @JSMN_STRING, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %65, %22
  %72 = phi i1 [ false, %22 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @check(i32 %73)
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 16
  %79 = call i32 @TOKEN_STRING(i8* %75, i64 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @check(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @check(i32 %84)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %90 = call i32 @jsmn_parse(%struct.TYPE_8__* %2, i8* %86, i32 %88, %struct.TYPE_7__* %89, i32 10)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %71
  %94 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 16
  %97 = load i64, i64* @JSMN_STRING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @JSMN_STRING, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %99, %93, %71
  %106 = phi i1 [ false, %93 ], [ false, %71 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @check(i32 %107)
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 16
  %113 = call i32 @TOKEN_STRING(i8* %109, i64 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %114 = call i32 @check(i32 %113)
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @TOKEN_STRING(i8* %115, i64 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %120 = call i32 @check(i32 %119)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %125 = call i32 @jsmn_parse(%struct.TYPE_8__* %2, i8* %121, i32 %123, %struct.TYPE_7__* %124, i32 10)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* %1, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %105
  %129 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 16
  %132 = load i64, i64* @JSMN_STRING, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %128
  %135 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @JSMN_STRING, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 16
  %144 = load i64, i64* @JSMN_STRING, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @JSMN_STRING, align 8
  %151 = icmp eq i64 %149, %150
  br label %152

152:                                              ; preds = %146, %140, %134, %128, %105
  %153 = phi i1 [ false, %140 ], [ false, %134 ], [ false, %128 ], [ false, %105 ], [ %151, %146 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @check(i32 %154)
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 16
  %160 = call i32 @TOKEN_STRING(i8* %156, i64 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %161 = call i32 @check(i32 %160)
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @TOKEN_STRING(i8* %162, i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %167 = call i32 @check(i32 %166)
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 16
  %172 = call i32 @TOKEN_STRING(i8* %168, i64 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %173 = call i32 @check(i32 %172)
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %3, i64 0, i64 3
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @TOKEN_STRING(i8* %174, i64 %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %179 = call i32 @check(i32 %178)
  ret i32 0
}

declare dso_local i32 @jsmn_init(%struct.TYPE_8__*) #1

declare dso_local i32 @jsmn_parse(%struct.TYPE_8__*, i8*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @TOKEN_STRING(i8*, i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
