; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_enum.c_set_memb_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_enum.c_set_memb_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@PLUS_STR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@NUL = common dso_local global i8 0, align 1
@PLUS_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8**, i32)* @set_memb_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_memb_names(i32* %0, %struct.TYPE_5__* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = sub i64 %18, 1
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 1, i64* %13, align 8
  br label %25

25:                                               ; preds = %50, %4
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = and i64 %29, 1
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load i64, i64* @PLUS_STR_LEN, align 8
  %40 = add i64 %38, %39
  %41 = add i64 %40, 1
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %32, %28
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %53

50:                                               ; preds = %44
  %51 = load i64, i64* %11, align 8
  %52 = lshr i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %25

53:                                               ; preds = %49, %25
  %54 = load i64, i64* %13, align 8
  %55 = call i8* @AGALOC(i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %9, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i8, i8* @NUL, align 1
  %68 = load i8*, i8** %9, align 8
  store i8 %67, i8* %68, align 1
  br label %115

69:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %108, %69
  %71 = load i64, i64* %11, align 8
  %72 = and i64 %71, 1
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i64, i64* %11, align 8
  %75 = lshr i64 %74, 1
  store i64 %75, i64* %11, align 8
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %108

79:                                               ; preds = %70
  %80 = load i8**, i8*** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* %84)
  store i64 %85, i64* %14, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @memcpy(i8* %86, i8* %91, i64 %92)
  %94 = load i64, i64* %14, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %111

100:                                              ; preds = %79
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** @PLUS_STR, align 8
  %103 = load i64, i64* @PLUS_STR_LEN, align 8
  %104 = call i32 @memcpy(i8* %101, i8* %102, i64 %103)
  %105 = load i64, i64* @PLUS_STR_LEN, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %9, align 8
  br label %108

108:                                              ; preds = %100, %78
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %70

111:                                              ; preds = %99
  %112 = load i8, i8* @NUL, align 1
  %113 = load i8*, i8** %9, align 8
  store i8 %112, i8* %113, align 1
  %114 = load i32*, i32** %5, align 8
  br label %115

115:                                              ; preds = %111, %66
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @AGALOC(i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
