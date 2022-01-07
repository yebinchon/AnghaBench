; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_p_sockun.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_p_sockun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.res_sockaddr_union = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[af%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @p_sockun(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %union.res_sockaddr_union, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [46 x i8], align 16
  %8 = getelementptr inbounds %union.res_sockaddr_union, %union.res_sockaddr_union* %4, i32 0, i32 0
  %9 = bitcast %struct.TYPE_3__* %8 to i64*
  store i64 %0, i64* %9, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = bitcast %union.res_sockaddr_union* %4 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 129, label %13
  ]

13:                                               ; preds = %3
  %14 = bitcast %union.res_sockaddr_union* %4 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i64 0, i64 0
  %17 = call i32 @inet_ntop(i32 129, i32* %15, i8* %16, i32 46)
  br label %24

18:                                               ; preds = %3
  %19 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i64 0, i64 0
  %20 = bitcast %union.res_sockaddr_union* %4 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i64 0, i64 0
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  %32 = call i32 @strncpy(i8* %28, i8* %29, i64 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 48, i8* %36, align 1
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i8*, i8** %5, align 8
  ret i8* %38
}

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
