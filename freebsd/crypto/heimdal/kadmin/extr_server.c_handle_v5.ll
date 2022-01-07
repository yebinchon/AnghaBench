; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_server.c_handle_v5.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_server.c_handle_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@match_appl_version = common dso_local global i32 0, align 4
@KRB5_RECVAUTH_IGNORE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"krb5_recvauth\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ticket for strange principal (%s)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"krb5_read_priv_message\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"kadm5_init_with_password_ctx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @handle_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_v5(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @match_appl_version, align 4
  %19 = load i32, i32* @KRB5_RECVAUTH_IGNORE_VERSION, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @krb5_recvauth_match_version(i32 %17, i32** %13, i32* %6, i32 %18, i32* %14, i32* null, i32 %19, i32 %20, %struct.TYPE_8__** %8)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @krb5_unparse_name(i32 %29, i32 %32, i8** %9)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %43 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = call i64 @strncmp(i8* %41, i32 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @krb5_errx(i32 %48, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  %54 = call i32 @memset(i32* %15, i32 0, i32 4)
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @krb5_read_priv_message(i32 %58, i32* %59, i32* %6, i32* %16)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @krb5_err(i32 %64, i32 1, i64 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @_kadm5_unmarshal_params(i32 %68, i32* %16, i32* %15)
  br label %70

70:                                               ; preds = %67, %51
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @krb5_unparse_name(i32 %76, i32 %79, i8** %10)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load i32, i32* %4, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @krb5_err(i32 %84, i32 1, i64 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %70
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call i32 @krb5_free_ticket(i32 %88, %struct.TYPE_8__* %89)
  %91 = load i32, i32* %4, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %94 = call i64 @kadm5_s_init_with_password_ctx(i32 %91, i8* %92, i32* null, i32 %93, i32* %15, i32 0, i32 0, i8** %11)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i32, i32* %4, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @krb5_err(i32 %98, i32 1, i64 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %87
  %102 = load i32, i32* %4, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @v5_loop(i32 %102, i32* %103, i32 %104, i8* %105, i32 %106)
  ret void
}

declare dso_local i64 @krb5_recvauth_match_version(i32, i32**, i32*, i32, i32*, i32*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @krb5_read_priv_message(i32, i32*, i32*, i32*) #1

declare dso_local i32 @_kadm5_unmarshal_params(i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_ticket(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @kadm5_s_init_with_password_ctx(i32, i8*, i32*, i32, i32*, i32, i32, i8**) #1

declare dso_local i32 @v5_loop(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
