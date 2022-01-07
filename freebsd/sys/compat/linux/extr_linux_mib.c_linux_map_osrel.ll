; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_map_osrel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_map_osrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @linux_map_osrel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_map_osrel(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strtol(i8* %19, i8** %6, i32 10)
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8*, i8** %7, align 8
  %28 = icmp uge i8* %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 46
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24, %2
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strtol(i8* %39, i8** %6, i32 10)
  store i32 %40, i32* %10, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8*, i8** %7, align 8
  %48 = icmp uge i8* %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 46
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44, %36
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %97

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strtol(i8* %59, i8** %6, i32 10)
  store i32 %60, i32* %11, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8*, i8** %7, align 8
  %72 = icmp uge i8* %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 45
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %68, %56
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %3, align 4
  br label %97

80:                                               ; preds = %73, %64
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @LINUX_KERNVER(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @LINUX_KERNVER(i32 1, i32 0, i32 0)
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %3, align 4
  br label %97

90:                                               ; preds = %80
  %91 = load i32*, i32** %5, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %88, %78, %54, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @LINUX_KERNVER(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
