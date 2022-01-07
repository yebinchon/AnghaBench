; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_scan_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_scan_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@option_load_mode = common dso_local global i32 0, align 4
@OPTION_LOAD_COOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_6__*)* @scan_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scan_name(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %6, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = call i8* @SPN_VALUE_NAME_CHARS(i8* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 58
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @SPN_HORIZ_WHITE_CHARS(i8* %30)
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %50, %24
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %91 [
    i32 61, label %36
    i32 58, label %36
    i32 129, label %51
    i32 44, label %51
    i32 128, label %54
    i32 34, label %61
    i32 39, label %61
  ]

36:                                               ; preds = %32, %32
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i8* @SPN_HORIZ_WHITE_CHARS(i8* %38)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %36
  br label %92

50:                                               ; preds = %44
  br label %32

51:                                               ; preds = %32, %32
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %32, %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i8*, i8** %3, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call %struct.TYPE_6__* @add_string(i32* %57, i8* %58, i64 %59, i8* null, i64 0)
  br label %153

61:                                               ; preds = %32, %32
  %62 = load i8*, i8** %6, align 8
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @scan_q_str(i8* %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  store i64 %69, i64* %9, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %3, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call %struct.TYPE_6__* @add_string(i32* %72, i8* %73, i64 %74, i8* %75, i64 %76)
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = icmp ne %struct.TYPE_6__* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %61
  %81 = load i32, i32* @option_load_mode, align 4
  %82 = load i32, i32* @OPTION_LOAD_COOKED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ao_string_cook(i32 %88, i32* null)
  br label %90

90:                                               ; preds = %84, %80, %61
  br label %153

91:                                               ; preds = %32
  br label %92

92:                                               ; preds = %91, %49
  %93 = load i8*, i8** %6, align 8
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %152, %125, %92
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  %97 = load i8, i8* %95, align 1
  store i8 %97, i8* %10, align 1
  %98 = load i8, i8* %10, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %152 [
    i32 128, label %100
    i32 129, label %108
    i32 44, label %127
  ]

100:                                              ; preds = %94
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %6, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  store i64 %107, i64* %9, align 8
  br label %134

108:                                              ; preds = %94
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = icmp ugt i8* %109, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 -2
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 92
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 128
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %94

126:                                              ; preds = %119, %113, %108
  br label %127

127:                                              ; preds = %94, %126
  %128 = load i8*, i8** %6, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sub i64 %132, 1
  store i64 %133, i64* %9, align 8
  br label %134

134:                                              ; preds = %127, %100
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i8*, i8** %3, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call %struct.TYPE_6__* @add_string(i32* %137, i8* %138, i64 %139, i8* %140, i64 %141)
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %5, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @remove_continuation(i32 %149)
  br label %151

151:                                              ; preds = %145, %134
  br label %154

152:                                              ; preds = %94
  br label %94

153:                                              ; preds = %90, %54
  br label %154

154:                                              ; preds = %153, %151
  %155 = load i8*, i8** %6, align 8
  ret i8* %155
}

declare dso_local i8* @SPN_VALUE_NAME_CHARS(i8*) #1

declare dso_local i8* @SPN_HORIZ_WHITE_CHARS(i8*) #1

declare dso_local %struct.TYPE_6__* @add_string(i32*, i8*, i64, i8*, i64) #1

declare dso_local i8* @scan_q_str(i8*) #1

declare dso_local i32 @ao_string_cook(i32, i32*) #1

declare dso_local i32 @remove_continuation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
