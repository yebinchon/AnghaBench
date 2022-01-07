; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_aes-test.c_random_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_aes-test.c_random_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ETYPE_DES3_CBC_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"!9\04Xj\BD\7F!9\04Xj\BD\7F!9\04Xj\BD\7F\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"random_to_key\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c" 8\04Xk\BC\7F\C7 8\04Xk\BC\7F\C7 8\04Xk\BC\7F\C7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @random_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @random_to_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ETYPE_DES3_CBC_SHA1, align 4
  %8 = call i64 @krb5_random_to_key(i32 %6, i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 21, %struct.TYPE_6__* %5)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @krb5_warn(i32 %12, i64 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 24
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @memcmp(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @krb5_free_keyblock_contents(i32 %29, %struct.TYPE_6__* %5)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %27, %20, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @krb5_random_to_key(i32, i32, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
