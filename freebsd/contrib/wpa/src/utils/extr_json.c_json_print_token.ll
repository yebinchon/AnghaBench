; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_print_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_print_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i8*, %struct.json_token*, %struct.json_token*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"[%d:%s:%s]\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.json_token*, i32, i8*, i64)* @json_print_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_print_token(%struct.json_token* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.json_token*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.json_token* %0, %struct.json_token** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.json_token*, %struct.json_token** %5, align 8
  %12 = icmp ne %struct.json_token* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %64

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @os_strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.json_token*, %struct.json_token** %5, align 8
  %25 = getelementptr inbounds %struct.json_token, %struct.json_token* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @json_type_str(i32 %26)
  %28 = load %struct.json_token*, %struct.json_token** %5, align 8
  %29 = getelementptr inbounds %struct.json_token, %struct.json_token* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load %struct.json_token*, %struct.json_token** %5, align 8
  %34 = getelementptr inbounds %struct.json_token, %struct.json_token* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = call i32 @os_snprintf(i8* %19, i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @os_snprintf_error(i64 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  br label %64

50:                                               ; preds = %37
  %51 = load %struct.json_token*, %struct.json_token** %5, align 8
  %52 = getelementptr inbounds %struct.json_token, %struct.json_token* %51, i32 0, i32 2
  %53 = load %struct.json_token*, %struct.json_token** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  call void @json_print_token(%struct.json_token* %53, i32 %55, i8* %56, i64 %57)
  %58 = load %struct.json_token*, %struct.json_token** %5, align 8
  %59 = getelementptr inbounds %struct.json_token, %struct.json_token* %58, i32 0, i32 1
  %60 = load %struct.json_token*, %struct.json_token** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  call void @json_print_token(%struct.json_token* %60, i32 %61, i8* %62, i64 %63)
  br label %64

64:                                               ; preds = %50, %46, %13
  ret void
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32, i32, i8*) #1

declare dso_local i32 @json_type_str(i32) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
