; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_get_kadmin_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_get_kadmin_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s/kdc.conf\00", align 1
@context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"kadm5_init_with_password_ctx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @get_kadmin_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_kadmin_context(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @context, align 4
  %14 = call i32 @hdb_db_dir(i32 %13)
  %15 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @krb5_prepend_config_files_default(i8* %23, i8*** %8)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @context, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @krb5_err(i32 %28, i32 1, i64 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @context, align 4
  %33 = load i8**, i8*** %8, align 8
  %34 = call i64 @krb5_set_config_files(i32 %32, i8** %33)
  store i64 %34, i64* %6, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = call i32 @krb5_free_config_files(i8** %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @krb5_err(i32 %40, i32 1, i64 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %31
  %44 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 16)
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* @context, align 4
  %56 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %57 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %58 = call i64 @kadm5_init_with_password_ctx(i32 %55, i32 %56, i32* null, i32 %57, %struct.TYPE_4__* %5, i32 0, i32 0, i8** %7)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @context, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @krb5_err(i32 %62, i32 1, i64 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i32*
  ret i32* %67
}

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_prepend_config_files_default(i8*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @kadm5_init_with_password_ctx(i32, i32, i32*, i32, %struct.TYPE_4__*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
