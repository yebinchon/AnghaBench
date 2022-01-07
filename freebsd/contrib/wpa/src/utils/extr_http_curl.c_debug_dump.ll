; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_debug_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.http_ctx*, i8*, i8*, i64)* @debug_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump(%struct.http_ctx* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.http_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.http_ctx* %0, %struct.http_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %50, %4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 9
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 13
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @MSG_MSGDUMP, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @wpa_hexdump_ascii(i32 %44, i8* %45, i8* %46, i64 %47)
  br label %100

49:                                               ; preds = %36, %29, %22, %15
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %10, align 8
  br label %11

53:                                               ; preds = %11
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  %56 = call i8* @os_malloc(i64 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %100

60:                                               ; preds = %53
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @os_memcpy(i8* %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %92, %60
  %69 = load i64, i64* %8, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %87, label %80

80:                                               ; preds = %71
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %91

87:                                               ; preds = %80, %71
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  br label %92

91:                                               ; preds = %80
  br label %93

92:                                               ; preds = %87
  br label %68

93:                                               ; preds = %91, %68
  %94 = load i32, i32* @MSG_MSGDUMP, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @wpa_printf(i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %95, i8* %96)
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @os_free(i8* %98)
  br label %100

100:                                              ; preds = %93, %59, %43
  ret void
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
