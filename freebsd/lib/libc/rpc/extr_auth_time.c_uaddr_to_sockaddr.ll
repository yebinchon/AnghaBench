; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_time.c_uaddr_to_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_time.c_uaddr_to_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"%lu.%lu.%lu.%lu.%lu.%lu\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_in*)* @uaddr_to_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaddr_to_sockaddr(i8* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [6 x i64], align 16
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %11 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 1
  %12 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 2
  %13 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 3
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 4
  %15 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 5
  %16 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64* %10, i64* %11, i64* %12, i64* %13, i64* %14, i64* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %28, 255
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 8, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 %29, %32
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %33
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %21

42:                                               ; preds = %21
  %43 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 4
  %44 = load i64, i64* %43, align 16
  %45 = trunc i64 %44 to i8
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 5
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i8
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %55, i8* %56, align 1
  %57 = load i32, i32* @AF_INET, align 4
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = bitcast [2 x i8]* %6 to i8*
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to i8*
  %64 = call i32 @bcopy(i8* %60, i8* %63, i32 2)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %42, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
