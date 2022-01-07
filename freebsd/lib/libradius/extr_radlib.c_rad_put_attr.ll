; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_put_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_put_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Please call rad_create_request() before putting attributes\00", align 1
@POS_CODE = common dso_local global i64 0, align 8
@RAD_ACCOUNTING_REQUEST = common dso_local global i64 0, align 8
@RAD_EAP_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"EAP-Message attribute is not valid in accounting requests\00", align 1
@RAD_USER_PASSWORD = common dso_local global i32 0, align 4
@RAD_MESSAGE_AUTHENTIC = common dso_local global i32 0, align 4
@RAD_CHAP_PASSWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_put_attr(%struct.rad_handle* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rad_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %12 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %17 = call i32 @generr(%struct.rad_handle* %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %90

18:                                               ; preds = %4
  %19 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %20 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @POS_CODE, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RAD_ACCOUNTING_REQUEST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RAD_EAP_MESSAGE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %33 = call i32 @generr(%struct.rad_handle* %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %90

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RAD_EAP_MESSAGE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %41 = call i32 @rad_put_message_authentic(%struct.rad_handle* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %90

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @RAD_USER_PASSWORD, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @put_password_attr(%struct.rad_handle* %50, i32 %51, i8* %52, i64 %53)
  store i32 %54, i32* %10, align 4
  br label %88

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @RAD_MESSAGE_AUTHENTIC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %61 = call i32 @rad_put_message_authentic(%struct.rad_handle* %60)
  store i32 %61, i32* %10, align 4
  br label %87

62:                                               ; preds = %55
  %63 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @put_raw_attr(%struct.rad_handle* %63, i32 %64, i8* %65, i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RAD_CHAP_PASSWORD, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %76 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  br label %85

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @RAD_EAP_MESSAGE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %83 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %59
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %43, %31, %15
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

declare dso_local i32 @rad_put_message_authentic(%struct.rad_handle*) #1

declare dso_local i32 @put_password_attr(%struct.rad_handle*, i32, i8*, i64) #1

declare dso_local i32 @put_raw_attr(%struct.rad_handle*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
