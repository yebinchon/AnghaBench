; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_handle_vanilla_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_handle_vanilla_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"krb5_storage_from_mem failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.descr*)* @handle_vanilla_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vanilla_tcp(i32 %0, i32* %1, %struct.descr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.descr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.descr* %2, %struct.descr** %7, align 8
  %10 = load %struct.descr*, %struct.descr** %7, align 8
  %11 = getelementptr inbounds %struct.descr, %struct.descr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.descr*, %struct.descr** %7, align 8
  %14 = getelementptr inbounds %struct.descr, %struct.descr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @krb5_storage_from_mem(i64 %12, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @kdc_log(i32 %20, i32* %21, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @krb5_ret_uint32(i32* %24, i32* %9)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @krb5_storage_free(i32* %26)
  %28 = load %struct.descr*, %struct.descr** %7, align 8
  %29 = getelementptr inbounds %struct.descr, %struct.descr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load %struct.descr*, %struct.descr** %7, align 8
  %36 = getelementptr inbounds %struct.descr, %struct.descr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.descr*, %struct.descr** %7, align 8
  %39 = getelementptr inbounds %struct.descr, %struct.descr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 4
  %42 = load %struct.descr*, %struct.descr** %7, align 8
  %43 = getelementptr inbounds %struct.descr, %struct.descr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 4
  %46 = call i32 @memmove(i64 %37, i64 %41, i32 %45)
  %47 = load %struct.descr*, %struct.descr** %7, align 8
  %48 = getelementptr inbounds %struct.descr, %struct.descr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 4
  store i32 %50, i32* %48, align 8
  store i32 1, i32* %4, align 4
  br label %52

51:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %34, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @krb5_storage_from_mem(i64, i32) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
