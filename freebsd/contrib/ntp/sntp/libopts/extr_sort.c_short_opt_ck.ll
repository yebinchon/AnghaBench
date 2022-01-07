; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_sort.c_short_opt_ck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_sort.c_short_opt_ck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8**, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NUL = common dso_local global i8 0, align 1
@FAILURE = common dso_local global i32 0, align 4
@OPARG_TYPE_NONE = common dso_local global i64 0, align 8
@OPTST_ARG_OPTIONAL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_10__*, i8**, i32*)* @short_opt_ck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @short_opt_ck(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_10__* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  br label %12

12:                                               ; preds = %128, %5
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @NUL, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %129

19:                                               ; preds = %12
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = call i32 @opt_find_short(%struct.TYPE_9__* %20, i32 %23, %struct.TYPE_10__* %24)
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @FAILURE, align 4
  store i32 %29, i32* %6, align 4
  br label %131

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @OPTST_GET_ARGTYPE(i32 %35)
  %37 = load i64, i64* @OPARG_TYPE_NONE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %128

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OPTST_ARG_OPTIONAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @NUL, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @SUCCESS, align 4
  store i32 %60, i32* %6, align 4
  br label %131

61:                                               ; preds = %51
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 45
  br i1 %73, label %74, label %90

74:                                               ; preds = %61
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds i8*, i8** %77, i64 %80
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %84, i64 %88
  store i8* %83, i8** %89, align 8
  br label %90

90:                                               ; preds = %74, %61
  %91 = load i32, i32* @SUCCESS, align 4
  store i32 %91, i32* %6, align 4
  br label %131

92:                                               ; preds = %42
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @NUL, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %92
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp uge i64 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @FAILURE, align 4
  store i32 %109, i32* %6, align 4
  br label %131

110:                                              ; preds = %100
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds i8*, i8** %113, i64 %116
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %10, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8*, i8** %120, i64 %124
  store i8* %119, i8** %125, align 8
  br label %126

126:                                              ; preds = %110, %92
  %127 = load i32, i32* @SUCCESS, align 4
  store i32 %127, i32* %6, align 4
  br label %131

128:                                              ; preds = %39
  br label %12

129:                                              ; preds = %12
  %130 = load i32, i32* @SUCCESS, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %126, %108, %90, %59, %28
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @opt_find_short(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @OPTST_GET_ARGTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
