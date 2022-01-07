; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_get_result_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_get_result_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UI_F_UI_GET_RESULT_LENGTH = common dso_local global i32 0, align 4
@UI_R_INDEX_TOO_SMALL = common dso_local global i32 0, align 4
@UI_R_INDEX_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_get_result_length(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @UI_F_UI_GET_RESULT_LENGTH, align 4
  %10 = load i32, i32* @UI_R_INDEX_TOO_SMALL, align 4
  %11 = call i32 @UIerr(i32 %9, i32 %10)
  store i32 -1, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sk_UI_STRING_num(i32 %16)
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @UI_F_UI_GET_RESULT_LENGTH, align 4
  %21 = load i32, i32* @UI_R_INDEX_TOO_LARGE, align 4
  %22 = call i32 @UIerr(i32 %20, i32 %21)
  store i32 -1, i32* %3, align 4
  br label %30

23:                                               ; preds = %12
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @sk_UI_STRING_value(i32 %26, i32 %27)
  %29 = call i32 @UI_get_result_string_length(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %19, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local i32 @sk_UI_STRING_num(i32) #1

declare dso_local i32 @UI_get_result_string_length(i32) #1

declare dso_local i32 @sk_UI_STRING_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
