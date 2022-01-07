; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@XSS_CLOSE_CONTAINER = common dso_local global i64 0, align 8
@XSS_OPEN_CONTAINER = common dso_local global i64 0, align 8
@XSS_CLOSE_LIST = common dso_local global i64 0, align 8
@XSS_OPEN_LIST = common dso_local global i64 0, align 8
@XSS_CLOSE_INSTANCE = common dso_local global i64 0, align 8
@XSS_OPEN_INSTANCE = common dso_local global i64 0, align 8
@XSS_CLOSE_LEAF_LIST = common dso_local global i64 0, align 8
@XSS_OPEN_LEAF_LIST = common dso_local global i64 0, align 8
@XSS_MARKER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"close (xo_%s) fails at marker '%s'; not found '%s'\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"close stops at marker '%s'\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"xo_%s can't find match for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @xo_do_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_close(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @XSS_CLOSE_CONTAINER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @XSS_OPEN_CONTAINER, align 8
  store i64 %17, i64* %11, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @XSS_CLOSE_LIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @XSS_OPEN_LIST, align 8
  store i64 %23, i64* %11, align 8
  br label %46

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @XSS_CLOSE_INSTANCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @XSS_OPEN_INSTANCE, align 8
  store i64 %29, i64* %11, align 8
  br label %45

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @XSS_CLOSE_LEAF_LIST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @XSS_OPEN_LEAF_LIST, align 8
  store i64 %35, i64* %11, align 8
  br label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @XSS_MARKER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @XSS_MARKER, align 8
  store i64 %41, i64* %11, align 8
  br label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %134

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %46, %16
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %53
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %8, align 8
  br label %55

55:                                               ; preds = %117, %47
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ugt %struct.TYPE_7__* %56, %59
  br i1 %60, label %61, label %120

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XSS_MARKER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @XSS_MARKER, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @xo_state_name(i64 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @xo_failure(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %77, i64 %80, i8* %81)
  store i32 0, i32* %4, align 4
  br label %134

83:                                               ; preds = %71
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %9, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @xo_failure(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83
  br label %120

92:                                               ; preds = %67, %61
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %117

99:                                               ; preds = %92
  %100 = load i8*, i8** %6, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @xo_streq(i8* %108, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %117

115:                                              ; preds = %107, %102, %99
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %9, align 8
  br label %120

117:                                              ; preds = %114, %98
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 -1
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %8, align 8
  br label %55

120:                                              ; preds = %115, %91, %55
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = icmp eq %struct.TYPE_7__* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @xo_state_name(i64 %125)
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @xo_failure(%struct.TYPE_8__* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %126, i8* %127)
  store i32 0, i32* %4, align 4
  br label %134

129:                                              ; preds = %120
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %132 = call i32 @xo_do_close_all(%struct.TYPE_8__* %130, %struct.TYPE_7__* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %123, %74, %42
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @xo_failure(%struct.TYPE_8__*, i8*, i32, ...) #1

declare dso_local i32 @xo_state_name(i64) #1

declare dso_local i32 @xo_streq(i8*, i64) #1

declare dso_local i32 @xo_do_close_all(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
