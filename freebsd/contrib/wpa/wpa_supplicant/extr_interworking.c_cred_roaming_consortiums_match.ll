; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_roaming_consortiums_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_roaming_consortiums_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_cred = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.wpabuf*, %struct.wpa_cred*)* @cred_roaming_consortiums_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_roaming_consortiums_match(i32* %0, %struct.wpabuf* %1, %struct.wpa_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpa_cred*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wpa_cred* %2, %struct.wpa_cred** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %12 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %19 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wpa_cred*, %struct.wpa_cred** %7, align 8
  %26 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @roaming_consortium_match(i32* %16, %struct.wpabuf* %17, i32 %24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %40

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

39:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @roaming_consortium_match(i32*, %struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
