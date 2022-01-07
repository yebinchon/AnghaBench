; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_display_status.c_routine_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_display_status.c_routine_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@routine_error.msgs = internal global [19 x i8*] [i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [39 x i8] c"An unsupported mechanism was requested\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"An invalid name was supplied\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"A supplied name was of an unsupported type\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Incorrect channel bindings were supplied\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"An invalid status code was supplied\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"A token had an invalid MIC\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"No credentials were supplied, or the credentials were unavailable or inaccessible.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"No context has been established\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"A token was invalid\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"A credential was invalid\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"The referenced credentials have expired\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"The context has expired\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Miscellaneous failure (see text)\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"The quality-of-protection requested could not be provide\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"The operation is forbidden by local security policy\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"The operation or option is not available\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"The requested credential element already exists\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"The provided name was not a mechanism name.\00", align 1
@GSS_C_ROUTINE_ERROR_OFFSET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"unknown routine error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @routine_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @routine_error(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @GSS_C_ROUTINE_ERROR_OFFSET, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 19
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x i8*], [19 x i8*]* @routine_error.msgs, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %15, %14, %9
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
