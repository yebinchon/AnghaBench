; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_get.c_open_kadmin_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_get.c_open_kadmin_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32, i32 }

@open_kadmin_connection.conf = internal global %struct.TYPE_4__ zeroinitializer, align 8
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KADM5_CONFIG_ADMIN_SERVER = common dso_local global i32 0, align 4
@KADM5_CONFIG_KADMIND_PORT = common dso_local global i32 0, align 4
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"kadm5_init_with_password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @open_kadmin_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @open_kadmin_connection(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @memset(%struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 24)
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32* @strdup(i8* %16)
  store i32* %17, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 1), align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 1), align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @context, align 4
  %22 = call i32 @krb5_set_error_message(i32 %21, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %59

23:                                               ; preds = %15
  %24 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 2), align 8
  %26 = or i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 2), align 8
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 0), align 8
  %32 = load i32, i32* @KADM5_CONFIG_ADMIN_SERVER, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 2), align 8
  %34 = or i32 %33, %32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 2), align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @htons(i32 %39)
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 3), align 4
  %41 = load i32, i32* @KADM5_CONFIG_KADMIND_PORT, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 2), align 8
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 2), align 8
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* @context, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %48 = call i64 @kadm5_init_with_password_ctx(i32 %45, i8* %46, i32* null, i32 %47, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 0, i8** %11)
  store i64 %48, i64* %10, align 8
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @open_kadmin_connection.conf, i32 0, i32 1), align 8
  %50 = call i32 @free(i32* %49)
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @context, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @krb5_warn(i32 %54, i64 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %59

57:                                               ; preds = %44
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %57, %53, %20
  %60 = load i8*, i8** %5, align 8
  ret i8* %60
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @kadm5_init_with_password_ctx(i32, i8*, i32*, i32, %struct.TYPE_4__*, i32, i32, i8**) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
