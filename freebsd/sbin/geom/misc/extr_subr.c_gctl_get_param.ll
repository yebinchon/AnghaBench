; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_gctl_get_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_gctl_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32, %struct.gctl_req_arg* }
%struct.gctl_req_arg = type { i32, i32, i8*, i32 }

@GCTL_PARAM_RD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No length argument (%s).\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unterminated argument (%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Wrong length %s argument.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No such argument (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.gctl_req*, i64, i8*, i32)* @gctl_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gctl_get_param(%struct.gctl_req* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gctl_req_arg*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @vsnprintf(i8* %13, i32 256, i8* %14, i32 %15)
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %93, %4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %20 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %17
  %24 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %25 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %24, i32 0, i32 1
  %26 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %26, i64 %28
  store %struct.gctl_req_arg* %29, %struct.gctl_req_arg** %9, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %31 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %9, align 8
  %32 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i8* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %93

37:                                               ; preds = %23
  %38 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %9, align 8
  %39 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GCTL_PARAM_RD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %93

45:                                               ; preds = %37
  %46 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %9, align 8
  %47 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %9, align 8
  %53 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @stderr, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = call i32 (...) @abort() #3
  unreachable

61:                                               ; preds = %51
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %9, align 8
  %64 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @stderr, align 4
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %75 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = call i32 (...) @abort() #3
  unreachable

77:                                               ; preds = %61
  br label %91

78:                                               ; preds = %45
  %79 = load i64, i64* %6, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %9, align 8
  %82 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @stderr, align 4
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %88 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = call i32 (...) @abort() #3
  unreachable

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %77
  %92 = load i8*, i8** %12, align 8
  ret i8* %92

93:                                               ; preds = %44, %36
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %17

96:                                               ; preds = %17
  %97 = load i32, i32* @stderr, align 4
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %99 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
