; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_alloc_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_alloc_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i32 }

@JSON_MAX_TOKENS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"JSON: Maximum token limit exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.json_token* (i32*)* @json_alloc_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.json_token* @json_alloc_token(i32* %0) #0 {
  %2 = alloca %struct.json_token*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @JSON_MAX_TOKENS, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.json_token* null, %struct.json_token** %2, align 8
  br label %16

14:                                               ; preds = %1
  %15 = call %struct.json_token* @os_zalloc(i32 4)
  store %struct.json_token* %15, %struct.json_token** %2, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.json_token*, %struct.json_token** %2, align 8
  ret %struct.json_token* %17
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.json_token* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
