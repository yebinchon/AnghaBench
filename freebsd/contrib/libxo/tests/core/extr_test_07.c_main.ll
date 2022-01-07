; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_07.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_07.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.employee = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"Jim\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\E1\83\A0\E1\83\94\E1\83\92\E1\83\A2\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\E1\83\92\E1\83\97\E1\83\AE\E1\83\9D\E1\83\95\E1\83\97 \E1\83\90\E1\83\AE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Terry\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<one\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\CE\9F\E1\BD\90\CF\87\E1\BD\B6 \CF\84\CE\B1\E1\BD\90\CF\84\E1\BD\B0 \CF\80\CE\B1\CF\81\E1\BD\B7\CF\83\CF\84\CE\B1\CF\84\CE\B1\E1\BD\B7 \CE\BC\CE\BF\CE\B9 Jones\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Leslie\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Les\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Patterson\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Ashley\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Ash\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Meter & Smith\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"012345678901234567890\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\E1\83\90\E1\83\AE\E1\83\9A\E1\83\90\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\E1\83\92\E1\83\90\E1\83\98\E1\83\90\E1\83\A0\E1\83\9D\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\E1\83\A1\E1\83\90\E1\83\94\E1\83\A0\E1\83\97\E1\83\90\E1\83\A8\E1\83\9D\E1\83\A0\E1\83\98\E1\83\A1\E1\83\9D\00", align 1
@__const.main.employees = private unnamed_addr constant [7 x %struct.employee] [%struct.employee { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 431, i32 90 }, %struct.employee { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0), i32 660, i32 90 }, %struct.employee { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 341, i32 60 }, %struct.employee { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 1440, i32 40 }, %struct.employee { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 1440, i32 40 }, %struct.employee { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i32 123, i32 90 }, %struct.employee zeroinitializer], align 16
@info = common dso_local global i32 0, align 4
@info_count = common dso_local global i32 0, align 4
@XOF_COLUMNS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"employees\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"{ek:filename/%s}\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"\CE\9F\E1\BD\90\CF\87\E1\BD\B6 \CF\84\CE\B1\E1\BD\90\CF\84\E1\BD\B0 \CF\80\CE\B1\CF\81\E1\BD\B7\CF\83\CF\84\CE\B1\CF\84\CE\B1\E1\BD\B7 \CE\BC\CE\BF\CE\B9 {:v1/%s}, {:v2/%s}\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"\CE\B3\CE\B9\CE\B3\CE\BD\E1\BD\BD\CF\83\CE\BA\CE\B5\CE\B9\CE\BD\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"\E1\BD\A6 \E1\BC\84\CE\BD\CE\B4\CF\81\CE\B5\CF\82 \E1\BE\BF\CE\91\CE\B8\CE\B7\CE\BD\CE\B1\E1\BF\96\CE\BF\CE\B9\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"{:columns/%d}\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"\E1\83\92\E1\83\97\E1\83\AE\E1\83\9D\E1\83\95\E1\83\97 {:v1/%s} {:v2/%s}\0A\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"\E1\83\90\E1\83\AE\E1\83\9A\E1\83\90\E1\83\95\E1\83\94 \E1\83\92\E1\83\90\E1\83\98\E1\83\90\E1\83\A0\E1\83\9D\E1\83\97 \E1\83\A0\E1\83\94\E1\83\92\E1\83\98\E1\83\A1\E1\83\A2\E1\83\A0\E1\83\90\E1\83\AA\E1\83\98\E1\83\90\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c"Unicode-\E1\83\98\E1\83\A1 \E1\83\9B\E1\83\94\E1\83\90\E1\83\97\E1\83\94 \E1\83\A1\E1\83\90\E1\83\94\E1\83\A0\E1\83\97\E1\83\90\E1\83\A8\E1\83\9D\E1\83\A0\E1\83\98\E1\83\A1\E1\83\9D\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"{T:First Name/%-25s}{T:Last Name/%-14s}{T:/%-12s}{T:Time (%)}\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Department\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"employee\00", align 1
@.str.30 = private unnamed_addr constant [115 x i8] c"{[:-25}{:first-name/%s} ({:nic-name/\22%s\22}){]:}{:last-name/%-14..14s/%s}{:department/%8u/%u}{:percent-time/%8u/%u}\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"full-time\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"honest & for true\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"{e:benefits/%s}\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"full\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [7 x %struct.employee], align 16
  %7 = alloca %struct.employee*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [7 x %struct.employee]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([7 x %struct.employee]* @__const.main.employees to i8*), i64 224, i1 false)
  %10 = getelementptr inbounds [7 x %struct.employee], [7 x %struct.employee]* %6, i64 0, i64 0
  store %struct.employee* %10, %struct.employee** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @xo_parse_args(i32 %11, i8** %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load i32, i32* @info, align 4
  %19 = load i32, i32* @info_count, align 4
  %20 = call i32 @xo_set_info(i32* null, i32 %18, i32 %19)
  %21 = load i32, i32* @XOF_COLUMNS, align 4
  %22 = call i32 @xo_set_flags(i32* null, i32 %21)
  %23 = call i32 @xo_open_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %24 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %25 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* null)
  %27 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %28 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %32)
  %34 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %35)
  %37 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %38)
  %40 = call i32 @xo_open_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %41

41:                                               ; preds = %75, %17
  %42 = load %struct.employee*, %struct.employee** %7, align 8
  %43 = getelementptr inbounds %struct.employee, %struct.employee* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = call i32 @xo_open_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %48 = load %struct.employee*, %struct.employee** %7, align 8
  %49 = getelementptr inbounds %struct.employee, %struct.employee* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.employee*, %struct.employee** %7, align 8
  %52 = getelementptr inbounds %struct.employee, %struct.employee* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.employee*, %struct.employee** %7, align 8
  %55 = getelementptr inbounds %struct.employee, %struct.employee* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.employee*, %struct.employee** %7, align 8
  %58 = getelementptr inbounds %struct.employee, %struct.employee* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.employee*, %struct.employee** %7, align 8
  %61 = getelementptr inbounds %struct.employee, %struct.employee* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.30, i64 0, i64 0), i8* %50, i8* %53, i8* %56, i32 %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %64)
  %66 = load %struct.employee*, %struct.employee** %7, align 8
  %67 = getelementptr inbounds %struct.employee, %struct.employee* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ugt i32 %68, 50
  br i1 %69, label %70, label %73

70:                                               ; preds = %46
  %71 = call i32 @xo_attr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %46
  %74 = call i32 @xo_close_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73
  %76 = load %struct.employee*, %struct.employee** %7, align 8
  %77 = getelementptr inbounds %struct.employee, %struct.employee* %76, i32 1
  store %struct.employee* %77, %struct.employee** %7, align 8
  br label %41

78:                                               ; preds = %41
  %79 = call i32 @xo_close_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %80 = call i32 @xo_close_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %81 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #2

declare dso_local i32 @xo_set_info(i32*, i32, i32) #2

declare dso_local i32 @xo_set_flags(i32*, i32) #2

declare dso_local i32 @xo_open_container(i8*) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @xo_close_instance(i8*) #2

declare dso_local i32 @xo_close_list(i8*) #2

declare dso_local i32 @xo_attr(i8*, i8*, i8*) #2

declare dso_local i32 @xo_close_container(i8*) #2

declare dso_local i32 @xo_finish(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
