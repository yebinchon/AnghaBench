; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-file.c_convert_from_net.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-file.c_convert_from_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gotcr = common dso_local global i32 0, align 4
@convbuffer = common dso_local global i8* null, align 8
@file = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Received LF as first character\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @convert_from_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_from_net(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %92, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %95

12:                                               ; preds = %8
  %13 = load i32, i32* @gotcr, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** @convbuffer, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %23, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 13
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @gotcr, align 4
  br label %92

31:                                               ; preds = %12
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* @gotcr, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %76

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i32, i32* @file, align 4
  %51 = call i64 @ftell(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* @file, align 4
  %55 = load i32, i32* @SEEK_END, align 4
  %56 = call i32 @fseek(i32 %54, i32 -1, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i8*, i8** @convbuffer, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 10, i8* %64, align 1
  br label %69

65:                                               ; preds = %49
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = call i32 @tftp_log(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 (...) @abort() #3
  unreachable

69:                                               ; preds = %53
  br label %75

70:                                               ; preds = %46
  %71 = load i8*, i8** @convbuffer, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 10, i8* %74, align 1
  br label %75

75:                                               ; preds = %70, %69
  store i32 0, i32* @gotcr, align 4
  br label %92

76:                                               ; preds = %39
  %77 = load i8*, i8** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** @convbuffer, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  %84 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %80, i8* %84, align 1
  %85 = load i8*, i8** %3, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 13
  %91 = zext i1 %90 to i32
  store i32 %91, i32* @gotcr, align 4
  br label %92

92:                                               ; preds = %76, %75, %38, %15
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %8

95:                                               ; preds = %8
  %96 = load i8*, i8** @convbuffer, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* @file, align 4
  %99 = call i64 @fwrite(i8* %96, i32 1, i64 %97, i32 %98)
  ret i64 %99
}

declare dso_local i64 @ftell(i32) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tftp_log(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
