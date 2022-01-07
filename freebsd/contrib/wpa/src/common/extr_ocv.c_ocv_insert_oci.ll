; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_insert_oci.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_insert_oci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_channel_info = type { i32, i32, i32, i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Cannot determine operating class and channel for OCI element\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocv_insert_oci(%struct.wpa_channel_info* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_channel_info*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store %struct.wpa_channel_info* %0, %struct.wpa_channel_info** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %9 = load i8***, i8**** %5, align 8
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %8, align 8
  %11 = load %struct.wpa_channel_info*, %struct.wpa_channel_info** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_channel_info, %struct.wpa_channel_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wpa_channel_info*, %struct.wpa_channel_info** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_channel_info, %struct.wpa_channel_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wpa_channel_info*, %struct.wpa_channel_info** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_channel_info, %struct.wpa_channel_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ieee80211_chaninfo_to_channel(i32 %13, i32 %16, i32 %19, i8** %6, i8** %7)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @MSG_WARNING, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %8, align 8
  store i8* %26, i8** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %8, align 8
  store i8* %29, i8** %30, align 8
  %32 = load %struct.wpa_channel_info*, %struct.wpa_channel_info** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_channel_info, %struct.wpa_channel_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %8, align 8
  store i8* %36, i8** %37, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8***, i8**** %5, align 8
  store i8** %39, i8*** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ieee80211_chaninfo_to_channel(i32, i32, i32, i8**, i8**) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
