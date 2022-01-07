; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_ret_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_ret_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_buffer = type { i32, i32 }
%struct.ntlm_buf = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.sec_buffer*, %struct.ntlm_buf*)* @ret_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ret_buf(i32* %0, %struct.sec_buffer* %1, %struct.ntlm_buf* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sec_buffer*, align 8
  %6 = alloca %struct.ntlm_buf*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sec_buffer* %1, %struct.sec_buffer** %5, align 8
  store %struct.ntlm_buf* %2, %struct.ntlm_buf** %6, align 8
  %8 = load %struct.sec_buffer*, %struct.sec_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.sec_buffer, %struct.sec_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @malloc(i32 %10)
  %12 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %13 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sec_buffer*, %struct.sec_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.sec_buffer, %struct.sec_buffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %18 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.sec_buffer*, %struct.sec_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.sec_buffer, %struct.sec_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @krb5_storage_seek(i32* %19, i32 %22, i32 %23)
  %25 = load %struct.sec_buffer*, %struct.sec_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.sec_buffer, %struct.sec_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CHECK(i32 %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %31 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %34 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @krb5_storage_read(i32* %29, i32 %32, i32 %35)
  %37 = load %struct.ntlm_buf*, %struct.ntlm_buf** %6, align 8
  %38 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CHECK(i32 %36, i32 %39)
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %3
  %42 = load i64, i64* %7, align 8
  ret i64 %42
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @CHECK(i32, i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32 @krb5_storage_read(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
