; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.wpa_tdls_peer*, i32, i64 }
%struct.wpa_tdls_peer = type { i32, i32, %struct.wpa_tdls_peer* }

@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"peer does not exist\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"peer not connected\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"connected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_tdls_get_link_status(%struct.wpa_sm* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %49

17:                                               ; preds = %11
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 0
  %20 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %19, align 8
  store %struct.wpa_tdls_peer* %20, %struct.wpa_tdls_peer** %6, align 8
  br label %21

21:                                               ; preds = %34, %17
  %22 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %23 = icmp ne %struct.wpa_tdls_peer* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %26 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i64 @os_memcmp(i32 %27, i32* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %35, i32 0, i32 2
  %37 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %36, align 8
  store %struct.wpa_tdls_peer* %37, %struct.wpa_tdls_peer** %6, align 8
  br label %21

38:                                               ; preds = %32, %21
  %39 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %40 = icmp eq %struct.wpa_tdls_peer* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %49

42:                                               ; preds = %38
  %43 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %49

48:                                               ; preds = %42
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %49

49:                                               ; preds = %48, %47, %41, %16
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
