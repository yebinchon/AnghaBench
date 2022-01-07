; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_get_member_base64url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_get_member_base64url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.json_token = type { i64, i64 }

@JSON_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @json_get_member_base64url(%struct.json_token* %0, i8* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.json_token*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.json_token*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.json_token* %0, %struct.json_token** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.json_token*, %struct.json_token** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.json_token* @json_get_member(%struct.json_token* %10, i8* %11)
  store %struct.json_token* %12, %struct.json_token** %6, align 8
  %13 = load %struct.json_token*, %struct.json_token** %6, align 8
  %14 = icmp ne %struct.json_token* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.json_token*, %struct.json_token** %6, align 8
  %17 = getelementptr inbounds %struct.json_token, %struct.json_token* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @JSON_STRING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.json_token*, %struct.json_token** %6, align 8
  %24 = getelementptr inbounds %struct.json_token, %struct.json_token* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.json_token*, %struct.json_token** %6, align 8
  %28 = getelementptr inbounds %struct.json_token, %struct.json_token* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @os_strlen(i64 %29)
  %31 = call i8* @base64_url_decode(i8* %26, i32 %30, i64* %8)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %46

35:                                               ; preds = %22
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.wpabuf* @wpabuf_alloc_ext_data(i8* %36, i64 %37)
  store %struct.wpabuf* %38, %struct.wpabuf** %9, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %40 = icmp ne %struct.wpabuf* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @os_free(i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %45, %struct.wpabuf** %3, align 8
  br label %46

46:                                               ; preds = %44, %34, %21
  %47 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %47
}

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i8* @base64_url_decode(i8*, i32, i64*) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_ext_data(i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
