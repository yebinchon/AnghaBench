; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_acct_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_finish_acct_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RADIUS: Too long messages (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_msg_finish_acct_resp(%struct.radius_msg* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i64], align 16
  store %struct.radius_msg* %0, %struct.radius_msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %12 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wpabuf_len(i32 %13)
  %15 = call i32 @host_to_be16(i32 %14)
  %16 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %17 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %21 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @MD5_MAC_LEN, align 4
  %27 = call i32 @os_memcpy(i32 %24, i32* %25, i32 %26)
  %28 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %29 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @wpabuf_head(i32 %30)
  %32 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %31, i32** %32, align 16
  %33 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %34 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wpabuf_len(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %37, i64* %38, align 16
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  store i32* %39, i32** %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %45 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %46 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @md5_vector(i32 2, i32** %43, i64* %44, i32 %49)
  %51 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %52 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wpabuf_len(i32 %53)
  %55 = icmp sgt i32 %54, 65535
  br i1 %55, label %56, label %64

56:                                               ; preds = %4
  %57 = load i32, i32* @MSG_WARNING, align 4
  %58 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %59 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wpabuf_len(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %56, %4
  ret void
}

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32* @wpabuf_head(i32) #1

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
