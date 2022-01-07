; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_insert_request_authenticator.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_insert_request_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, i32*, i32*, %struct.rad_server* }
%struct.rad_server = type { i32* }

@POS_CODE = common dso_local global i64 0, align 8
@POS_AUTH = common dso_local global i64 0, align 8
@LEN_AUTH = common dso_local global i64 0, align 8
@POS_ATTRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rad_handle*, i32)* @insert_request_authenticator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_request_authenticator(%struct.rad_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.rad_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rad_server*, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %8 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %7, i32 0, i32 4
  %9 = load %struct.rad_server*, %struct.rad_server** %8, align 8
  %10 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %11 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %9, i64 %12
  store %struct.rad_server* %13, %struct.rad_server** %6, align 8
  %14 = call i32 @MD5Init(i32* %5)
  %15 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %16 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @POS_CODE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i64, i64* @POS_AUTH, align 8
  %21 = load i64, i64* @POS_CODE, align 8
  %22 = sub i64 %20, %21
  %23 = call i32 @MD5Update(i32* %5, i32* %19, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %28 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @POS_AUTH, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i64, i64* @LEN_AUTH, align 8
  %33 = call i32 @MD5Update(i32* %5, i32* %31, i64 %32)
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %36 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @POS_AUTH, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i64, i64* @LEN_AUTH, align 8
  %41 = call i32 @MD5Update(i32* %5, i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %44 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @POS_ATTRS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %49 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @POS_ATTRS, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @MD5Update(i32* %5, i32* %47, i64 %52)
  %54 = load %struct.rad_server*, %struct.rad_server** %6, align 8
  %55 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.rad_server*, %struct.rad_server** %6, align 8
  %58 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @strlen(i32* %59)
  %61 = call i32 @MD5Update(i32* %5, i32* %56, i64 %60)
  %62 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %63 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @POS_AUTH, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @MD5Final(i32* %66, i32* %5)
  ret void
}

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
