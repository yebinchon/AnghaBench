; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sendmmsg.c_sendmmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sendmmsg.c_sendmmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmsghdr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendmmsg(i32 %0, %struct.mmsghdr* noalias %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmsghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mmsghdr* %1, %struct.mmsghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %41, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mmsghdr*, %struct.mmsghdr** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %19, i64 %20
  %22 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %21, i32 0, i32 1
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @__sys_sendmsg(i32 %18, i32* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %49

35:                                               ; preds = %17
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.mmsghdr*, %struct.mmsghdr** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %37, i64 %38
  %40 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load i64, i64* %11, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %33, %30
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @__sys_sendmsg(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
