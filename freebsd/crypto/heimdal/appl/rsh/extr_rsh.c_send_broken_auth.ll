; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_send_broken_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_send_broken_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)* @send_broken_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_broken_auth(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i8* %3, i8* %4, i8* %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %18, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %15, align 8
  %25 = load i64, i64* %18, align 8
  %26 = call i64 @net_write(i32 %23, i8* %24, i64 %25)
  %27 = load i64, i64* %18, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %54

31:                                               ; preds = %8
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %18, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i64 @net_write(i32 %36, i8* %37, i64 %38)
  %40 = load i64, i64* %18, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %54

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %17, align 8
  %47 = load i64, i64* %16, align 8
  %48 = call i64 @net_write(i32 %45, i8* %46, i64 %47)
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %51, %42, %29
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @net_write(i32, i8*, i64) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
