; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_ext6hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_ext6hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c" extension header:\00", align 1
@EXT_FRAGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%cfragmentation\00", align 1
@EXT_HOPOPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%chop options\00", align 1
@EXT_ROUTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%crouting options\00", align 1
@EXT_RTHDR0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%crthdr0\00", align 1
@EXT_RTHDR2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%crthdr2\00", align 1
@EXT_DSTOPTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%cdestination options\00", align 1
@EXT_AH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"%cauthentication header\00", align 1
@EXT_ESP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"%cencapsulated security payload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ext6hdr(%struct.buf_pr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i8 32, i8* %5, align 1
  %6 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %7 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EXT_FRAGMENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8 44, i8* %5, align 1
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EXT_HOPOPTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i8 44, i8* %5, align 1
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EXT_ROUTING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i8 44, i8* %5, align 1
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EXT_RTHDR0, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i8 44, i8* %5, align 1
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXT_RTHDR2, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  store i8 44, i8* %5, align 1
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EXT_DSTOPTS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %76 = load i8, i8* %5, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  store i8 44, i8* %5, align 1
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EXT_AH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %88 = load i8, i8* %5, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  store i8 44, i8* %5, align 1
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @EXT_ESP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %100 = load i8, i8* %5, align 1
  %101 = sext i8 %100 to i32
  %102 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %91
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
