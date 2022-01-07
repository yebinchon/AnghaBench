; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32, i32, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xaddr*, %struct.xaddr*)* @addr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_cmp(%struct.xaddr* %0, %struct.xaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xaddr*, align 8
  %5 = alloca %struct.xaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.xaddr* %0, %struct.xaddr** %4, align 8
  store %struct.xaddr* %1, %struct.xaddr** %5, align 8
  %7 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %8 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %11 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %16 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 128
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 -1
  store i32 %20, i32* %3, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %23 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %112 [
    i32 129, label %25
    i32 128, label %50
  ]

25:                                               ; preds = %21
  %26 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %27 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %31 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %113

36:                                               ; preds = %25
  %37 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %38 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ntohl(i32 %40)
  %42 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %43 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ntohl(i32 %45)
  %47 = icmp sgt i32 %41, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 -1
  store i32 %49, i32* %3, align 4
  br label %113

50:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %90, %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %56 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %63 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %61, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %54
  %72 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %73 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %80 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %78, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 -1
  store i32 %88, i32* %3, align 4
  br label %113

89:                                               ; preds = %54
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %51

93:                                               ; preds = %51
  %94 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %95 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %98 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %113

102:                                              ; preds = %93
  %103 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %104 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %107 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %105, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 -1
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %102, %101, %71, %36, %35, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
