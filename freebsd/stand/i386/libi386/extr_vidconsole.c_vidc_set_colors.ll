; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_set_colors.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_set_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Allowed values are either ansi color name or number from range [0-7].\0A\00", align 1
@teken = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"teken.fg_color\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"teken.bg_color\00", align 1
@TC_WHITE = common dso_local global i32 0, align 4
@TC_LIGHT = common dso_local global i32 0, align 4
@EV_NOHOOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.env_var*, i32, i8*)* @vidc_set_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidc_set_colors(%struct.env_var* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.env_var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i8*, align 8
  store %struct.env_var* %0, %struct.env_var** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @CMD_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %102

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @color_name_to_teken(i8* %19, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @snprintf(i8* %23, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8* %26, i8** %10, align 8
  br label %43

27:                                               ; preds = %18
  store i64 0, i64* @errno, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strtol(i8* %28, i8** %13, i32 0)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* @errno, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %27
  %39 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @CMD_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %102

41:                                               ; preds = %33
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %41, %22
  %44 = call %struct.TYPE_4__* @teken_get_defattr(i32* @teken)
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %11, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = bitcast %struct.TYPE_4__* %12 to i8*
  %47 = bitcast %struct.TYPE_4__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = load %struct.env_var*, %struct.env_var** %5, align 8
  %49 = getelementptr inbounds %struct.env_var, %struct.env_var* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @CMD_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %102

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %43
  %65 = load %struct.env_var*, %struct.env_var** %5, align 8
  %66 = getelementptr inbounds %struct.env_var, %struct.env_var* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @strcmp(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @CMD_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %102

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TC_WHITE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @TC_LIGHT, align 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.env_var*, %struct.env_var** %5, align 8
  %93 = getelementptr inbounds %struct.env_var, %struct.env_var* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @EV_NOHOOK, align 4
  %97 = or i32 %95, %96
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @env_setenv(i32 %94, i32 %97, i8* %98, i32* null, i32* null)
  %100 = call i32 @teken_set_defattr(i32* @teken, %struct.TYPE_4__* %12)
  %101 = load i32, i32* @CMD_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %91, %76, %59, %38, %16
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @color_name_to_teken(i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.TYPE_4__* @teken_get_defattr(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @env_setenv(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @teken_set_defattr(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
