; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_build_ntlm2_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_build_ntlm2_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_build_ntlm2_master(i8* %0, i64 %1, %struct.ntlm_buf* %2, %struct.ntlm_buf* %3, %struct.ntlm_buf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ntlm_buf*, align 8
  %10 = alloca %struct.ntlm_buf*, align 8
  %11 = alloca %struct.ntlm_buf*, align 8
  %12 = alloca %struct.ntlm_buf, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %9, align 8
  store %struct.ntlm_buf* %3, %struct.ntlm_buf** %10, align 8
  store %struct.ntlm_buf* %4, %struct.ntlm_buf** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %17 = call i32 @heim_ntlm_v2_base_session(i8* %14, i64 %15, %struct.ntlm_buf* %16, %struct.ntlm_buf* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %24 = load %struct.ntlm_buf*, %struct.ntlm_buf** %11, align 8
  %25 = call i32 @heim_ntlm_keyex_wrap(%struct.ntlm_buf* %12, %struct.ntlm_buf* %23, %struct.ntlm_buf* %24)
  store i32 %25, i32* %13, align 4
  %26 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %12)
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %20
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @heim_ntlm_v2_base_session(i8*, i64, %struct.ntlm_buf*, %struct.ntlm_buf*) #1

declare dso_local i32 @heim_ntlm_keyex_wrap(%struct.ntlm_buf*, %struct.ntlm_buf*, %struct.ntlm_buf*) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
