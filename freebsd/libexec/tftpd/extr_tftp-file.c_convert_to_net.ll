; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-file.c_convert_to_net.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-file.c_convert_to_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_to_net.n = internal global i64 0, align 8
@convert_to_net.in = internal global i64 0, align 8
@convert_to_net.newline = internal global i32 -1, align 4
@file = common dso_local global i32 0, align 4
@convbuffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @convert_to_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_to_net(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* @convert_to_net.newline, align 4
  store i64 0, i64* @convert_to_net.n, align 8
  store i64 0, i64* @convert_to_net.in, align 8
  store i64 0, i64* %4, align 8
  br label %110

12:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %13 = load i32, i32* @convert_to_net.newline, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* @convert_to_net.newline, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 %17, i8* %21, align 1
  store i32 -1, i32* @convert_to_net.newline, align 4
  br label %22

22:                                               ; preds = %15, %12
  br label %23

23:                                               ; preds = %81, %70, %52, %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %23
  %28 = load i64, i64* @convert_to_net.n, align 8
  %29 = load i64, i64* @convert_to_net.in, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* @file, align 4
  %33 = call i64 @feof(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %91

36:                                               ; preds = %31
  %37 = load i8*, i8** @convbuffer, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @file, align 4
  %40 = call i64 @fread(i8* %37, i32 1, i64 %38, i32 %39)
  store i64 %40, i64* @convert_to_net.in, align 8
  %41 = load i64, i64* @convert_to_net.in, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %91

44:                                               ; preds = %36
  store i64 0, i64* @convert_to_net.n, align 8
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i8*, i8** @convbuffer, align 8
  %47 = load i64, i64* @convert_to_net.n, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 13, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 0, i8* %60, align 1
  %61 = load i64, i64* @convert_to_net.n, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* @convert_to_net.n, align 8
  br label %23

63:                                               ; preds = %45
  %64 = load i8*, i8** @convbuffer, align 8
  %65 = load i64, i64* @convert_to_net.n, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 13, i8* %74, align 1
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 10, i8* %78, align 1
  %79 = load i64, i64* @convert_to_net.n, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* @convert_to_net.n, align 8
  br label %23

81:                                               ; preds = %63
  %82 = load i8*, i8** @convbuffer, align 8
  %83 = load i64, i64* @convert_to_net.n, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* @convert_to_net.n, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 %86, i8* %90, align 1
  br label %23

91:                                               ; preds = %43, %35, %23
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  store i32 %101, i32* @convert_to_net.newline, align 4
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %4, align 8
  br label %110

108:                                              ; preds = %102
  %109 = load i64, i64* %6, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %108, %106, %11
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i64 @feof(i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
