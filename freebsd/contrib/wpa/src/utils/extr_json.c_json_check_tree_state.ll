; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_check_tree_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_check_tree_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i64, i8*, i32, %struct.json_token*, %struct.json_token* }

@JSON_COMPLETED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"JSON: Unexpected token state %d (name=%s type=%d)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.json_token*)* @json_check_tree_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_check_tree_state(%struct.json_token* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.json_token*, align 8
  store %struct.json_token* %0, %struct.json_token** %3, align 8
  %4 = load %struct.json_token*, %struct.json_token** %3, align 8
  %5 = icmp ne %struct.json_token* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.json_token*, %struct.json_token** %3, align 8
  %9 = getelementptr inbounds %struct.json_token, %struct.json_token* %8, i32 0, i32 4
  %10 = load %struct.json_token*, %struct.json_token** %9, align 8
  %11 = call i32 @json_check_tree_state(%struct.json_token* %10)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.json_token*, %struct.json_token** %3, align 8
  %15 = getelementptr inbounds %struct.json_token, %struct.json_token* %14, i32 0, i32 3
  %16 = load %struct.json_token*, %struct.json_token** %15, align 8
  %17 = call i32 @json_check_tree_state(%struct.json_token* %16)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %7
  store i32 -1, i32* %2, align 4
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.json_token*, %struct.json_token** %3, align 8
  %22 = getelementptr inbounds %struct.json_token, %struct.json_token* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @JSON_COMPLETED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.json_token*, %struct.json_token** %3, align 8
  %29 = getelementptr inbounds %struct.json_token, %struct.json_token* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.json_token*, %struct.json_token** %3, align 8
  %32 = getelementptr inbounds %struct.json_token, %struct.json_token* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.json_token*, %struct.json_token** %3, align 8
  %37 = getelementptr inbounds %struct.json_token, %struct.json_token* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = load %struct.json_token*, %struct.json_token** %3, align 8
  %43 = getelementptr inbounds %struct.json_token, %struct.json_token* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %30, i8* %41, i32 %44)
  store i32 -1, i32* %2, align 4
  br label %47

46:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %19, %6
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
