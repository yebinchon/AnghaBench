; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_eapol_test_write_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_eapol_test_write_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"%s\0A-----BEGIN CERTIFICATE-----\0A%s-----END CERTIFICATE-----\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.wpabuf*)* @eapol_test_write_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_test_write_cert(i32* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %9 = call i32 @wpabuf_head(%struct.wpabuf* %8)
  %10 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %11 = call i32 @wpabuf_len(%struct.wpabuf* %10)
  %12 = call i8* @base64_encode(i32 %9, i32 %11, i32* null)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @fprintf(i32* %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @os_free(i8* %21)
  br label %23

23:                                               ; preds = %16, %15
  ret void
}

declare dso_local i8* @base64_encode(i32, i32, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
