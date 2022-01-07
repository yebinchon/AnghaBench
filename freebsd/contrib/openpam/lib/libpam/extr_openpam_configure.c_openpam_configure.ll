; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_configure.c_openpam_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_configure.c_openpam_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }

@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid service name\00", align 1
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@PAM_FACILITY_ANY = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PAM_NUM_FACILITIES = common dso_local global i64 0, align 8
@FALLBACK_TO_OTHER = common dso_local global i32 0, align 4
@PAM_OTHER = common dso_local global i8* null, align 8
@PAM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_configure(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @ENTERS(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @valid_service_name(i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PAM_LOG_ERROR, align 4
  %15 = call i32 @openpam_log(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %17 = call i32 @RETURNC(i32 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* @PAM_FACILITY_ANY, align 8
  %22 = call i64 @openpam_load_chain(%struct.TYPE_4__* %19, i8* %20, i64 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %63

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %18
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @PAM_NUM_FACILITIES, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %57

44:                                               ; preds = %35
  %45 = load i32, i32* @FALLBACK_TO_OTHER, align 4
  %46 = call i64 @OPENPAM_FEATURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load i8*, i8** @PAM_OTHER, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @openpam_load_chain(%struct.TYPE_4__* %49, i8* %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %63

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %31

60:                                               ; preds = %31
  %61 = load i32, i32* @PAM_SUCCESS, align 4
  %62 = call i32 @RETURNC(i32 %61)
  br label %63

63:                                               ; preds = %60, %54, %28
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = call i32 @openpam_clear_chains(i32** %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* @errno, align 4
  %70 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %71 = call i32 @RETURNC(i32 %70)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ENTERS(i8*) #1

declare dso_local i32 @valid_service_name(i8*) #1

declare dso_local i32 @openpam_log(i32, i8*) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i64 @openpam_load_chain(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i64 @OPENPAM_FEATURE(i32) #1

declare dso_local i32 @openpam_clear_chains(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
