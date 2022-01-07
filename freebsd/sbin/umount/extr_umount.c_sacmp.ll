; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_sacmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_sacmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sacmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.sockaddr*
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %53 [
    i32 129, label %24
    i32 128, label %33
  ]

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.sockaddr_in*
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to %struct.sockaddr_in*
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %7, align 8
  store i32 4, i32* %8, align 4
  br label %54

33:                                               ; preds = %19
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to %struct.sockaddr_in6*
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = bitcast i8* %38 to %struct.sockaddr_in6*
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %7, align 8
  store i32 16, i32* %8, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = bitcast i8* %42 to %struct.sockaddr_in6*
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = bitcast i8* %46 to %struct.sockaddr_in6*
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %59

52:                                               ; preds = %33
  br label %54

53:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %59

54:                                               ; preds = %52, %24
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @memcmp(i8* %55, i8* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %53, %51, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
