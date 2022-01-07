; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_net.c_inet_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_net.c_inet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INADDR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_addr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  br label %10

10:                                               ; preds = %55, %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 48
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 57
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 10
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 48
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %4, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %11

33:                                               ; preds = %20, %16
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = icmp uge i32* %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 255
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %39
  br label %118

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  br label %55

54:                                               ; preds = %34
  br label %56

55:                                               ; preds = %48
  br label %10

56:                                               ; preds = %54
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %118

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %115 [
    i32 1, label %72
    i32 2, label %73
    i32 3, label %83
    i32 4, label %97
  ]

72:                                               ; preds = %62
  br label %115

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 16777215
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %118

77:                                               ; preds = %73
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = shl i32 %79, 24
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %115

83:                                               ; preds = %62
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %84, 65535
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %118

87:                                               ; preds = %83
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = shl i32 %89, 24
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 16
  %94 = or i32 %90, %93
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %115

97:                                               ; preds = %62
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %98, 255
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %118

101:                                              ; preds = %97
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = shl i32 %103, 24
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 16
  %108 = or i32 %104, %107
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 8
  %112 = or i32 %108, %111
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %62, %101, %87, %77, %72
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @htonl(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %121

118:                                              ; preds = %100, %86, %76, %61, %47
  %119 = load i32, i32* @INADDR_NONE, align 4
  %120 = call i32 @htonl(i32 %119)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
