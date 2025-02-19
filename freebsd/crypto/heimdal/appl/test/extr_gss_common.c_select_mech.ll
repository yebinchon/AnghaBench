; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gss_common.c_select_mech.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gss_common.c_select_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"spnego\00", align 1
@GSS_SPNEGO_MECHANISM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"no-oid\00", align 1
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Unknown mechanism '%s' (spnego, krb5, no-oid)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_mech(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @GSS_SPNEGO_MECHANISM, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @GSS_C_NO_OID, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %7, %13, %19, %25
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
