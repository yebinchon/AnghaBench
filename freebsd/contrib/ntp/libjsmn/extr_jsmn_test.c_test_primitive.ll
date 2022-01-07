; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_primitive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"\22boolVar\22 : true\00", align 1
@JSMN_STRING = common dso_local global i64 0, align 8
@JSMN_PRIMITIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"boolVar\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\22boolVar\22 : false\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\22intVar\22 : 12345\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"intVar\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\22floatVar\22 : 12.345\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"floatVar\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"12.345\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\22nullVar\22 : null\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"nullVar\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_primitive() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x %struct.TYPE_4__], align 16
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = call i32 @jsmn_init(i32* %2)
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %2, i8* %6, i32 %8, %struct.TYPE_4__* %9, i32 10)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %0
  %14 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 16
  %17 = load i64, i64* @JSMN_STRING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %13, %0
  %26 = phi i1 [ false, %13 ], [ false, %0 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @check(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 16
  %33 = call i32 @TOKEN_STRING(i8* %29, i64 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @check(i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @TOKEN_STRING(i8* %35, i64 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @check(i32 %39)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %41 = call i32 @jsmn_init(i32* %2)
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %46 = call i32 @jsmn_parse(i32* %2, i8* %42, i32 %44, %struct.TYPE_4__* %45, i32 10)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %25
  %50 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 16
  %53 = load i64, i64* @JSMN_STRING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %55, %49, %25
  %62 = phi i1 [ false, %49 ], [ false, %25 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @check(i32 %63)
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 16
  %69 = call i32 @TOKEN_STRING(i8* %65, i64 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @check(i32 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @TOKEN_STRING(i8* %71, i64 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %76 = call i32 @check(i32 %75)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %77 = call i32 @jsmn_init(i32* %2)
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %82 = call i32 @jsmn_parse(i32* %2, i8* %78, i32 %80, %struct.TYPE_4__* %81, i32 10)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %61
  %86 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 16
  %89 = load i64, i64* @JSMN_STRING, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %91, %85, %61
  %98 = phi i1 [ false, %85 ], [ false, %61 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @check(i32 %99)
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 16
  %105 = call i32 @TOKEN_STRING(i8* %101, i64 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %106 = call i32 @check(i32 %105)
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @TOKEN_STRING(i8* %107, i64 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i32 @check(i32 %111)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %113 = call i32 @jsmn_init(i32* %2)
  %114 = load i8*, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %118 = call i32 @jsmn_parse(i32* %2, i8* %114, i32 %116, %struct.TYPE_4__* %117, i32 10)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* %1, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %97
  %122 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 16
  %125 = load i64, i64* @JSMN_STRING, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %132 = icmp eq i64 %130, %131
  br label %133

133:                                              ; preds = %127, %121, %97
  %134 = phi i1 [ false, %121 ], [ false, %97 ], [ %132, %127 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @check(i32 %135)
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 16
  %141 = call i32 @TOKEN_STRING(i8* %137, i64 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %142 = call i32 @check(i32 %141)
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @TOKEN_STRING(i8* %143, i64 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %148 = call i32 @check(i32 %147)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  %149 = call i32 @jsmn_init(i32* %2)
  %150 = load i8*, i8** %4, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %154 = call i32 @jsmn_parse(i32* %2, i8* %150, i32 %152, %struct.TYPE_4__* %153, i32 10)
  store i32 %154, i32* %1, align 4
  %155 = load i32, i32* %1, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %133
  %158 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 16
  %161 = load i64, i64* @JSMN_STRING, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %168 = icmp eq i64 %166, %167
  br label %169

169:                                              ; preds = %163, %157, %133
  %170 = phi i1 [ false, %157 ], [ false, %133 ], [ %168, %163 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @check(i32 %171)
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 16
  %177 = call i32 @TOKEN_STRING(i8* %173, i64 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %178 = call i32 @check(i32 %177)
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @TOKEN_STRING(i8* %179, i64 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %184 = call i32 @check(i32 %183)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @TOKEN_STRING(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
