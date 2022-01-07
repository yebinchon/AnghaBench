; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_netmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_netmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.xaddr*)* @addr_netmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_netmask(i32 %0, i32 %1, %struct.xaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xaddr*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.xaddr* %2, %struct.xaddr** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @masklen_valid(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %15 = icmp eq %struct.xaddr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %78

17:                                               ; preds = %13
  %18 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %19 = call i32 @memset(%struct.xaddr* %18, i8 signext 0, i32 24)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %77 [
    i32 129, label %21
    i32 128, label %35
  ]

21:                                               ; preds = %17
  %22 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %23 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %22, i32 0, i32 0
  store i32 129, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %78

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 32, %28
  %30 = shl i32 -1, %29
  %31 = call i8* @htonl(i32 %30)
  %32 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %33 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  store i32 0, i32* %4, align 4
  br label %78

35:                                               ; preds = %17
  %36 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %37 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %36, i32 0, i32 0
  store i32 128, i32* %37, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %53, %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 32
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %58

46:                                               ; preds = %44
  %47 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %48 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 32
  store i32 %57, i32* %6, align 4
  br label %38

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 32, %65
  %67 = shl i32 -1, %66
  %68 = call i8* @htonl(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %71 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %64, %61, %58
  store i32 0, i32* %4, align 4
  br label %78

77:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %76, %27, %26, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @masklen_valid(i32, i32) #1

declare dso_local i32 @memset(%struct.xaddr*, i8 signext, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
