; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_hostname.c_expand_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_hostname.c_expand_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"krb5_expand_hostname(%s)\00", align 1
@debug_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"hostname: %s -> %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"krb5_expand_hostname_realms(%s)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09realm: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @expand_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_hostname(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @krb5_expand_hostname(i32 %9, i8* %10, i8** %6)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @krb5_err(i32 %15, i32 1, i64 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load i64, i64* @debug_flag, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @krb5_expand_hostname_realms(i32 %29, i8* %30, i8** %6, i8*** %7)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @krb5_err(i32 %35, i32 1, i64 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i64, i64* @debug_flag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %60, %42
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i8**, i8*** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %46

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i8**, i8*** %7, align 8
  %69 = call i32 @krb5_free_host_realm(i32 %67, i8** %68)
  ret i32 0
}

declare dso_local i64 @krb5_expand_hostname(i32, i8*, i8**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @krb5_expand_hostname_realms(i32, i8*, i8**, i8***) #1

declare dso_local i32 @krb5_free_host_realm(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
