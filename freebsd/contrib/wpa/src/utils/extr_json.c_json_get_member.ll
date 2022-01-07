; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_get_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_get_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i64, i64, %struct.json_token*, %struct.json_token* }

@JSON_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_token* @json_get_member(%struct.json_token* %0, i8* %1) #0 {
  %3 = alloca %struct.json_token*, align 8
  %4 = alloca %struct.json_token*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.json_token*, align 8
  %7 = alloca %struct.json_token*, align 8
  store %struct.json_token* %0, %struct.json_token** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.json_token* null, %struct.json_token** %7, align 8
  %8 = load %struct.json_token*, %struct.json_token** %4, align 8
  %9 = icmp ne %struct.json_token* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.json_token*, %struct.json_token** %4, align 8
  %12 = getelementptr inbounds %struct.json_token, %struct.json_token* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @JSON_OBJECT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  store %struct.json_token* null, %struct.json_token** %3, align 8
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.json_token*, %struct.json_token** %4, align 8
  %19 = getelementptr inbounds %struct.json_token, %struct.json_token* %18, i32 0, i32 3
  %20 = load %struct.json_token*, %struct.json_token** %19, align 8
  store %struct.json_token* %20, %struct.json_token** %6, align 8
  br label %21

21:                                               ; preds = %39, %17
  %22 = load %struct.json_token*, %struct.json_token** %6, align 8
  %23 = icmp ne %struct.json_token* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.json_token*, %struct.json_token** %6, align 8
  %26 = getelementptr inbounds %struct.json_token, %struct.json_token* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.json_token*, %struct.json_token** %6, align 8
  %31 = getelementptr inbounds %struct.json_token, %struct.json_token* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @os_strcmp(i64 %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.json_token*, %struct.json_token** %6, align 8
  store %struct.json_token* %37, %struct.json_token** %7, align 8
  br label %38

38:                                               ; preds = %36, %29, %24
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.json_token*, %struct.json_token** %6, align 8
  %41 = getelementptr inbounds %struct.json_token, %struct.json_token* %40, i32 0, i32 2
  %42 = load %struct.json_token*, %struct.json_token** %41, align 8
  store %struct.json_token* %42, %struct.json_token** %6, align 8
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.json_token*, %struct.json_token** %7, align 8
  store %struct.json_token* %44, %struct.json_token** %3, align 8
  br label %45

45:                                               ; preds = %43, %16
  %46 = load %struct.json_token*, %struct.json_token** %3, align 8
  ret %struct.json_token* %46
}

declare dso_local i64 @os_strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
