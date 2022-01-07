; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_netcat.c_unix_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_netcat.c_unix_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@uflag = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix_bind(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_un, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @AF_UNIX, align 4
  %7 = load i64, i64* @uflag, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SOCK_DGRAM, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SOCK_STREAM, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32 @socket(i32 %6, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %43

18:                                               ; preds = %13
  %19 = call i32 @memset(%struct.sockaddr_un* %4, i32 0, i32 8)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strlcpy(i32 %23, i8* %24, i32 4)
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %43

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %35 = call i32 @SUN_LEN(%struct.sockaddr_un* %4)
  %36 = call i64 @bind(i32 %33, %struct.sockaddr* %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -1, i32* %2, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %38, %28, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @SUN_LEN(%struct.sockaddr_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
