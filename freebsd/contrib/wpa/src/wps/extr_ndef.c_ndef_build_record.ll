; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_ndef_build_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_ndef_build_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NDEF : Failed to allocate record for build\00", align 1
@FLAG_ID_LENGTH_PRESENT = common dso_local global i64 0, align 8
@FLAG_SHORT_RECORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i64, i8*, i64, i8*, i64, %struct.wpabuf*)* @ndef_build_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ndef_build_record(i64 %0, i8* %1, i64 %2, i8* %3, i64 %4, %struct.wpabuf* %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.wpabuf* %5, %struct.wpabuf** %13, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %20 = call i64 @wpabuf_len(%struct.wpabuf* %19)
  store i64 %20, i64* %18, align 8
  %21 = load i64, i64* %18, align 8
  %22 = icmp ult i64 %21, 256
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %16, align 4
  store i64 2, i64* %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i64 8, i64 4
  %29 = load i64, i64* %15, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i64, i64* %15, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %15, align 8
  br label %36

36:                                               ; preds = %33, %6
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %18, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call %struct.wpabuf* @wpabuf_alloc(i64 %44)
  store %struct.wpabuf* %45, %struct.wpabuf** %14, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %47 = icmp eq %struct.wpabuf* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @MSG_ERROR, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %103

51:                                               ; preds = %36
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @FLAG_ID_LENGTH_PRESENT, align 8
  %57 = load i64, i64* %17, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %17, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* @FLAG_SHORT_RECORD, align 8
  %64 = load i64, i64* %17, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %17, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call i32 @wpabuf_put_u8(%struct.wpabuf* %67, i64 %68)
  %70 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @wpabuf_put_u8(%struct.wpabuf* %70, i64 %71)
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i32 @wpabuf_put_u8(%struct.wpabuf* %76, i64 %77)
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %81 = load i64, i64* %18, align 8
  %82 = call i32 @wpabuf_put_be32(%struct.wpabuf* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %12, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @wpabuf_put_u8(%struct.wpabuf* %87, i64 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @wpabuf_put_data(%struct.wpabuf* %91, i8* %92, i64 %93)
  %95 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @wpabuf_put_data(%struct.wpabuf* %95, i8* %96, i64 %97)
  %99 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %100 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %101 = call i32 @wpabuf_put_buf(%struct.wpabuf* %99, %struct.wpabuf* %100)
  %102 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %102, %struct.wpabuf** %7, align 8
  br label %103

103:                                              ; preds = %90, %48
  %104 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %104
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
