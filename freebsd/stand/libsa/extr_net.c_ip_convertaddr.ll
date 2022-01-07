; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_net.c_ip_convertaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_net.c_ip_convertaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IP_ANYADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_convertaddr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %86

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @number(i8* %15, i32* %5)
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 24
  %19 = and i32 %18, -16777216
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 46
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %14
  store i32 0, i32* %2, align 4
  br label %86

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @number(i8* %34, i32* %5)
  store i8* %35, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 16
  %38 = and i32 %37, 16711680
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %33
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 46
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %33
  store i32 0, i32* %2, align 4
  br label %86

52:                                               ; preds = %45
  %53 = load i8*, i8** %3, align 8
  %54 = call i8* @number(i8* %53, i32* %5)
  store i8* %54, i8** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 %55, 8
  %57 = and i32 %56, 65280
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %52
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 46
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %52
  store i32 0, i32* %2, align 4
  br label %86

71:                                               ; preds = %64
  %72 = load i8*, i8** %3, align 8
  %73 = call i8* @number(i8* %72, i32* %5)
  store i8* %73, i8** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 255
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @htonl(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %82, %70, %51, %32, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i8* @number(i8*, i32*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
