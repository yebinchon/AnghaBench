; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_qfileout.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_qfileout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"%04d%02d%02d%02d%02d%02d %u %u %u %u %x \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32*)* @qfileout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfileout(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tm*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = call i32 @time(i32* %17)
  %20 = call %struct.tm* @gmtime(i32* %17)
  store %struct.tm* %20, %struct.tm** %16, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.tm*, %struct.tm** %16, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1900
  %26 = load %struct.tm*, %struct.tm** %16, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.tm*, %struct.tm** %16, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tm*, %struct.tm** %16, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tm*, %struct.tm** %16, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tm*, %struct.tm** %16, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %66

51:                                               ; preds = %7
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @BN_print_fp(i32* %52, i32* %53)
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -1, i32* %8, align 4
  br label %66

57:                                               ; preds = %51
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %18, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @fflush(i32* %60)
  %62 = load i32, i32* %18, align 4
  %63 = icmp sgt i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 -1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %57, %56, %50
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @BN_print_fp(i32*, i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
