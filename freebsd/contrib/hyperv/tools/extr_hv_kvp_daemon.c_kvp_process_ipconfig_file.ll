; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_process_ipconfig_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_process_ipconfig_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i32)* @kvp_process_ipconfig_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_process_ipconfig_file(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @popen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %56

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @memset(i8* %24, i32 0, i64 %25)
  br label %27

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %42, %27
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %30 = load i32*, i32** %14, align 8
  %31 = call i8* @fgets(i8* %29, i32 256, i32* %30)
  store i8* %31, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = sub i64 %34, %36
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %53

42:                                               ; preds = %33
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 10)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @strlcat(i8* %46, i8* %47, i64 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @strlcat(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  br label %28

53:                                               ; preds = %41, %28
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @pclose(i32* %54)
  br label %56

56:                                               ; preds = %53, %19
  ret void
}

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @pclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
