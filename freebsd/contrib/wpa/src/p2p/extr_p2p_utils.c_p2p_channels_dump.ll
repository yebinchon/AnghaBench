; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_channels_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32 }
%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c" %u:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_channels_dump(%struct.p2p_data* %0, i8* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca [500 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.p2p_reg_class*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %6, align 8
  %14 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 500
  store i8* %16, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %101, %3
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %20 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %104

23:                                               ; preds = %17
  %24 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %25 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %24, i32 0, i32 1
  %26 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %26, i64 %27
  store %struct.p2p_reg_class* %28, %struct.p2p_reg_class** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %13, align 8
  %37 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @os_snprintf(i8* %29, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @os_snprintf_error(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  br label %104

52:                                               ; preds = %23
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %97, %52
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %13, align 8
  %60 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %75 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %13, align 8
  %76 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, i8*, i8*, ...) @os_snprintf(i8* %64, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @os_snprintf_error(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %63
  br label %100

92:                                               ; preds = %63
  %93 = load i32, i32* %12, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %57

100:                                              ; preds = %91, %57
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %17

104:                                              ; preds = %51, %17
  %105 = load i8*, i8** %8, align 8
  store i8 0, i8* %105, align 1
  %106 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0
  %109 = call i32 @p2p_dbg(%struct.p2p_data* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %107, i8* %108)
  ret void
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
