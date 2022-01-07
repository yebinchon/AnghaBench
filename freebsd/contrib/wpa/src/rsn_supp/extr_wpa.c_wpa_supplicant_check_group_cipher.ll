; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_check_group_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_check_group_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPA_ALG_NONE = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"WPA: Unsupported Group Cipher %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"WPA: Unsupported %s Group Cipher key length %d (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i32, i32, i32, i32*, i32*)* @wpa_supplicant_check_group_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_check_group_cipher(%struct.wpa_sm* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_sm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @wpa_cipher_to_alg(i32 %15)
  %17 = load i32*, i32** %13, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %13, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WPA_ALG_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %6
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MSG_WARNING, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i32, i32, i8*, i32, ...) @wpa_msg(i32 %27, i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %7, align 4
  br label %57

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @wpa_cipher_rsc_len(i32 %32)
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @wpa_cipher_key_len(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40, %31
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %46 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MSG_WARNING, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @wpa_cipher_txt(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i32, i32, i8*, i32, ...) @wpa_msg(i32 %49, i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  store i32 -1, i32* %7, align 4
  br label %57

56:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %44, %22
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @wpa_cipher_to_alg(i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @wpa_cipher_rsc_len(i32) #1

declare dso_local i32 @wpa_cipher_key_len(i32) #1

declare dso_local i32 @wpa_cipher_txt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
