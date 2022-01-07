; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_set_random_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_set_random_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kadm_handle = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s's password set to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_random_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_random_password(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %7 = call i32 @random_password(i8* %6, i32 128)
  %8 = load i32, i32* @kadm_handle, align 4
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %11 = call i64 @kadm5_chpass_principal(i32 %8, i32 %9, i8* %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @context, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @krb5_unparse_name(i32 %15, i32 %16, i8** %5)
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %20 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @free(i8* %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 0, i32 128)
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

declare dso_local i32 @random_password(i8*, i32) #1

declare dso_local i64 @kadm5_chpass_principal(i32, i32, i8*) #1

declare dso_local i32 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
