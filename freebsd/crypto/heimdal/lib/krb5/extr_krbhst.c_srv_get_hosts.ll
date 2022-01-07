; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_srv_get_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_srv_get_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"SRV\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"searching DNS for realm %s %s.%s -> %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.krb5_krbhst_data*, i8*, i8*)* @srv_get_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srv_get_hosts(i32 %0, %struct.krb5_krbhst_data* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.krb5_krbhst_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.krb5_krbhst_data* %1, %struct.krb5_krbhst_data** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %15 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %20 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @srv_find_realm(i32 %13, i32*** %10, i32* %11, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %25 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @_krb5_debug(i32 %23, i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %53

34:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %6, align 8
  %41 = load i32**, i32*** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @append_host_hostinfo(%struct.krb5_krbhst_data* %40, i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load i32**, i32*** %10, align 8
  %52 = call i32 @free(i32** %51)
  br label %53

53:                                               ; preds = %50, %33
  ret void
}

declare dso_local i64 @srv_find_realm(i32, i32***, i32*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @append_host_hostinfo(%struct.krb5_krbhst_data*, i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
