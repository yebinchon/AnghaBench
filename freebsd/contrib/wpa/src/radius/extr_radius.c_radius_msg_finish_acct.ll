; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RADIUS: Too long messages (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_msg_finish_acct(%struct.radius_msg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32*], align 16
  %8 = alloca [2 x i64], align 16
  store %struct.radius_msg* %0, %struct.radius_msg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %10 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @wpabuf_len(i32 %11)
  %13 = call i32 @host_to_be16(i32 %12)
  %14 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %15 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %19 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MD5_MAC_LEN, align 4
  %24 = call i32 @os_memset(i32 %22, i32 0, i32 %23)
  %25 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %26 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @wpabuf_head(i32 %27)
  %29 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %28, i32** %29, align 16
  %30 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %31 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @wpabuf_len(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %34, i64* %35, align 16
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %36, i32** %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %42 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %43 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @md5_vector(i32 2, i32** %40, i64* %41, i32 %46)
  %48 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %49 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @wpabuf_len(i32 %50)
  %52 = icmp sgt i32 %51, 65535
  br i1 %52, label %53, label %61

53:                                               ; preds = %3
  %54 = load i32, i32* @MSG_WARNING, align 4
  %55 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %56 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @wpabuf_len(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32* @wpabuf_head(i32) #1

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
