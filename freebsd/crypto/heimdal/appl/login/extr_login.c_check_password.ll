; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login.c_check_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login.c_check_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@AUTH_KRB5 = common dso_local global i32 0, align 4
@AUTH_OTP = common dso_local global i32 0, align 4
@auth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, i8*)* @check_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_password(%struct.passwd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.passwd*, %struct.passwd** %4, align 8
  %7 = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.passwd*, %struct.passwd** %4, align 8
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %33

20:                                               ; preds = %11
  %21 = load %struct.passwd*, %struct.passwd** %4, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.passwd*, %struct.passwd** %4, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @crypt(i8* %24, i8* %27)
  %29 = call i64 @strcmp(i8* %23, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %19, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @crypt(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
