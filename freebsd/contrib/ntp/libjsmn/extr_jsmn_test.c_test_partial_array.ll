; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_partial_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_partial_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"  [ 1, true, \00", align 1
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@JSMN_ARRAY = common dso_local global i64 0, align 8
@JSMN_PRIMITIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"  [ 1, true, [123, \22hello\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"  [ 1, true, [123, \22hello\22]\00", align 1
@JSMN_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"  [ 1, true, [123, \22hello\22]]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_partial_array() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x %struct.TYPE_3__], align 16
  %4 = alloca i8*, align 8
  %5 = call i32 @jsmn_init(i32* %2)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %2, i8* %6, i32 %8, %struct.TYPE_3__* %9, i32 10)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @JSMN_ERROR_PART, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %0
  %15 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 16
  %18 = load i64, i64* @JSMN_ARRAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 16
  %24 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 16
  %30 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %20, %14, %0
  %33 = phi i1 [ false, %20 ], [ false, %14 ], [ false, %0 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @check(i32 %34)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %40 = call i32 @jsmn_parse(i32* %2, i8* %36, i32 %38, %struct.TYPE_3__* %39, i32 10)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @JSMN_ERROR_PART, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %32
  %45 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 16
  %48 = load i64, i64* @JSMN_ARRAY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 16
  %54 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 16
  %60 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = load i64, i64* @JSMN_ARRAY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 16
  %72 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %68, %62, %56, %50, %44, %32
  %75 = phi i1 [ false, %62 ], [ false, %56 ], [ false, %50 ], [ false, %44 ], [ false, %32 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @check(i32 %76)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %82 = call i32 @jsmn_parse(i32* %2, i8* %78, i32 %80, %struct.TYPE_3__* %81, i32 10)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @JSMN_ERROR_PART, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %74
  %87 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 16
  %90 = load i64, i64* @JSMN_ARRAY, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 16
  %96 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %92
  %99 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 16
  %102 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 16
  %108 = load i64, i64* @JSMN_ARRAY, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 4
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 16
  %114 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 5
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 16
  %120 = load i64, i64* @JSMN_STRING, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %116, %110, %104, %98, %92, %86, %74
  %123 = phi i1 [ false, %110 ], [ false, %104 ], [ false, %98 ], [ false, %92 ], [ false, %86 ], [ false, %74 ], [ %121, %116 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @check(i32 %124)
  %126 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i32
  %131 = call i32 @check(i32 %130)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %136 = call i32 @jsmn_parse(i32* %2, i8* %132, i32 %134, %struct.TYPE_3__* %135, i32 10)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* %1, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %175

139:                                              ; preds = %122
  %140 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 16
  %143 = load i64, i64* @JSMN_ARRAY, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %139
  %146 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 16
  %149 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %145
  %152 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 16
  %155 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %151
  %158 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 16
  %161 = load i64, i64* @JSMN_ARRAY, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 4
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 16
  %167 = load i64, i64* @JSMN_PRIMITIVE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 5
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 16
  %173 = load i64, i64* @JSMN_STRING, align 8
  %174 = icmp eq i64 %172, %173
  br label %175

175:                                              ; preds = %169, %163, %157, %151, %145, %139, %122
  %176 = phi i1 [ false, %163 ], [ false, %157 ], [ false, %151 ], [ false, %145 ], [ false, %139 ], [ false, %122 ], [ %174, %169 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @check(i32 %177)
  %179 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i32
  %184 = call i32 @check(i32 %183)
  %185 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 3
  %189 = zext i1 %188 to i32
  %190 = call i32 @check(i32 %189)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
