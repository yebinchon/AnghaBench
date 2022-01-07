; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bootp.c_client_fqdn_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bootp.c_client_fqdn_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_fqdn_flags.buf = internal global [9 x i8] zeroinitializer, align 1
@CLIENT_FQDN_FLAGS_S = common dso_local global i32 0, align 4
@CLIENT_FQDN_FLAGS_O = common dso_local global i32 0, align 4
@CLIENT_FQDN_FLAGS_E = common dso_local global i32 0, align 4
@CLIENT_FQDN_FLAGS_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @client_fqdn_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @client_fqdn_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CLIENT_FQDN_FLAGS_S, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* @client_fqdn_flags.buf, i64 0, i64 %11
  store i8 83, i8* %12, align 1
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @CLIENT_FQDN_FLAGS_O, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [9 x i8], [9 x i8]* @client_fqdn_flags.buf, i64 0, i64 %21
  store i8 79, i8* %22, align 1
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @CLIENT_FQDN_FLAGS_E, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* @client_fqdn_flags.buf, i64 0, i64 %31
  store i8 69, i8* %32, align 1
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @CLIENT_FQDN_FLAGS_N, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* @client_fqdn_flags.buf, i64 0, i64 %41
  store i8 78, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* @client_fqdn_flags.buf, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @client_fqdn_flags.buf, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
