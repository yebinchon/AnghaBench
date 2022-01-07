; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kinit.c_ticket_lifetime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kinit.c_ticket_lifetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"get_server\00", align 1
@KRB5_GC_CACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"krb5_get_credentials\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i8*)* @ticket_lifetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ticket_lifetime(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = call i32 @memset(%struct.TYPE_8__* %10, i32 0, i32 24)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %18 = call i64 @krb5_cc_get_principal(i32 %15, i32 %16, i32* %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @krb5_warn(i32 %22, i64 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %79

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %31 = call i64 @get_server(i32 %26, i32 %28, i8* %29, i32* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @krb5_free_principal(i32 %35, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @krb5_warn(i32 %39, i64 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %79

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @KRB5_GC_CACHED, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @krb5_get_credentials(i32 %43, i32 %44, i32 %45, %struct.TYPE_8__* %10, %struct.TYPE_8__** %11)
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @krb5_free_principal(i32 %47, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @krb5_free_principal(i32 %51, i32 %53)
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @krb5_warn(i32 %58, i64 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %79

61:                                               ; preds = %42
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %65, %69
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i64 0, i64* %13, align 8
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = call i32 @krb5_free_creds(i32 %75, %struct.TYPE_8__* %76)
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %74, %57, %34, %21
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @get_server(i32, i32, i8*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_get_credentials(i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__**) #1

declare dso_local i32 @krb5_free_creds(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
