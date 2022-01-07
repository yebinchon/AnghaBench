; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_ext_password.c_ext_password_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_ext_password.c_ext_password_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EXT PW: mlock failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @ext_password_alloc(i64 %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call %struct.wpabuf* @wpabuf_alloc(i64 %5)
  store %struct.wpabuf* %6, %struct.wpabuf** %4, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = call i32 @wpabuf_head(%struct.wpabuf* %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = call i32 @wpabuf_len(%struct.wpabuf* %13)
  %15 = call i64 @mlock(i32 %12, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %23, %struct.wpabuf** %2, align 8
  br label %24

24:                                               ; preds = %22, %9
  %25 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %25
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @mlock(i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
