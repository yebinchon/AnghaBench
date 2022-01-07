; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_user_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_user_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, %struct.eap_user*, i32, %struct.TYPE_2__* }
%struct.eap_user = type { i32 }
%struct.TYPE_2__ = type { i64 (i32, i32*, i64, i32, %struct.eap_user*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_user_get(%struct.eap_sm* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_user*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %12 = icmp eq %struct.eap_sm* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (i32, i32*, i64, i32, %struct.eap_user*)*, i64 (i32, i32*, i64, i32, %struct.eap_user*)** %22, align 8
  %24 = icmp eq i64 (i32, i32*, i64, i32, %struct.eap_user*)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %13, %4
  store i32 -1, i32* %5, align 4
  br label %61

26:                                               ; preds = %18
  %27 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 1
  %29 = load %struct.eap_user*, %struct.eap_user** %28, align 8
  %30 = call i32 @eap_user_free(%struct.eap_user* %29)
  %31 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 1
  store %struct.eap_user* null, %struct.eap_user** %32, align 8
  %33 = call %struct.eap_user* @os_zalloc(i32 4)
  store %struct.eap_user* %33, %struct.eap_user** %10, align 8
  %34 = load %struct.eap_user*, %struct.eap_user** %10, align 8
  %35 = icmp eq %struct.eap_user* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %61

37:                                               ; preds = %26
  %38 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64 (i32, i32*, i64, i32, %struct.eap_user*)*, i64 (i32, i32*, i64, i32, %struct.eap_user*)** %41, align 8
  %43 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.eap_user*, %struct.eap_user** %10, align 8
  %50 = call i64 %42(i32 %45, i32* %46, i64 %47, i32 %48, %struct.eap_user* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.eap_user*, %struct.eap_user** %10, align 8
  %54 = call i32 @eap_user_free(%struct.eap_user* %53)
  store i32 -1, i32* %5, align 4
  br label %61

55:                                               ; preds = %37
  %56 = load %struct.eap_user*, %struct.eap_user** %10, align 8
  %57 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 1
  store %struct.eap_user* %56, %struct.eap_user** %58, align 8
  %59 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %52, %36, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @eap_user_free(%struct.eap_user*) #1

declare dso_local %struct.eap_user* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
