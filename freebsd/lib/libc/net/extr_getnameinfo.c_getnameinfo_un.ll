; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnameinfo.c_getnameinfo_un.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnameinfo.c_getnameinfo_un.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afd = type { i64 }
%struct.sockaddr = type { i32 }

@EAI_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afd*, %struct.sockaddr*, i64, i8*, i64, i8*, i64, i32)* @getnameinfo_un to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnameinfo_un(%struct.afd* %0, %struct.sockaddr* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.afd*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.afd* %0, %struct.afd** %10, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i8*, i8** %15, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load i64, i64* %16, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** %15, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %21, %8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i64, i64* %14, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.afd*, %struct.afd** %10, align 8
  %35 = getelementptr inbounds %struct.afd, %struct.afd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %18, align 8
  %39 = add i64 %38, 1
  %40 = load i64, i64* %14, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** %13, align 8
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %44, i32* %9, align 4
  br label %57

45:                                               ; preds = %32
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %48 = bitcast %struct.sockaddr* %47 to i8*
  %49 = load %struct.afd*, %struct.afd** %10, align 8
  %50 = getelementptr inbounds %struct.afd, %struct.afd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i64, i64* %18, align 8
  %54 = add i64 %53, 1
  %55 = call i32 @strlcpy(i8* %46, i8* %52, i64 %54)
  br label %56

56:                                               ; preds = %45, %29, %26
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
