; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@JSMN_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@JSMN_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"{\22a\22:[]}\00", align 1
@JSMN_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"[{},{}]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_empty() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x %struct.TYPE_3__], align 16
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = call i32 @jsmn_init(i32* %3)
  %6 = load i8*, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %3, i8* %6, i32 %8, %struct.TYPE_3__* %9, i32 10)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @check(i32 %13)
  %15 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 16
  %18 = load i64, i64* @JSMN_OBJECT, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @check(i32 %20)
  %22 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %0
  %27 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br label %31

31:                                               ; preds = %26, %0
  %32 = phi i1 [ false, %0 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @check(i32 %33)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %35 = call i32 @jsmn_init(i32* %3)
  %36 = load i8*, i8** %1, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %40 = call i32 @jsmn_parse(i32* %3, i8* %36, i32 %38, %struct.TYPE_3__* %39, i32 10)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp sge i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @check(i32 %43)
  %45 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 16
  %48 = load i64, i64* @JSMN_ARRAY, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @check(i32 %50)
  %52 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %31
  %57 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 2
  br label %61

61:                                               ; preds = %56, %31
  %62 = phi i1 [ false, %31 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @check(i32 %63)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  %65 = call i32 @jsmn_init(i32* %3)
  %66 = load i8*, i8** %1, align 8
  %67 = load i8*, i8** %1, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %70 = call i32 @jsmn_parse(i32* %3, i8* %66, i32 %68, %struct.TYPE_3__* %69, i32 10)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp sge i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @check(i32 %73)
  %75 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = load i64, i64* @JSMN_OBJECT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %61
  %81 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 8
  br label %90

90:                                               ; preds = %85, %80, %61
  %91 = phi i1 [ false, %80 ], [ false, %61 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @check(i32 %92)
  %94 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 16
  %97 = load i64, i64* @JSMN_STRING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %90
  %100 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 3
  br label %109

109:                                              ; preds = %104, %99, %90
  %110 = phi i1 [ false, %99 ], [ false, %90 ], [ %108, %104 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @check(i32 %111)
  %113 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 16
  %116 = load i64, i64* @JSMN_ARRAY, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 7
  br label %128

128:                                              ; preds = %123, %118, %109
  %129 = phi i1 [ false, %118 ], [ false, %109 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @check(i32 %130)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %132 = call i32 @jsmn_init(i32* %3)
  %133 = load i8*, i8** %1, align 8
  %134 = load i8*, i8** %1, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %137 = call i32 @jsmn_parse(i32* %3, i8* %133, i32 %135, %struct.TYPE_3__* %136, i32 10)
  store i32 %137, i32* %2, align 4
  %138 = load i32, i32* %2, align 4
  %139 = icmp sge i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @check(i32 %140)
  %142 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 16
  %145 = load i64, i64* @JSMN_ARRAY, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %128
  %148 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 7
  br label %157

157:                                              ; preds = %152, %147, %128
  %158 = phi i1 [ false, %147 ], [ false, %128 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @check(i32 %159)
  %161 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 16
  %164 = load i64, i64* @JSMN_OBJECT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %157
  %167 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 3
  br label %176

176:                                              ; preds = %171, %166, %157
  %177 = phi i1 [ false, %166 ], [ false, %157 ], [ %175, %171 ]
  %178 = zext i1 %177 to i32
  %179 = call i32 @check(i32 %178)
  %180 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 16
  %183 = load i64, i64* @JSMN_OBJECT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %176
  %186 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 6
  br label %195

195:                                              ; preds = %190, %185, %176
  %196 = phi i1 [ false, %185 ], [ false, %176 ], [ %194, %190 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @check(i32 %197)
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
