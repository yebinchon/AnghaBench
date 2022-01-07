; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_end_md5_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_end_md5_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ws_buf = type { i64, i64, i64 }
%struct.auth = type { i32* }
%struct.netauth = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@RIP_AF_AUTH = common dso_local global i32 0, align 4
@RIP_AUTH_MD5_HASH_XTRA = common dso_local global i64 0, align 8
@RIP_AUTH_MD5_KEY_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_md5_auth(%struct.ws_buf* %0, %struct.auth* %1) #0 {
  %3 = alloca %struct.ws_buf*, align 8
  %4 = alloca %struct.auth*, align 8
  %5 = alloca %struct.netauth*, align 8
  %6 = alloca %struct.netauth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ws_buf* %0, %struct.ws_buf** %3, align 8
  store %struct.auth* %1, %struct.auth** %4, align 8
  %9 = load %struct.ws_buf*, %struct.ws_buf** %3, align 8
  %10 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.netauth*
  store %struct.netauth* %12, %struct.netauth** %5, align 8
  %13 = load %struct.ws_buf*, %struct.ws_buf** %3, align 8
  %14 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.netauth*
  store %struct.netauth* %16, %struct.netauth** %6, align 8
  %17 = load %struct.netauth*, %struct.netauth** %6, align 8
  %18 = bitcast %struct.netauth* %17 to i8*
  %19 = load %struct.ws_buf*, %struct.ws_buf** %3, align 8
  %20 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = ptrtoint i8* %18 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @RIP_AF_AUTH, align 4
  %28 = load %struct.netauth*, %struct.netauth** %6, align 8
  %29 = getelementptr inbounds %struct.netauth, %struct.netauth* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = call i8* @htons(i32 1)
  %31 = load %struct.netauth*, %struct.netauth** %6, align 8
  %32 = getelementptr inbounds %struct.netauth, %struct.netauth* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = load %struct.netauth*, %struct.netauth** %5, align 8
  %36 = getelementptr inbounds %struct.netauth, %struct.netauth* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = call i32 @MD5Init(i32* %7)
  %40 = load %struct.ws_buf*, %struct.ws_buf** %3, align 8
  %41 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @RIP_AUTH_MD5_HASH_XTRA, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @MD5Update(i32* %7, i32* %43, i64 %47)
  %49 = load %struct.auth*, %struct.auth** %4, align 8
  %50 = getelementptr inbounds %struct.auth, %struct.auth* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @RIP_AUTH_MD5_KEY_LEN, align 8
  %53 = call i32 @MD5Update(i32* %7, i32* %51, i64 %52)
  %54 = load %struct.netauth*, %struct.netauth** %6, align 8
  %55 = getelementptr inbounds %struct.netauth, %struct.netauth* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @MD5Final(i32 %57, i32* %7)
  %59 = load %struct.ws_buf*, %struct.ws_buf** %3, align 8
  %60 = getelementptr inbounds %struct.ws_buf, %struct.ws_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i64) #1

declare dso_local i32 @MD5Final(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
