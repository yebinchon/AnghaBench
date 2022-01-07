; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_scan_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_scan_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@option_load_mode = common dso_local global i64 0, align 8
@OPTION_LOAD_KEEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"h scan\00", align 1
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_7__*)* @scan_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scan_xml(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %14 = load i64, i64* @option_load_mode, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @IS_VAR_FIRST_CHAR(i8 signext %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @unnamed_xml(i8* %21)
  store i8* %22, i8** %3, align 8
  br label %128

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @scan_xml_name(i8* %24, i64* %6, %struct.TYPE_7__* %10)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %126

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %8, align 8
  br label %51

35:                                               ; preds = %29
  %36 = load i64, i64* @option_load_mode, align 8
  %37 = load i64, i64* @OPTION_LOAD_KEEP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @SPN_WHITESPACE_CHARS(i8* %40)
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i8* @find_end_xml(i8* %43, i64 %44, i8* %45, i64* %7)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %126

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %33
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %122 [
    i32 130, label %54
    i32 128, label %61
    i32 134, label %81
    i32 129, label %90
    i32 132, label %99
    i32 133, label %121
    i32 131, label %121
  ]

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call %struct.TYPE_7__* @add_string(i32* %57, i8* %58, i64 %59, i8* null, i64 0)
  br label %123

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call %struct.TYPE_7__* @add_string(i32* %64, i8* %65, i64 %66, i8* %67, i64 %68)
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %12, align 8
  %70 = load i64, i64* @option_load_mode, align 8
  %71 = load i64, i64* @OPTION_LOAD_KEEP, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @option_load_mode, align 8
  %79 = call i32 @munge_str(i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %61
  br label %123

81:                                               ; preds = %51
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %4, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @add_bool(i32* %84, i8* %85, i64 %86, i8* %87, i64 %88)
  br label %123

90:                                               ; preds = %51
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i8*, i8** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @add_number(i32* %93, i8* %94, i64 %95, i8* %96, i64 %97)
  br label %123

99:                                               ; preds = %51
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 1
  %102 = call i8* @AGALOC(i64 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %102, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @memcpy(i8* %103, i8* %104, i64 %105)
  %107 = load i8, i8* @NUL, align 1
  %108 = load i8*, i8** %13, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 %107, i8* %110, align 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i8*, i8** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @add_nested(i32* %113, i8* %114, i64 %115, i8* %116, i64 %117)
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @AGFREE(i8* %119)
  br label %123

121:                                              ; preds = %51, %51
  br label %122

122:                                              ; preds = %51, %121
  br label %123

123:                                              ; preds = %122, %99, %90, %81, %80, %54
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* @option_load_mode, align 8
  %125 = load i8*, i8** %8, align 8
  store i8* %125, i8** %3, align 8
  br label %128

126:                                              ; preds = %49, %28
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* @option_load_mode, align 8
  store i8* null, i8** %3, align 8
  br label %128

128:                                              ; preds = %126, %123, %20
  %129 = load i8*, i8** %3, align 8
  ret i8* %129
}

declare dso_local i32 @IS_VAR_FIRST_CHAR(i8 signext) #1

declare dso_local i8* @unnamed_xml(i8*) #1

declare dso_local i8* @scan_xml_name(i8*, i64*, %struct.TYPE_7__*) #1

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i8* @find_end_xml(i8*, i64, i8*, i64*) #1

declare dso_local %struct.TYPE_7__* @add_string(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @munge_str(i32, i64) #1

declare dso_local i32 @add_bool(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @add_number(i32*, i8*, i64, i8*, i64) #1

declare dso_local i8* @AGALOC(i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @add_nested(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @AGFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
